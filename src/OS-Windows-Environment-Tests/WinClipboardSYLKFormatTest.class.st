"
A WinClipboardSYLKFormatTest is a test class for testing the behavior of WinClipboardSYLKFormat
"
Class {
	#name : 'WinClipboardSYLKFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardSYLKFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_SYLK) equals: WinClipboardSYLKFormat
]

{ #category : 'tests' }
WinClipboardSYLKFormatTest >> testFormatID [

	self assert: WinClipboardSYLKFormat formatID equals: CF_SYLK.
	self assert: WinClipboardSYLKFormat formatID equals: 4
]

{ #category : 'tests' }
WinClipboardSYLKFormatTest >> testGeneral [

	self
		assert: WinClipboardSYLKFormat isStandardFormat;
		deny: WinClipboardSYLKFormat isCustomFormat
]
