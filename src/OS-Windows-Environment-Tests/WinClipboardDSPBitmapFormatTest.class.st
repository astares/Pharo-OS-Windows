"
A WinClipboardDSPBitmapFormatTest is a test class for testing the behavior of WinClipboardDSPBitmapFormat
"
Class {
	#name : #WinClipboardDSPBitmapFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardDSPBitmapFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_DSPBITMAP) equals: WinClipboardDSPBitmapFormat
]

{ #category : #tests }
WinClipboardDSPBitmapFormatTest >> testFormatID [

	self assert: WinClipboardDSPBitmapFormat formatID equals: CF_DSPBITMAP.
	self assert: WinClipboardDSPBitmapFormat formatID equals: 16r0082
]

{ #category : #tests }
WinClipboardDSPBitmapFormatTest >> testGeneral [

	self
		assert: WinClipboardDSPBitmapFormat isStandardFormat;
		deny: WinClipboardDSPBitmapFormat isCustomFormat
]
