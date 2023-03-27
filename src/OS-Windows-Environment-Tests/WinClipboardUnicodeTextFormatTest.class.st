"
A WinClipboardUnicodeTextFormatTest is a test class for testing the behavior of WinClipboardUnicodeTextFormat
"
Class {
	#name : #WinClipboardUnicodeTextFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardUnicodeTextFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_UNICODETEXT) equals: WinClipboardUnicodeTextFormat
]

{ #category : #tests }
WinClipboardUnicodeTextFormatTest >> testFormatID [

	self assert: WinClipboardUnicodeTextFormat formatID equals: CF_UNICODETEXT.
	self assert: WinClipboardUnicodeTextFormat formatID equals: 13
]

{ #category : #tests }
WinClipboardUnicodeTextFormatTest >> testGeneral [

	self
		assert: WinClipboardUnicodeTextFormat isStandardFormat;
		deny: WinClipboardUnicodeTextFormat isCustomFormat
]
