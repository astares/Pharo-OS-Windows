"
A WinClipboardPrivateFirstFormatTest is a test class for testing the behavior of WinClipboardPrivateFirstFormat
"
Class {
	#name : #WinClipboardPrivateFirstFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardPrivateFirstFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_PRIVATEFIRST) equals: WinClipboardPrivateFirstFormat
]

{ #category : #tests }
WinClipboardPrivateFirstFormatTest >> testFormatID [

	self assert: WinClipboardPrivateFirstFormat formatID equals: CF_PRIVATEFIRST.
	self assert: WinClipboardPrivateFirstFormat formatID equals: 16r0200
]

{ #category : #tests }
WinClipboardPrivateFirstFormatTest >> testGeneral [

	self
		assert: WinClipboardPrivateFirstFormat isStandardFormat;
		deny: WinClipboardPrivateFirstFormat isCustomFormat
]
