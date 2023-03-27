"
A WinCustomClipboardFormatTest is a test class for testing the behavior of WinCustomClipboardFormat
"
Class {
	#name : #WinCustomClipboardFormatTest,
	#superclass : #TestCase,
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinCustomClipboardFormatTest >> testIsAbstract [

	self assert: WinCustomClipboardFormat isAbstract
]

{ #category : #tests }
WinCustomClipboardFormatTest >> testIsCustomFormatByDefault [

	self assert: WinCustomClipboardFormat isCustomFormat
]

{ #category : #tests }
WinCustomClipboardFormatTest >> testIsNotStandardFormatByDefault [

	self deny: WinCustomClipboardFormat isStandardFormat
]
