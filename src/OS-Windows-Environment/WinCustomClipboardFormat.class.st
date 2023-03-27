"
Abstract superclass for custom clipboard formats
"
Class {
	#name : #WinCustomClipboardFormat,
	#superclass : #WinClipboardFormat,
	#classInstVars : [
		'formatID'
	],
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinCustomClipboardFormat class >> formatID [

	^ formatID ifNil: [ self register. formatID ]
]

{ #category : #'accessing - defaults' }
WinCustomClipboardFormat class >> formatID: anObject [

	formatID := anObject
]

{ #category : #testing }
WinCustomClipboardFormat class >> isAbstract [

	^ self == WinCustomClipboardFormat
]

{ #category : #testing }
WinCustomClipboardFormat class >> isStandardFormat [

	^ false
]

{ #category : #registration }
WinCustomClipboardFormat class >> register [

	self formatID: (self registerClipboardFormat: self formatSymbol)
]
