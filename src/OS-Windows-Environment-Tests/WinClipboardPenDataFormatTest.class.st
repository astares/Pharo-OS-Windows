"
A WinClipboardPenDataFormatTest is a test class for testing the behavior of WinClipboardPenDataFormat
"
Class {
	#name : 'WinClipboardPenDataFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardPenDataFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_PENDATA) equals: WinClipboardPenDataFormat
]

{ #category : 'tests' }
WinClipboardPenDataFormatTest >> testFormatID [

	self assert: WinClipboardPenDataFormat formatID equals: CF_PENDATA.
	self assert: WinClipboardPenDataFormat formatID equals: 10
]

{ #category : 'tests' }
WinClipboardPenDataFormatTest >> testGeneral [

	self
		assert: WinClipboardPenDataFormat isStandardFormat;
		deny: WinClipboardPenDataFormat isCustomFormat
]
