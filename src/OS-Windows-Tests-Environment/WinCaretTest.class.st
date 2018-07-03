"
SUnit tests for WinCaret
"
Class {
	#name : #WinCaretTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-Tests-Environment-Caret'
}

{ #category : #tests }
WinCaretTest >> testBlinkTime [

	self assert: WinCaret blinkTime isInteger
]
