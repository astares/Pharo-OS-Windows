"
A WinClipboardDIBV5FormatTest is a test class for testing the behavior of WinClipboardDIBV5Format
"
Class {
	#name : #WinClipboardDIBV5FormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardDIBV5FormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_DIBV5) equals: WinClipboardDIBV5Format
]

{ #category : #tests }
WinClipboardDIBV5FormatTest >> testFormatID [

	self assert: WinClipboardDIBV5Format formatID equals: CF_DIBV5.
	self assert: WinClipboardDIBV5Format formatID equals: 17
]

{ #category : #tests }
WinClipboardDIBV5FormatTest >> testGeneral [

	self
		assert: WinClipboardDIBV5Format isStandardFormat;
		deny: WinClipboardDIBV5Format isCustomFormat
]
