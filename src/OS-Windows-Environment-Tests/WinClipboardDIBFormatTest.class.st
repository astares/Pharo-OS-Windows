"
A WinClipboardDIBFormatTest is a test class for testing the behavior of WinClipboardDIBFormat
"
Class {
	#name : #WinClipboardDIBFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardDIBFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_DIB) equals: WinClipboardDIBFormat
]

{ #category : #tests }
WinClipboardDIBFormatTest >> testFormatID [

	self assert: WinClipboardDIBFormat formatID equals: CF_DIB.
	self assert: WinClipboardDIBFormat formatID equals: 8
]

{ #category : #tests }
WinClipboardDIBFormatTest >> testGeneral [

	self
		assert: WinClipboardDIBFormat isStandardFormat;
		deny: WinClipboardDIBFormat isCustomFormat
]
