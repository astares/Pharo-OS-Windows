"
Wrapper for the CONSOLE_SCREEN_BUFFER_INFO structure from wincon.h

Contains information about a console screen buffer.
"
Class {
	#name : #WinConsoleScreenBuffer,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_DWCURSORPOSITION',
		'OFFSET_DWMAXIMUMWINDOWSIZE',
		'OFFSET_DWSIZE',
		'OFFSET_SRWINDOW',
		'OFFSET_WATTRIBUTES'
	],
	#pools : [
		'WinConsoleConstants',
		'WinTypes'
	],
	#category : 'OS-Windows-Environment-Console-Support'
}

{ #category : #'field definition' }
WinConsoleScreenBuffer class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>

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

{ #category : #'accessing - structure variables' }
WinConsoleScreenBuffer >> dwCursorPosition [
	"This method was automatically generated"
	^ WinConsoleCoordinates fromHandle: (handle referenceStructAt: OFFSET_DWCURSORPOSITION length: WinConsoleCoordinates byteSize)
]

{ #category : #'accessing - structure variables' }
WinConsoleScreenBuffer >> dwCursorPosition: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DWCURSORPOSITION put: anObject getHandle length: WinConsoleCoordinates byteSize
]

{ #category : #'accessing - structure variables' }
WinConsoleScreenBuffer >> dwMaximumWindowSize [
	"This method was automatically generated"
	^ WinConsoleCoordinates fromHandle: (handle referenceStructAt: OFFSET_DWMAXIMUMWINDOWSIZE length: WinConsoleCoordinates byteSize)
]

{ #category : #'accessing - structure variables' }
WinConsoleScreenBuffer >> dwMaximumWindowSize: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DWMAXIMUMWINDOWSIZE put: anObject getHandle length: WinConsoleCoordinates byteSize
]

{ #category : #'accessing - structure variables' }
WinConsoleScreenBuffer >> dwSize [
	"This method was automatically generated"
	^ WinConsoleCoordinates fromHandle: (handle referenceStructAt: OFFSET_DWSIZE length: WinConsoleCoordinates byteSize)
]

{ #category : #'accessing - structure variables' }
WinConsoleScreenBuffer >> dwSize: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DWSIZE put: anObject getHandle length: WinConsoleCoordinates byteSize
]

{ #category : #accessing }
WinConsoleScreenBuffer >> size [

	^self dwSize asPoint
]

{ #category : #'accessing - structure variables' }
WinConsoleScreenBuffer >> srWindow [
	"This method was automatically generated"
	^ WinConsoleSmallRectangle fromHandle: (handle referenceStructAt: OFFSET_SRWINDOW length: WinConsoleSmallRectangle byteSize)
]

{ #category : #'accessing - structure variables' }
WinConsoleScreenBuffer >> srWindow: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_SRWINDOW put: anObject getHandle length: WinConsoleSmallRectangle byteSize
]

{ #category : #'accessing - structure variables' }
WinConsoleScreenBuffer >> wAttributes [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_WATTRIBUTES
]

{ #category : #'accessing - structure variables' }
WinConsoleScreenBuffer >> wAttributes: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_WATTRIBUTES put: anObject
]
