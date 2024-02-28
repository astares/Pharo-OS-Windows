"
A WinClipboardTextFormatTest is a test class for testing the behavior of WinClipboardTextFormat
"
Class {
	#name : 'WinClipboardTextFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardTextFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_TEXT) equals: WinClipboardTextFormat
]

{ #category : 'tests' }
WinClipboardTextFormatTest >> testFormatID [

	self assert: WinClipboardTextFormat formatID equals: CF_TEXT.
	self assert: WinClipboardTextFormat formatID equals: 1
]

{ #category : 'tests' }
WinClipboardTextFormatTest >> testGeneral [

	self
		assert: WinClipboardTextFormat isStandardFormat;
		deny: WinClipboardTextFormat isCustomFormat
]
