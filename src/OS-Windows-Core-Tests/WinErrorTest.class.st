"
A test for WinError
"
Class {
	#name : 'WinErrorTest',
	#superclass : 'WindowsSpecificTest',
	#category : 'OS-Windows-Core-Tests-Exceptions',
	#package : 'OS-Windows-Core-Tests',
	#tag : 'Exceptions'
}

{ #category : 'tests' }
WinErrorTest >> testLastError [
	 	 
	self assert: WinError lastErrorCode isNumber
]
