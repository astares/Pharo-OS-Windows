"
Wrapper for the CONSOLE_SCREEN_BUFFER_INFO structure from wincon.h

Contains information about a console screen buffer.
"
Class {
	#name : #WinConsoleScreenBuffer,
	#superclass : #FFIExternalStructure,
	#pools : [
		'WinConsoleConstants',
		'WinTypes'
	],
	#category : #'OS-Windows-Environment-Console-Support'
}

{ #category : #'private - accessing' }
WinConsoleScreenBuffer class >> fieldsDesc [
	"self rebuildFieldAccessors"
	
	^ #(
		COORD      dwSize;
  		COORD      dwCursorPosition;
  		WORD       wAttributes;
  		SMALL_RECT srWindow;
  		COORD      dwMaximumWindowSize;
		)
]

{ #category : #accessing }
WinConsoleScreenBuffer >> cursorPosition [

	^self dwCursorPosition asPoint
]

{ #category : #'accessing structure variables' }
WinConsoleScreenBuffer >> dwCursorPosition [
	"This method was automatically generated"
	^WinConsoleCoordinates fromHandle: (handle referenceStructAt: 9 length: 8)
]

{ #category : #'accessing structure variables' }
WinConsoleScreenBuffer >> dwCursorPosition: anObject [
	"This method was automatically generated"
	handle structAt: 9 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
WinConsoleScreenBuffer >> dwMaximumWindowSize [
	"This method was automatically generated"
	^WinConsoleCoordinates fromHandle: (handle referenceStructAt: 27 length: 8)
]

{ #category : #'accessing structure variables' }
WinConsoleScreenBuffer >> dwMaximumWindowSize: anObject [
	"This method was automatically generated"
	handle structAt: 27 put: anObject getHandle length: 4.
]

{ #category : #'accessing structure variables' }
WinConsoleScreenBuffer >> dwSize [
	"This method was automatically generated"
	^WinConsoleCoordinates fromHandle: (handle referenceStructAt: 1 length: 8)
]

{ #category : #'accessing structure variables' }
WinConsoleScreenBuffer >> dwSize: anObject [
	"This method was automatically generated"
	handle structAt: 1 put: anObject getHandle length: 4.
]

{ #category : #accessing }
WinConsoleScreenBuffer >> size [

	^self dwSize asPoint
]

{ #category : #'accessing structure variables' }
WinConsoleScreenBuffer >> srWindow [
	"This method was automatically generated"
	^WinConsoleSmallRectangle fromHandle: (handle referenceStructAt: 19 length: 8)
]

{ #category : #'accessing structure variables' }
WinConsoleScreenBuffer >> srWindow: anObject [
	"This method was automatically generated"
	handle structAt: 19 put: anObject getHandle length: 8.
]

{ #category : #'accessing structure variables' }
WinConsoleScreenBuffer >> wAttributes [
	"This method was automatically generated"
	^handle unsignedShortAt: 17
]

{ #category : #'accessing structure variables' }
WinConsoleScreenBuffer >> wAttributes: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 17 put: anObject
]
