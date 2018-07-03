"
Wrapper for the COORD structure from wincon.h

Defines the coordinates of a character cell in a console screen buffer. The origin of the coordinate system (0,0) is at the top, left cell of the buffer.
"
Class {
	#name : #WinConsoleCoordinates,
	#superclass : #FFIExternalStructure,
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-Environment-Console-Support'
}

{ #category : #'private accessing' }
WinConsoleCoordinates class >> fieldsDesc [
	"self rebuildFieldAccessors"
	
	^ #(
		SHORT x;
		SHORT y;
	)
]

{ #category : #'instance creation' }
WinConsoleCoordinates class >> fromPoint: aPoint [ 

	^(self new)
		x: aPoint x;
		y: aPoint y;
		yourself
]

{ #category : #conversion }
WinConsoleCoordinates >> asPoint [

	^(self x @ self y)
]

{ #category : #'accessing structure variables' }
WinConsoleCoordinates >> x [
	"This method was automatically generated"
	^handle signedShortAt: 1
]

{ #category : #'accessing structure variables' }
WinConsoleCoordinates >> x: anObject [
	"This method was automatically generated"
	handle signedShortAt: 1 put: anObject
]

{ #category : #'accessing structure variables' }
WinConsoleCoordinates >> y [
	"This method was automatically generated"
	^handle signedShortAt: 3
]

{ #category : #'accessing structure variables' }
WinConsoleCoordinates >> y: anObject [
	"This method was automatically generated"
	handle signedShortAt: 3 put: anObject
]
