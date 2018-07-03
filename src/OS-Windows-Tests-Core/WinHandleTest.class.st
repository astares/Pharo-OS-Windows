"
Unit test for WinHandle
"
Class {
	#name : #WinHandleTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-Tests-Core-Common'
}

{ #category : #tests }
WinHandleTest >> testIsInvalid [

	self assert: WinHandle new isInvalid 
]
