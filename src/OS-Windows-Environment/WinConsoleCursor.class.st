"
Wrapper for the CONSOLE_CURSOR_INFO structure from wincon.h

Contains information about the console cursor.
"
Class {
	#name : 'WinConsoleCursor',
	#superclass : 'FFIExternalStructure',
	#classVars : [
		'OFFSET_BVISIBLE',
		'OFFSET_DWSIZE'
	],
	#pools : [
		'WinConsoleConstants',
		'WinTypes'
	],
	#category : 'OS-Windows-Environment-Console-Support',
	#package : 'OS-Windows-Environment',
	#tag : 'Console-Support'
}

{ #category : 'field definition' }
WinConsoleCursor class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>

	^ #(
		DWORD dwSize;
		BOOL  bVisible;
		)
]

{ #category : 'accessing - structure variables' }
WinConsoleCursor >> bVisible [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_BVISIBLE
]

{ #category : 'accessing - structure variables' }
WinConsoleCursor >> bVisible: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_BVISIBLE put: anObject
]

{ #category : 'accessing' }
WinConsoleCursor >> beInvisible [

	self bVisible: false
]

{ #category : 'accessing' }
WinConsoleCursor >> beVisible [

	self bVisible: true
]

{ #category : 'accessing - structure variables' }
WinConsoleCursor >> dwSize [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWSIZE
]

{ #category : 'accessing - structure variables' }
WinConsoleCursor >> dwSize: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWSIZE put: anObject
]

{ #category : 'testing' }
WinConsoleCursor >> isInvisible [

	^self isVisible not
]

{ #category : 'testing' }
WinConsoleCursor >> isVisible [

	^self bVisible
]

{ #category : 'accessing' }
WinConsoleCursor >> size [

	^self dwSize
]

{ #category : 'accessing' }
WinConsoleCursor >> size: anInteger [

	self dwSize: anInteger
]
