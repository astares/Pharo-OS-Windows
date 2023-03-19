"
Wrapper for the SMALL_RECT structure from wincon.h

Defines the coordinates of the upper left and lower right corners of a rectangle.
"
Class {
	#name : #WinConsoleSmallRectangle,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_BOTTOM',
		'OFFSET_LEFT',
		'OFFSET_RIGHT',
		'OFFSET_TOP'
	],
	#pools : [
		'WinConsoleConstants',
		'WinTypes'
	],
	#category : #'OS-Windows-Environment-Console-Support'
}

{ #category : #'private - accessing' }
WinConsoleSmallRectangle class >> fieldsDesc [
	"self rebuildFieldAccessors"

	^ #(
		SHORT left;
  		SHORT top;
  		SHORT right;
  		SHORT bottom;
		)
]

{ #category : #'accessing structure variables' }
WinConsoleSmallRectangle >> bottom [
	"This method was automatically generated"
	^handle signedShortAt: 7
]

{ #category : #'accessing structure variables' }
WinConsoleSmallRectangle >> bottom: anObject [
	"This method was automatically generated"
	handle signedShortAt: 7 put: anObject
]

{ #category : #'accessing structure variables' }
WinConsoleSmallRectangle >> left [
	"This method was automatically generated"
	^handle signedShortAt: 1
]

{ #category : #'accessing structure variables' }
WinConsoleSmallRectangle >> left: anObject [
	"This method was automatically generated"
	handle signedShortAt: 1 put: anObject
]

{ #category : #'accessing structure variables' }
WinConsoleSmallRectangle >> right [
	"This method was automatically generated"
	^handle signedShortAt: 5
]

{ #category : #'accessing structure variables' }
WinConsoleSmallRectangle >> right: anObject [
	"This method was automatically generated"
	handle signedShortAt: 5 put: anObject
]

{ #category : #'accessing structure variables' }
WinConsoleSmallRectangle >> top [
	"This method was automatically generated"
	^handle signedShortAt: 3
]

{ #category : #'accessing structure variables' }
WinConsoleSmallRectangle >> top: anObject [
	"This method was automatically generated"
	handle signedShortAt: 3 put: anObject
]
