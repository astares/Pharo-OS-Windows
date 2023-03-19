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
WinRegistry class >> queryValue: szValue fromKey: hKey [

	| dwType type lSize buffer|
	dwType := ByteArray new: (FFIExternalType sizeOf: DWORD).
	lSize := ByteArray new: (FFIExternalType sizeOf: LONG).
	(self
		regQueryValueExA: hKey
		with: szValue
		with: nil
		with: dwType
		with: nil
		with: lSize).
	buffer := ByteArray new: (lSize signedLongAt: 1).
	(self
		regQueryValueExA: hKey
		with: szValue
		with: nil
		with: nil
		with: buffer
		with: lSize).
	type := dwType signedLongAt: 1.
	type = REG_NONE ifTrue: [ ^nil ].
	type = REG_SZ ifTrue: [ ^buffer asString ].
	type = REG_DWORD ifTrue: [ ^buffer signedLongAt: 1 ].
	type = REG_BINARY ifTrue: [ ^(self bytesFromBuffer: buffer size: (lSize signedLongAt: 1)) ].
	self error: 'Type not yet implemented'
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
