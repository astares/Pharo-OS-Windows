"
Represents a RECT structure
"
Class {
	#name : #WinRectangle,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_BOTTOM',
		'OFFSET_LEFT',
		'OFFSET_RIGHT',
		'OFFSET_TOP'
	],
	#category : #'OS-Windows-UI-Graphics-Support'
}

{ #category : #'field definition' }
WinRectangle class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>

	^ #(
		long left;
		long top;
		long right;
		long bottom;
		)
]

{ #category : #'instance creation' }
WinRectangle class >> fromRectangle: aRectangle [

	^self left: aRectangle left right: aRectangle right top: aRectangle top bottom: aRectangle bottom
]

{ #category : #'instance creation' }
WinRectangle class >> left: leftNumber right: rightNumber top: topNumber bottom: bottomNumber [

	^(self new)
		left: leftNumber;
		right: rightNumber;
		top: topNumber;
		bottom: bottomNumber;
		yourself
]

{ #category : #conversion }
WinRectangle >> asRectangle [

	^Rectangle left: self left right: self right top: self top bottom: self bottom
]

{ #category : #'accessing structure variables' }
WinRectangle >> bottom [
	"This method was automatically generated"
	^handle signedLongAt: 13
]

{ #category : #'accessing structure variables' }
WinRectangle >> bottom: anObject [
	"This method was automatically generated"
	handle signedLongAt: 13 put: anObject
]

{ #category : #'accessing structure variables' }
WinRectangle >> left [
	"This method was automatically generated"
	^handle signedLongAt: 1
]

{ #category : #'accessing structure variables' }
WinRectangle >> left: anObject [
	"This method was automatically generated"
	handle signedLongAt: 1 put: anObject
]

{ #category : #'accessing structure variables' }
WinRectangle >> right [
	"This method was automatically generated"
	^handle signedLongAt: 9
]

{ #category : #'accessing structure variables' }
WinRectangle >> right: anObject [
	"This method was automatically generated"
	handle signedLongAt: 9 put: anObject
]

{ #category : #'accessing structure variables' }
WinRectangle >> top [
	"This method was automatically generated"
	^handle signedLongAt: 5
]

{ #category : #'accessing structure variables' }
WinRectangle >> top: anObject [
	"This method was automatically generated"
	handle signedLongAt: 5 put: anObject
]
