"
A WinClipboardPrivateLastFormatTest is a test class for testing the behavior of WinClipboardPrivateLastFormat
"
Class {
	#name : 'WinClipboardPrivateLastFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardPrivateLastFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_PRIVATELAST) equals: WinClipboardPrivateLastFormat
]

{ #category : 'tests' }
WinClipboardPrivateLastFormatTest >> testFormatID [

	self assert: WinClipboardPrivateLastFormat formatID equals: CF_PRIVATELAST.
	self assert: WinClipboardPrivateLastFormat formatID equals: 16r02FF
]

{ #category : 'tests' }
WinClipboardPrivateLastFormatTest >> testGeneral [

	self
		assert: WinClipboardPrivateLastFormat isStandardFormat;
		deny: WinClipboardPrivateLastFormat isCustomFormat
]
