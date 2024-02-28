"
A WinClipboardDSPTextFormatTest is a test class for testing the behavior of WinClipboardDSPTextFormat
"
Class {
	#name : 'WinClipboardDSPTextFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardDSPTextFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_DSPTEXT) equals: WinClipboardDSPTextFormat
]

{ #category : 'tests' }
WinClipboardDSPTextFormatTest >> testFormatID [

	self assert: WinClipboardDSPTextFormat formatID equals: CF_DSPTEXT.
	self assert: WinClipboardDSPTextFormat formatID equals: 16r0081
]

{ #category : 'tests' }
WinClipboardDSPTextFormatTest >> testGeneral [

	self
		assert: WinClipboardDSPTextFormat isStandardFormat;
		deny: WinClipboardDSPTextFormat isCustomFormat
]
