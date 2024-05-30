"
SUnit tests for WinTString
"
Class {
	#name : 'WinTStringTest',
	#superclass : 'WindowsSpecificTest',
	#category : 'OS-Windows-Core-Tests-Base',
	#package : 'OS-Windows-Core-Tests',
	#tag : 'Base'
}

{ #category : 'tests' }
WinTStringTest >> testLengthOfASCIIString [

	self assert: (WinTString primLstrlenA: 'Pharo') = 5
]
