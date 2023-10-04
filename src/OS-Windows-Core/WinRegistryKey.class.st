"
Represents a registry key
"
Class {
	#name : #WinRegistryKey,
	#superclass : #WinHandle,
	#pools : [
		'WinRegistryConstants'
	],
	#category : #'OS-Windows-Core-Registry'
}

{ #category : #defaults }
WinRegistryKey class >> allUsers [

	^ self fromExternalHandle: HKEY_USERS
]

{ #category : #converting }
WinRegistryKey class >> asExternalTypeOn: generator [
	^ FFIConstantHandleType objectClass: self
]

{ #category : #defaults }
WinRegistryKey class >> classesRoot [

	^ self fromExternalHandle: HKEY_CLASSES_ROOT
]

{ #category : #'private - finalization' }
WinRegistryKey class >> closeHandle: aHandle [
	"Closes the given handle"

	^self ffiCall: #(BOOL CloseHandle(HKEY aHandle)) module: #kernel32
]

{ #category : #defaults }
WinRegistryKey class >> currentConfig [

	^ self fromExternalHandle: HKEY_CURRENT_CONFIG
]

{ #category : #defaults }
WinRegistryKey class >> currentUser [

	^ self fromExternalHandle: HKEY_CURRENT_USER
]

{ #category : #defaults }
WinRegistryKey class >> dynamicData [

	^ self fromExternalHandle: HKEY_DYN_DATA
]

{ #category : #examples }
WinRegistryKey class >> example1 [

	WinRegistryKey localMachine inspect
]

{ #category : #examples }
WinRegistryKey class >> example2 [
	"Query a value from the registry"

	(WinRegistryKey localMachine
		queryValue: 'CommonFilesDir' fromSubkey: 'SOFTWARE\Microsoft\Windows\CurrentVersion') inspect
]

{ #category : #defaults }
WinRegistryKey class >> localMachine [

	^ self fromExternalHandle: HKEY_LOCAL_MACHINE
]

{ #category : #defaults }
WinRegistryKey class >> performanceData [

	^ self fromExternalHandle: HKEY_PERFORMANCE_DATA
]

{ #category : #lifetime }
WinRegistryKey >> close [

	WinRegistry regCloseKey: self
]

{ #category : #initialization }
WinRegistryKey >> createDefaultHandle [
	^ 0
]

{ #category : #accessing }
WinRegistryKey >> enumerateSubKeys [

	^ WinRegistry enumerateSubKeys: self
]

{ #category : #accessing }
WinRegistryKey >> enumerateValuesIntoDict [

	^ WinRegistry enumerateValuesIntoDict: self
]

{ #category : #accessing }
WinRegistryKey >> keyName [
	"Returns the key name"

	(handle value allMask: 16r80000000) ifFalse: [ ^nil ].
	^WinRegistryConstants classVarNames
		detect: [:each | (each printString beginsWith: '#HKEY_') and: [ handle = (WinRegistryConstants classVarNamed: each) ]]
		ifNone: [ 'NOT FOUND' ]
]

{ #category : #printing }
WinRegistryKey >> printOn: aStream [
	super printOn: aStream.
	self getHandle
		ifNotNil: [
			aStream
				nextPutAll: ' - ';
				nextPutAll: self keyName asString ]
]

{ #category : #accessing }
WinRegistryKey >> queryOpenSubkey: subKeyString [
	"Creates and returns a new key for the given subkeyString. Do not forget to close the resulting key after usage.

	   WinRegistryKey localMachine
			queryOpenSubkey: 'HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0'
	"

	|result|
	result := self class new.
	WinRegistry regOpenKeyExA: self
		 with: subKeyString
		 with: 0
		 with: KEY_QUERY_VALUE | KEY_WOW64_64KEY
		 with: result.
	^result
]

{ #category : #accessing }
WinRegistryKey >> queryValue: value [

	^ WinRegistry queryValue: value fromKey: self
]

{ #category : #accessing }
WinRegistryKey >> queryValue: value fromSubkey: subkey [
	|hKey result|
	hKey := self queryOpenSubkey: subkey.
	result := WinRegistry queryValue: value fromKey: hKey.
	hKey closeHandle.
	^result
]
