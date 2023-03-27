"
A WinClipboardDIFFormatTest is a test class for testing the behavior of WinClipboardDIFFormat
"
Class {
	#name : #WinClipboardDIFFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardDIFFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_DIF) equals: WinClipboardDIFFormat
]

{ #category : #tests }
WinClipboardDIFFormatTest >> testFormatID [

	self assert: WinClipboardDIFFormat formatID equals: CF_DIF.
	self assert: WinClipboardDIFFormat formatID equals: 5
]

{ #category : #tests }
WinClipboardDIFFormatTest >> testGeneral [

	self
		assert: WinClipboardDIFFormat isStandardFormat;
		deny: WinClipboardDIFFormat isCustomFormat
]
