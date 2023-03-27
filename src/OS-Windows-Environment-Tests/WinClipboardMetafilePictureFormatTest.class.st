"
A WinClipboardMetafilePictureFormatTest is a test class for testing the behavior of WinClipboardMetafilePictureFormat
"
Class {
	#name : #WinClipboardMetafilePictureFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardMetafilePictureFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_METAFILEPICT) equals: WinClipboardMetafilePictureFormat
]

{ #category : #tests }
WinClipboardMetafilePictureFormatTest >> testFormatID [

	self assert: WinClipboardMetafilePictureFormat formatID equals: CF_METAFILEPICT.
	self assert: WinClipboardMetafilePictureFormat formatID equals: 3
]

{ #category : #tests }
WinClipboardMetafilePictureFormatTest >> testGeneral [

	self
		assert: WinClipboardMetafilePictureFormat isStandardFormat;
		deny: WinClipboardMetafilePictureFormat isCustomFormat
]
