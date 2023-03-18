"
A test for WinError
"
Class {
	#name : #WinErrorTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-Core-Tests-Exceptions'
}

{ #category : #tests }
WinErrorTest >> testNoLastError [

	self assert: WinError lastErrorCode equals: 0
]
