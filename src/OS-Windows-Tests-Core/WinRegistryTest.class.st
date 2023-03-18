"
SUnit tests for WinRegistry
"
Class {
	#name : #WinRegistryTest,
	#superclass : #WindowsSpecificTest,
	#pools : [
		'WinErrorConstants',
		'WinRegistryConstants'
	],
	#category : #'OS-Windows-Tests-Core-Registry'
}

{ #category : #'tests - queries' }
WinRegistryTest >> testQueryBinaryValue [

	|hKey value |
	hKey := (WinRegistryKey localMachine queryOpenSubkey: 'HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0').
	value := WinRegistry queryValue: 'Component Information' fromKey: hKey.
	hKey close.
	
	self 
		assert: value notEmpty;
		assert: (value isKindOf: ByteArray)
]

{ #category : #'tests - queries' }
WinRegistryTest >> testQueryDWord [

	|hKey value |
	hKey := (WinRegistryKey localMachine queryOpenSubkey: 'HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0').
	value := WinRegistry queryValue: '~MHz' fromKey: hKey.
	hKey close.
	
	self 
		assert: value isInteger;
		assert: value > 0
]

{ #category : #'tests - queries' }
WinRegistryTest >> testQueryStringValue [

	|hKey value |
	hKey := (WinRegistryKey localMachine queryOpenSubkey: 'HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0').
	value := WinRegistry queryValue: 'VendorIdentifier' fromKey: hKey.
	hKey close.
	
	self assert: value notEmpty
]

{ #category : #'tests - primitives' }
WinRegistryTest >> testRegistryKeyOpenAndClose [

	| hKey |
	hKey := WinRegistryKey new.
	self assert: (WinRegistry
			 regOpenKeyExA: WinRegistryKey localMachine
			 with: 'HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0'
			 with: 0
			 with: KEY_QUERY_VALUE
			 with: hKey) = ERROR_SUCCESS.
	self assert: hKey getHandle value > 0. "Assert we have a valid handle"

	self assert: (WinRegistry regCloseKey: hKey) = ERROR_SUCCESS
]

{ #category : #'tests - primitives' }
WinRegistryTest >> testSubkeyCreationAndDeletion [
	"Due to permissions we can only create registry key HKEY_CURRENT_USER\SOFTWARE\"

	| hKey hNewKey |
	hKey := WinRegistryKey currentUser queryOpenSubkey: 'SOFTWARE'.
	self assert: hKey value > 0. "make sure we have a valid handle to a key"

	hNewKey := WinRegistryKey new.
	self assert: (WinRegistry regCreateKeyA: hKey with: 'PHAROTEST' with: hNewKey)
		  equals: ERROR_SUCCESS.

	self assert: hNewKey value > 0. "make sure we have a valid handle to a new key now"

	self assert: (WinRegistry regDeleteKeyA: hKey with: 'PHAROTEST')
		  equals: ERROR_SUCCESS
]
