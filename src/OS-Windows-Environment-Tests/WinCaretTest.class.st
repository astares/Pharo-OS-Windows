"
SUnit tests for WinCaret
"
Class {
	#name : 'WinCaretTest',
	#superclass : 'WindowsSpecificTest',
	#category : 'OS-Windows-Environment-Tests-Caret',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Caret'
}

{ #category : 'tests' }
WinCaretTest >> testBlinkTime [

	self assert: WinCaret blinkTime isInteger
]
