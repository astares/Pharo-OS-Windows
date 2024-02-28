"
The windows registry
"
Class {
	#name : #WinRegistry,
	#superclass : #Object,
	#pools : [
		'WinRegistryConstants',
		'WinTypes'
	],
	#category : #'OS-Windows-Core-Registry'
}

{ #category : #'private - accessing' }
WinRegistry class >> bytesFromBuffer: buffer size: size [
	^ buffer copyFrom: 1 to: size
]

{ #category : #'private - accessing' }
WinRegistry class >> enumerateSubKeys: hKey [

	| count enumStatus nameBuffer nameMaxLen nameMaxLenBuffer countBuffer ret |
	countBuffer := ByteArray newPinned:
		               (FFIExternalArrayType sizeOf: DWORD).
	nameMaxLenBuffer := ByteArray newPinned:
		                    (FFIExternalArrayType sizeOf: DWORD).

	enumStatus := self
		              regQueryInfoKeyA: hKey
		              with: nil
		              with: nil
		              with: countBuffer
		              with: nameMaxLenBuffer
		              with: nil
		              with: nil
		              with: nil
		              with: nil
		              with: nil
		              with: nil.

	enumStatus isZero ifFalse: [
		self error: 'windows error code parsing should be here' ].

	nameMaxLen := nameMaxLenBuffer unsignedLongAt: 1.
	nameBuffer := ByteArray newPinned: nameMaxLen + 1.
	count := countBuffer unsignedLongAt: 1.

	ret := OrderedCollection new: count.
	0 to: count - 1 do: [ :idx |
		nameMaxLenBuffer unsignedLongAt: 1 put: nameMaxLen.

		enumStatus := self
			              regEnumKeyExA: hKey
			              with: idx
			              with: nameBuffer
			              with: nameMaxLenBuffer
			              with: nil
			              with: nil
			              with: nil.
		enumStatus isZero ifFalse: [
			self error: 'windows error code parsing should be here' ].
		ret add:
			(nameBuffer copyFrom: 1 to: (nameMaxLenBuffer unsignedLongAt: 1))
				utf8Decoded ].

	^ ret
]

{ #category : #'private - accessing' }
WinRegistry class >> enumerateValueNames: hKey [

	| count enumStatus nameBuffer nameMaxLen nameMaxLenBuffer countBuffer ret |
	countBuffer := ByteArray newPinned:
		               (FFIExternalArrayType sizeOf: DWORD).
	nameMaxLenBuffer := ByteArray newPinned:
		                    (FFIExternalArrayType sizeOf: DWORD).

	enumStatus := self
		              regQueryInfoKeyA: hKey
		              with: nil
		              with: nil
		              with: nil
		              with: nil
		              with: nil
		              with: countBuffer
		              with: nameMaxLenBuffer
		              with: nil
		              with: nil
		              with: nil.

	enumStatus isZero ifFalse: [
		self error: WinError lastErrorCodeMessage ].

	nameMaxLen := (nameMaxLenBuffer unsignedLongAt: 1) + 1.
	nameBuffer := ByteArray newPinned: nameMaxLen + 1.
	count := countBuffer unsignedLongAt: 1.

	ret := OrderedCollection new: count.

	0 to: count - 1 do: [ :idx |
		nameMaxLenBuffer unsignedLongAt: 1 put: nameMaxLen.

		enumStatus := self
			              regEnumValueA: hKey
			              with: idx
			              with: nameBuffer
			              with: nameMaxLenBuffer
			              with: nil
			              with: nil
			              with: nil.

		enumStatus isZero ifFalse: [
			self error: WinError lastErrorCodeMessage ].

		"TODO: Avoid the copying"
		ret add:
			(nameBuffer copyFrom: 1 to: (nameMaxLenBuffer unsignedLongAt: 1))
				utf8Decoded ].
	^ ret
]

{ #category : #'private - accessing' }
WinRegistry class >> enumerateValuesIntoDict: hKey [

	| count enumStatus nameBuffer nameMaxLen nameMaxLenBuffer valueBuffer valueMaxLen valueMaxLenBuffer countBuffer ret lpTypeBuffer |
	countBuffer := ByteArray newPinned:
		               (FFIExternalArrayType sizeOf: DWORD).
	nameMaxLenBuffer := ByteArray newPinned:
		                    (FFIExternalArrayType sizeOf: DWORD).
	valueMaxLenBuffer := ByteArray newPinned:
		                     (FFIExternalArrayType sizeOf: DWORD).

	enumStatus := self
		              regQueryInfoKeyA: hKey
		              with: nil
		              with: nil
		              with: nil
		              with: nil
		              with: nil
		              with: countBuffer
		              with: nameMaxLenBuffer
		              with: valueMaxLenBuffer
		              with: nil
		              with: nil.

	enumStatus isZero ifFalse: [
		self error: WinError lastErrorCodeMessage ].

	nameMaxLen := (nameMaxLenBuffer unsignedLongAt: 1) + 1.
	nameBuffer := ByteArray newPinned: nameMaxLen + 1.
	count := countBuffer unsignedLongAt: 1.
	valueMaxLen := (valueMaxLenBuffer unsignedLongAt: 1) + 1.
	valueBuffer := ByteArray newPinned: valueMaxLen + 1.

	ret := Dictionary new: count.

	lpTypeBuffer := ByteArray newPinned:
		                (FFIExternalArrayType sizeOf: DWORD).

	0 to: count - 1 do: [ :idx |
		nameMaxLenBuffer unsignedLongAt: 1 put: nameMaxLen.
		valueMaxLenBuffer unsignedLongAt: 1 put: valueMaxLen.

		enumStatus := self
			              regEnumValueA: hKey
			              with: idx
			              with: nameBuffer
			              with: nameMaxLenBuffer
			              with: lpTypeBuffer
			              with: valueBuffer
			              with: valueMaxLenBuffer.

		enumStatus isZero ifFalse: [
			self error: WinError lastErrorCodeMessage ].

		"TODO: Avoid the copying"
		ret
			at:
				(nameBuffer copyFrom: 1 to: (nameMaxLenBuffer unsignedLongAt: 1))
					utf8Decoded
			put: (self
					 processValueBuffer: valueBuffer
					 ofSize: valueMaxLenBuffer
					 withType: lpTypeBuffer) ].

	^ ret
]

{ #category : #'private - helpers' }
WinRegistry class >> processValueBuffer: buffer ofSize: sizeBuffer withType: typeBuffer [
	| type size |
	type := typeBuffer unsignedLongAt: 1.
	size := sizeBuffer unsignedLongAt: 1.
	
	type = REG_NONE ifTrue: [ ^ nil ].
	
	"TODO: Avoid the copying"
	(type = REG_SZ or: [ type = REG_EXPAND_SZ ]) ifTrue: [
		^ (buffer copyFrom: 1 to: size) utf8Decoded ].
	type = REG_DWORD ifTrue: [ ^ buffer signedLongAt: 1 ].
	type = REG_BINARY ifTrue: [
		^ self bytesFromBuffer: buffer size: size ].
	self error: 'Type not yet implemented'
]

{ #category : #'private - accessing' }
WinRegistry class >> queryValue: szValue fromKey: hKey [

	| dwType lSize buffer |
	dwType := ByteArray new: (FFIExternalType sizeOf: DWORD).
	lSize := ByteArray new: (FFIExternalType sizeOf: LONG).
	self
		regQueryValueExA: hKey
		with: szValue
		with: nil
		with: dwType
		with: nil
		with: lSize.
	buffer := ByteArray new: (lSize signedLongAt: 1).
	self
		regQueryValueExA: hKey
		with: szValue
		with: nil
		with: nil
		with: buffer
		with: lSize.
	^ self processValueBuffer: buffer ofSize: lSize withType: dwType
]

{ #category : #'private - primitives' }
WinRegistry class >> regCloseKey: hKey [

	^ self ffiCall: #(long RegCloseKey(HKEY hKey)) module: #advapi32
]

{ #category : #'private - primitives' }
WinRegistry class >> regCreateKeyA: hKey with: lpSubKey with: phkResult [

	^ self
		ffiCall: #(long RegCreateKeyA #(HKEY hKey, LPCTSTR lpSubKey, PHKEY phkResult))
		module: #advapi32
]

{ #category : #'private - primitives' }
WinRegistry class >> regDeleteKeyA: hKey with: lpSubKey [


	^ self ffiCall: #(
		long RegDeleteKeyA (
			HKEY hKey,
			LPCTSTR lpSubKey)) module: #advapi32
]

{ #category : #'private - primitives' }
WinRegistry class >> regEnumKeyExA: hKey with: dwIndex with: lpName with: lpcchName with: lpClass with: lpcchClass with: lpftLastWriteTime [

"LSTATUS RegEnumKeyExA(
  [in]                HKEY      hKey,
  [in]                DWORD     dwIndex,
  [out]               LPSTR     lpName,
  [in, out]           LPDWORD   lpcchName,
                      LPDWORD   lpReserved,
  [in, out]           LPSTR     lpClass,
  [in, out, optional] LPDWORD   lpcchClass,
  [out, optional]     PFILETIME lpftLastWriteTime
);"

	^ self ffiCall: #( long RegEnumKeyExA (
								HKEY hKey,
								DWORD dwIndex,
								char* lpName,
								LPDWORD lpcchName,
								NULL,
								char* lpClass,
								LPDWORD lpcchClass,
								void* lpftLastWriteTime))
			 module: #advapi32
]

{ #category : #'private - primitives' }
WinRegistry class >> regEnumValueA: hKey with: dwIndex with: lpValueName with: lpcchValueName with: lpType with: lpData with: lpcbData [
	"LSTATUS RegEnumValueA(
  [in]                HKEY    hKey,
  [in]                DWORD   dwIndex,
  [out]               LPSTR   lpValueName,
  [in, out]           LPDWORD lpcchValueName,
                      LPDWORD lpReserved,
  [out, optional]     LPDWORD lpType,
  [out, optional]     LPBYTE  lpData,
  [in, out, optional] LPDWORD lpcbData
);"

	^ self ffiCall: #(
				DWORD RegEnumValueA (
					HKEY hKey,
					DWORD dwIndex,
					char* lpValueName,
					LPDWORD lpcchValueName,
					NULL,
					LPDWORD lpType,
					LPBYTE lpData,
					LPDWORD lpcbData))
		    module: #advapi32
]

{ #category : #'private - primitives' }
WinRegistry class >> regOpenKeyExA: hKey with: lpSubKey with: ulOptions with: samDesired with: phkResult [

	^ self ffiCall: #(
		long RegOpenKeyExA (
			HKEY hKey,
			LPTSTR lpSubKey,
			long ulOptions,
			long samDesired,
			PHKEY phkResult)) module: #advapi32
]

{ #category : #'private - primitives' }
WinRegistry class >> regQueryInfoKeyA: hKey with: lpClass with: lpcchClass with: lpcSubKeys with: lpcbMaxSubKeyLen with: lpcbMaxClassLen with: lpcValues with: lpcbMaxValueNameLen with: lpcbMaxValueLen with: lpcbSecurityDescriptor with: lpftLastWriteTime [

"LSTATUS RegQueryInfoKeyA(
  [in]                HKEY      hKey,
  [out, optional]     LPSTR     lpClass,
  [in, out, optional] LPDWORD   lpcchClass,
                      LPDWORD   lpReserved,
  [out, optional]     LPDWORD   lpcSubKeys,
  [out, optional]     LPDWORD   lpcbMaxSubKeyLen,
  [out, optional]     LPDWORD   lpcbMaxClassLen,
  [out, optional]     LPDWORD   lpcValues,
  [out, optional]     LPDWORD   lpcbMaxValueNameLen,
  [out, optional]     LPDWORD   lpcbMaxValueLen,
  [out, optional]     LPDWORD   lpcbSecurityDescriptor,
  [out, optional]     PFILETIME lpftLastWriteTime
);"

	^ self ffiCall: #( long RegQueryInfoKeyA (
		HKEY hKey,
		LPCSTR lpClass,
		LPDWORD lpcchClass,
		NULL,
		LPDWORD lpcSubKeys,
		LPDWORD lpcbMaxSubKeyLen,
		LPDWORD lpcbMaxClassLen,
		LPDWORD lpcValues,
		LPDWORD lpcbMaxValueNameLen,
		LPDWORD lpcbMaxValueLen,
		LPDWORD lpcbSecurityDescriptor,
		void *lpftLastWriteTime
	)) module: #advapi32
]

{ #category : #'private - primitives' }
WinRegistry class >> regQueryValueExA: hKey with: lpValueName with: lpReserved with: lpType with: lpData with: lpcbData [

	^ self ffiCall: #(LONG RegQueryValueExA(
			 						HKEY hKey,
          						LPCTSTR lpValueName,
          						LPDWORD lpReserved,
          						LPDWORD lpType,
          						LPBYTE lpData,
          						LPDWORD lpcbData))
			module: #advapi32
		  options: #( + optCoerceNilToNull )
]
