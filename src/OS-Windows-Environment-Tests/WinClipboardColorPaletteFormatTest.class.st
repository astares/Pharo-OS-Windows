"
A WinClipboardColorPaletteFormatTest is a test class for testing the behavior of WinClipboardColorPaletteFormat
"
Class {
	#name : #WinClipboardColorPaletteFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardColorPaletteFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_PALETTE) equals: WinClipboardColorPaletteFormat
]

{ #category : #tests }
WinClipboardColorPaletteFormatTest >> testFormatID [

	self assert: WinClipboardColorPaletteFormat formatID equals: CF_PALETTE.
	self assert: WinClipboardColorPaletteFormat formatID equals: 9
]

{ #category : #tests }
WinClipboardColorPaletteFormatTest >> testGeneral [

	self
		assert: WinClipboardColorPaletteFormat isStandardFormat;
		deny: WinClipboardColorPaletteFormat isCustomFormat
]
