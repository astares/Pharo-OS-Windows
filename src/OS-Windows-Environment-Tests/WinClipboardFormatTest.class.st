"
A WinClipboardFormatTest is a test class for testing the behavior of WinClipboardFormat
"
Class {
	#name : #WinClipboardFormatTest,
	#superclass : #TestCase,
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardFormatTest >> testFormatSymbol [

	| formats |
	formats := WinClipboardFormat allSubclasses reject: [ :each | each isAbstract ].
	formats do: [ :each | self assert: each formatID isInteger ]
]

{ #category : #tests }
WinClipboardFormatTest >> testIsAbstract [

	self assert: WinClipboardFormat isAbstract
]

{ #category : #tests }
WinClipboardFormatTest >> testIsNotCustomFormatByDefault [

	self deny: WinClipboardFormat isCustomFormat
]

{ #category : #tests }
WinClipboardFormatTest >> testIsStandardFormatByDefault [

	self assert: WinClipboardFormat isStandardFormat
]
