"
Represents a POINTstructure
"
Class {
	#name : 'WinPoint',
	#superclass : 'FFIExternalStructure',
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : 'OS-Windows-UI-Graphics-Support',
	#package : 'OS-Windows-UI',
	#tag : 'Graphics-Support'
}

{ #category : 'field definition' }
WinPoint class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>

	^ #(
		long x;
		long y;
		)
]

{ #category : 'instance creation' }
WinPoint class >> fromPoint: aPoint [

	^self x: aPoint x y: aPoint y
]

{ #category : 'instance creation' }
WinPoint class >> x: x y: y [
	"Creates a new instance of the receiver with the given coordinates"

	^(self new)
		x: x;
		y: y;
		yourself
]

{ #category : 'conversion' }
WinPoint >> asPoint [

	^self x @ self y
]

{ #category : 'accessing - structure variables' }
WinPoint >> x [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_X
]

{ #category : 'accessing - structure variables' }
WinPoint >> x: anObject [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_X put: anObject
]

{ #category : 'accessing - structure variables' }
WinPoint >> y [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_Y
]

{ #category : 'accessing - structure variables' }
WinPoint >> y: anObject [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_Y put: anObject
]
