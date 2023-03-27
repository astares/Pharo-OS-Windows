"
A WinClipboardDSPEnhancedMetafileFormatTest is a test class for testing the behavior of WinClipboardDSPEnhancedMetafileFormat
"
Class {
	#name : #WinClipboardDSPEnhancedMetafileFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardDSPEnhancedMetafileFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_DSPENHMETAFILE) equals: WinClipboardDSPEnhancedMetafileFormat
]

{ #category : #tests }
WinClipboardDSPEnhancedMetafileFormatTest >> testFormatID [

	self assert: WinClipboardDSPEnhancedMetafileFormat formatID equals: CF_DSPENHMETAFILE.
	self assert: WinClipboardDSPEnhancedMetafileFormat formatID equals: 16r008E
]

{ #category : #tests }
WinClipboardDSPEnhancedMetafileFormatTest >> testGeneral [

	self
		assert: WinClipboardDSPEnhancedMetafileFormat isStandardFormat;
		deny: WinClipboardDSPEnhancedMetafileFormat isCustomFormat
]
