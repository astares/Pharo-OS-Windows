"
Abstract superclass for standard clipboard formats
"
Class {
	#name : #WinStandardClipboardFormat,
	#superclass : #WinClipboardFormat,
	#category : 'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinStandardClipboardFormat class >> formatID [

	^ WinUserConstants classPool at: self formatSymbol
]

{ #category : #testing }
WinStandardClipboardFormat class >> isAbstract [

	^ self == WinStandardClipboardFormat
]
