"
A WinClipboardOwnerDisplayFormatTest is a test class for testing the behavior of WinClipboardOwnerDisplayFormat
"
Class {
	#name : 'WinClipboardOwnerDisplayFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardOwnerDisplayFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_OWNERDISPLAY) equals: WinClipboardOwnerDisplayFormat
]

{ #category : 'tests' }
WinClipboardOwnerDisplayFormatTest >> testFormatID [

	self assert: WinClipboardOwnerDisplayFormat formatID equals: CF_OWNERDISPLAY.
	self assert: WinClipboardOwnerDisplayFormat formatID equals: 16r0080
]

{ #category : 'tests' }
WinClipboardOwnerDisplayFormatTest >> testGeneral [

	self
		assert: WinClipboardOwnerDisplayFormat isStandardFormat;
		deny: WinClipboardOwnerDisplayFormat isCustomFormat
]
