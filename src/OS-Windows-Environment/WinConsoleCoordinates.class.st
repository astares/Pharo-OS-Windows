"
Wrapper for the COORD structure from wincon.h

Defines the coordinates of a character cell in a console screen buffer. The origin of the coordinate system (0,0) is at the top, left cell of the buffer.
"
Class {
	#name : 'WinConsoleCoordinates',
	#superclass : 'FFIExternalStructure',
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#pools : [
		'WinTypes'
	],
	#category : 'OS-Windows-Environment-Console-Support',
	#package : 'OS-Windows-Environment',
	#tag : 'Console-Support'
}

{ #category : 'field definition' }
WinConsoleCoordinates class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>

	^ #(
		SHORT x;
		SHORT y;
	)
]

{ #category : 'instance creation' }
WinConsoleCoordinates class >> fromPoint: aPoint [

	^(self new)
		x: aPoint x;
		y: aPoint y;
		yourself
]

{ #category : 'conversion' }
WinConsoleCoordinates >> asPoint [

	^(self x @ self y)
]

{ #category : 'accessing - structure variables' }
WinConsoleCoordinates >> x [
	"This method was automatically generated"
	^handle signedShortAt: OFFSET_X
]

{ #category : 'accessing - structure variables' }
WinConsoleCoordinates >> x: anObject [
	"This method was automatically generated"
	handle signedShortAt: OFFSET_X put: anObject
]

{ #category : 'accessing - structure variables' }
WinConsoleCoordinates >> y [
	"This method was automatically generated"
	^handle signedShortAt: OFFSET_Y
]

{ #category : 'accessing - structure variables' }
WinConsoleCoordinates >> y: anObject [
	"This method was automatically generated"
	handle signedShortAt: OFFSET_Y put: anObject
]
