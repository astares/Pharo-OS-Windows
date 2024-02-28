"
A WinClipboardBitmapFormatTest is a test class for testing the behavior of WinClipboardBitmapFormat
"
Class {
	#name : 'WinClipboardBitmapFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardBitmapFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_BITMAP) equals: WinClipboardBitmapFormat
]

{ #category : 'tests' }
WinClipboardBitmapFormatTest >> testFormatID [

	self assert: WinClipboardBitmapFormat formatID equals: CF_BITMAP.
	self assert: WinClipboardBitmapFormat formatID equals: 2
]

{ #category : 'tests' }
WinClipboardBitmapFormatTest >> testGeneral [

	self
		assert: WinClipboardBitmapFormat isStandardFormat;
		deny: WinClipboardBitmapFormat isCustomFormat
]
