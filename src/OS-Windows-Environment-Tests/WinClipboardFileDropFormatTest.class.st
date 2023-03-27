"
A WinClipboardFileDropFormatTest is a test class for testing the behavior of WinClipboardFileDropFormat
"
Class {
	#name : #WinClipboardFileDropFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardFileDropFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_HDROP) equals: WinClipboardFileDropFormat
]

{ #category : #tests }
WinClipboardFileDropFormatTest >> testFormatID [

	self assert: WinClipboardFileDropFormat formatID equals: CF_HDROP.
	self assert: WinClipboardFileDropFormat formatID equals: 15
]

{ #category : #tests }
WinClipboardFileDropFormatTest >> testGeneral [

	self
		assert: WinClipboardFileDropFormat isStandardFormat;
		deny: WinClipboardFileDropFormat isCustomFormat
]
