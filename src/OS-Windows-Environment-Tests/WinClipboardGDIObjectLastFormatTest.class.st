"
A WinClipboardGDIObjectLastFormatTest is a test class for testing the behavior of WinClipboardGDIObjectLastFormat
"
Class {
	#name : 'WinClipboardGDIObjectLastFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardGDIObjectLastFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_GDIOBJLAST) equals: WinClipboardGDIObjectLastFormat
]

{ #category : 'tests' }
WinClipboardGDIObjectLastFormatTest >> testFormatID [

	self assert: WinClipboardGDIObjectLastFormat formatID equals: CF_GDIOBJLAST.
	self assert: WinClipboardGDIObjectLastFormat formatID equals: 16r03FF
]

{ #category : 'tests' }
WinClipboardGDIObjectLastFormatTest >> testGeneral [

	self
		assert: WinClipboardGDIObjectLastFormat isStandardFormat;
		deny: WinClipboardGDIObjectLastFormat isCustomFormat
]
