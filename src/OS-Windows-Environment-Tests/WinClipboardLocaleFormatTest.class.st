"
A WinClipboardLocaleFormatTest is a test class for testing the behavior of WinClipboardLocaleFormat
"
Class {
	#name : 'WinClipboardLocaleFormatTest',
	#superclass : 'TestCase',
	#pools : [
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'tests' }
WinClipboardLocaleFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_LOCALE) equals: WinClipboardLocaleFormat
]

{ #category : 'tests' }
WinClipboardLocaleFormatTest >> testFormatID [

	self assert: WinClipboardLocaleFormat formatID equals: CF_LOCALE.
	self assert: WinClipboardLocaleFormat formatID equals: 16
]

{ #category : 'tests' }
WinClipboardLocaleFormatTest >> testGeneral [

	self
		assert: WinClipboardLocaleFormat isStandardFormat;
		deny: WinClipboardLocaleFormat isCustomFormat
]
