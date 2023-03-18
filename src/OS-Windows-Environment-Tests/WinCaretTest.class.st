"
SUnit tests for WinCaret
"
Class {
	#name : #WinCaretTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-Environment-Tests-Caret'
}

{ #category : #tests }
WinCaretTest >> testBlinkTime [

	self assert: WinCaret blinkTime isInteger
]
