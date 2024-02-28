"
A WinClipboardTIFFFormatTest is a test class for testing the behavior of WinClipboardTIFFFormat
"
Class {
	#name : 'WinClipboardTIFFFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardTIFFFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_TIFF) equals: WinClipboardTIFFFormat
]

{ #category : 'tests' }
WinClipboardTIFFFormatTest >> testFormatID [

	self assert: WinClipboardTIFFFormat formatID equals: CF_TIFF.
	self assert: WinClipboardTIFFFormat formatID equals: 6
]

{ #category : 'tests' }
WinClipboardTIFFFormatTest >> testGeneral [

	self
		assert: WinClipboardTIFFFormat isStandardFormat;
		deny: WinClipboardTIFFFormat isCustomFormat
]
