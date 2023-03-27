"
A WinClipboardOEMTextFormatTest is a test class for testing the behavior of WinClipboardOEMTextFormat
"
Class {
	#name : #WinClipboardOEMTextFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardOEMTextFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_OEMTEXT) equals: WinClipboardOEMTextFormat
]

{ #category : #tests }
WinClipboardOEMTextFormatTest >> testFormatID [

	self assert: WinClipboardOEMTextFormat formatID equals: CF_OEMTEXT.
	self assert: WinClipboardOEMTextFormat formatID equals: 7
]

{ #category : #tests }
WinClipboardOEMTextFormatTest >> testGeneral [

	self
		assert: WinClipboardOEMTextFormat isStandardFormat;
		deny: WinClipboardOEMTextFormat isCustomFormat
]
