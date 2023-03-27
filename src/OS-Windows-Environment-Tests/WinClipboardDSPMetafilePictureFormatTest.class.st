"
A WinClipboardDSPMetafilePictureFormatTest is a test class for testing the behavior of WinClipboardDSPMetafilePictureFormat
"
Class {
	#name : #WinClipboardDSPMetafilePictureFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardDSPMetafilePictureFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_DSPMETAFILEPICT) equals: WinClipboardDSPMetafilePictureFormat
]

{ #category : #tests }
WinClipboardDSPMetafilePictureFormatTest >> testFormatID [

	self assert: WinClipboardDSPMetafilePictureFormat formatID equals: CF_DSPMETAFILEPICT.
	self assert: WinClipboardDSPMetafilePictureFormat formatID equals: 16r0083
]

{ #category : #tests }
WinClipboardDSPMetafilePictureFormatTest >> testGeneral [

	self
		assert: WinClipboardDSPMetafilePictureFormat isStandardFormat;
		deny: WinClipboardDSPMetafilePictureFormat isCustomFormat
]
