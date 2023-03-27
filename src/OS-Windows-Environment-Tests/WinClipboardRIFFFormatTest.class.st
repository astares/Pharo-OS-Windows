"
A WinClipboardRIFFFormatTest is a test class for testing the behavior of WinClipboardRIFFFormat
"
Class {
	#name : #WinClipboardRIFFFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardRIFFFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_RIFF) equals: WinClipboardRIFFFormat
]

{ #category : #tests }
WinClipboardRIFFFormatTest >> testFormatID [

	self assert: WinClipboardRIFFFormat formatID equals: CF_RIFF.
	self assert: WinClipboardRIFFFormat formatID equals: 11
]

{ #category : #tests }
WinClipboardRIFFFormatTest >> testGeneral [

	self
		assert: WinClipboardRIFFFormat isStandardFormat;
		deny: WinClipboardRIFFFormat isCustomFormat
]
