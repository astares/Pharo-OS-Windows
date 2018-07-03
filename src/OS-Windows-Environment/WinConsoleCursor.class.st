"
Wrapper for the CONSOLE_CURSOR_INFO structure from wincon.h

Contains information about the console cursor.
"
Class {
	#name : #WinConsoleCursor,
	#superclass : #FFIExternalStructure,
	#pools : [
		'WinConsoleConstants',
		'WinTypes'
	],
	#category : #'OS-Windows-Environment-Console-Support'
}

{ #category : #'private accessing' }
WinConsoleCursor class >> fieldsDesc [
	"self rebuildFieldAccessors"
	
	^ #(
		DWORD dwSize;
		BOOL  bVisible;
		)
]

{ #category : #'private - accessing structure variables' }
WinConsoleCursor >> bVisible [
	"This method was automatically generated"
	^(handle at: 5) == 1
]

{ #category : #'private - accessing structure variables' }
WinConsoleCursor >> bVisible: anObject [
	"This method was automatically generated"
	handle booleanAt: 5 put: anObject
]

{ #category : #accessing }
WinConsoleCursor >> beInvisible [

	self bVisible: false
]

{ #category : #accessing }
WinConsoleCursor >> beVisible [

	self bVisible: true
]

{ #category : #'private - accessing structure variables' }
WinConsoleCursor >> dwSize [
	"This method was automatically generated"
	^handle unsignedLongAt: 1
]

{ #category : #'private - accessing structure variables' }
WinConsoleCursor >> dwSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 1 put: anObject
]

{ #category : #testing }
WinConsoleCursor >> isInvisible [

	^self isVisible not
]

{ #category : #testing }
WinConsoleCursor >> isVisible [

	^self bVisible
]

{ #category : #accessing }
WinConsoleCursor >> size [

	^self dwSize
]

{ #category : #accessing }
WinConsoleCursor >> size: anInteger [

	self dwSize: anInteger
]
