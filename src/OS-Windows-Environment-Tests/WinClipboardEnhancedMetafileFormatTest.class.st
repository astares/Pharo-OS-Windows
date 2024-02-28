"
A WinClipboardEnhancedMetafileFormatTest is a test class for testing the behavior of WinClipboardEnhancedMetafileFormat
"
Class {
	#name : 'WinClipboardEnhancedMetafileFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardEnhancedMetafileFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_ENHMETAFILE) equals: WinClipboardEnhancedMetafileFormat
]

{ #category : 'tests' }
WinClipboardEnhancedMetafileFormatTest >> testFormatID [

	self assert: WinClipboardEnhancedMetafileFormat formatID equals: CF_ENHMETAFILE.
	self assert: WinClipboardEnhancedMetafileFormat formatID equals: 14
]

{ #category : 'tests' }
WinClipboardEnhancedMetafileFormatTest >> testGeneral [

	self
		assert: WinClipboardEnhancedMetafileFormat isStandardFormat;
		deny: WinClipboardEnhancedMetafileFormat isCustomFormat
]
