"
Represents the console colors. It is necessary since console colors are limited up to Windows Vista.

Instance Variables
	value:		<Integer>

value
	- bit encoded color with INTENSITY RED GREEN BLUE bits 
	 (either lower 4 bits for foreground or higher four bits for
	  background)
"
Class {
	#name : #WinConsoleColor,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#pools : [
		'WinConsoleConstants'
	],
	#category : #'OS-Windows-Environment-Console-Support'
}

{ #category : #'accessing colors' }
WinConsoleColor class >> aqua [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> black [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> blue [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> fuchsia [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> gray [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> green [

	^self subclassResponsibility 
]

{ #category : #'private - testing' }
WinConsoleColor class >> isValidValue: aValue [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> lime [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> maroon [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> navy [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> olive [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> purple [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> red [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> silver [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> teal [

	^self subclassResponsibility 
]

{ #category : #'instance creation' }
WinConsoleColor class >> value: anInteger [

	(self isValidValue: anInteger) ifFalse: [ self error: 'Invalid value' ].	
	^(self new) 
		value: anInteger;
		yourself
]

{ #category : #'accessing colors' }
WinConsoleColor class >> white [

	^self subclassResponsibility 
]

{ #category : #'accessing colors' }
WinConsoleColor class >> yellow [

	^self subclassResponsibility 
]

{ #category : #printing }
WinConsoleColor >> printOn: aStream [.
	super printOn: aStream.
	aStream cr; nextPutAll: 'value: '.
	self value printOn: aStream
]

{ #category : #accessing }
WinConsoleColor >> value [

	^value
]

{ #category : #accessing }
WinConsoleColor >> value: aValue [

	value := aValue
]
