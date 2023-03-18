"
SUnit tests for WinRegistryKey
"
Class {
	#name : #WinRegistryKeyTest,
	#superclass : #WindowsSpecificTest,
	#pools : [
		'WinRegistryConstants'
	],
	#category : #'OS-Windows-Tests-Core-Registry'
}

{ #category : #'tests - defaults' }
WinRegistryKeyTest >> testAllUsers [

	self assert: WinRegistryKey allUsers handle = HKEY_USERS 
]

{ #category : #'tests - defaults' }
WinRegistryKeyTest >> testClassesRoot [

	self assert: WinRegistryKey classesRoot handle = HKEY_CLASSES_ROOT
]

{ #category : #'tests - defaults' }
WinRegistryKeyTest >> testCurrentConfig [

	self assert: WinRegistryKey currentConfig handle = HKEY_CURRENT_CONFIG
]

{ #category : #'tests - defaults' }
WinRegistryKeyTest >> testCurrentUser [

	self assert: WinRegistryKey currentUser handle = HKEY_CURRENT_USER
]

{ #category : #'tests - defaults' }
WinRegistryKeyTest >> testDynamicData [

	self assert: WinRegistryKey dynamicData handle = HKEY_DYN_DATA 
]

{ #category : #tests }
WinRegistryKeyTest >> testKeyNames [

	self
		assert: WinRegistryKey allUsers keyName equals: #HKEY_USERS;
		assert: WinRegistryKey classesRoot keyName equals: #HKEY_CLASSES_ROOT;
		assert: WinRegistryKey currentConfig keyName equals: #HKEY_CURRENT_CONFIG;
	   assert: WinRegistryKey currentUser keyName equals: #HKEY_CURRENT_USER;
		assert: WinRegistryKey dynamicData keyName equals: #HKEY_DYN_DATA;
	   assert: WinRegistryKey localMachine keyName equals: #HKEY_LOCAL_MACHINE;
		assert: WinRegistryKey performanceData keyName equals: #HKEY_PERFORMANCE_DATA
]

{ #category : #'tests - defaults' }
WinRegistryKeyTest >> testLocalMachine [

	self assert: WinRegistryKey localMachine handle = HKEY_LOCAL_MACHINE
]

{ #category : #'tests - defaults' }
WinRegistryKeyTest >> testPerformanceData [

	self assert: WinRegistryKey performanceData handle = HKEY_PERFORMANCE_DATA  
]

{ #category : #tests }
WinRegistryKeyTest >> testPrinting [

	self 
		assert: (WinRegistryKey classesRoot printString endsWith: ' - HKEY_CLASSES_ROOT');
		assert: (WinRegistryKey currentUser printString endsWith: ' - HKEY_CURRENT_USER');
		assert: (WinRegistryKey localMachine printString endsWith: ' - HKEY_LOCAL_MACHINE');
		assert: (WinRegistryKey allUsers printString endsWith: ' - HKEY_USERS');
		assert: (WinRegistryKey currentConfig printString endsWith: ' - HKEY_CURRENT_CONFIG');
		assert: (WinRegistryKey dynamicData printString endsWith: ' - HKEY_DYN_DATA')
]

{ #category : #'tests - queries' }
WinRegistryKeyTest >> testQueryBinaryValue [

	| value |
	value:= WinRegistryKey localMachine 
					queryValue: 'Component Information' fromSubkey: 'HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0'.
	
	self 
		assert: value notEmpty;
		assert: (value isKindOf: ByteArray)
]

{ #category : #'tests - queries' }
WinRegistryKeyTest >> testQueryDWord [

	| value |
	value := WinRegistryKey localMachine 
					queryValue: '~MHz' fromSubkey: 'HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0'.
	
	self 
		assert: value isInteger;
		assert: value > 0
]

{ #category : #'tests - queries' }
WinRegistryKeyTest >> testQueryStringValue [

	| value |
	value := WinRegistryKey localMachine 
					queryValue: 'VendorIdentifier' fromSubkey: 'HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0'.
	
	self assert: value notEmpty
]
