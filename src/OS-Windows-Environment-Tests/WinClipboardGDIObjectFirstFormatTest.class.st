"
A WinClipboardGDIObjectFirstFormatTest is a test class for testing the behavior of WinClipboardGDIObjectFirstFormat
"
Class {
	#name : 'WinClipboardGDIObjectFirstFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardGDIObjectFirstFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_GDIOBJFIRST) equals: WinClipboardGDIObjectFirstFormat
]

{ #category : 'tests' }
WinClipboardGDIObjectFirstFormatTest >> testFormatID [

	self assert: WinClipboardGDIObjectFirstFormat formatID equals: CF_GDIOBJFIRST.
	self assert: WinClipboardGDIObjectFirstFormat formatID equals: 16r0300
]

{ #category : 'tests' }
WinClipboardGDIObjectFirstFormatTest >> testGeneral [

	self
		assert: WinClipboardGDIObjectFirstFormat isStandardFormat;
		deny: WinClipboardGDIObjectFirstFormat isCustomFormat
]
