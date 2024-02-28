"
A possible background color for the windows console
"
Class {
	#name : 'WinConsoleBackgroundColor',
	#superclass : 'WinConsoleColor',
	#category : 'OS-Windows-Environment-Console-Support',
	#package : 'OS-Windows-Environment',
	#tag : 'Console-Support'
}

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> aqua [

	^self value: BACKGROUND_INTENSITY | BACKGROUND_GREEN | BACKGROUND_BLUE
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> black [

	^self value: 0
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> blue [

	^self value: BACKGROUND_INTENSITY | BACKGROUND_BLUE
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> fuchsia [

	^self value: BACKGROUND_INTENSITY | BACKGROUND_RED | BACKGROUND_BLUE
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> gray [

	^self value: BACKGROUND_INTENSITY
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> green [

	^self value: BACKGROUND_GREEN
]

{ #category : 'private testing' }
WinConsoleBackgroundColor class >> isValidValue: anInteger [

	^anInteger = 0 or: [
		anInteger > 15 and: [ anInteger < 256 ]]
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> lime [

	^self value: BACKGROUND_INTENSITY | BACKGROUND_GREEN
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> maroon [

	^self value: BACKGROUND_RED
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> navy [

	^self value: BACKGROUND_BLUE
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> olive [

	^self value: BACKGROUND_RED | BACKGROUND_GREEN
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> purple [

	^self value: BACKGROUND_RED | BACKGROUND_BLUE
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> red [

	^self value: BACKGROUND_INTENSITY | BACKGROUND_RED
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> silver [

	^self value: BACKGROUND_RED | BACKGROUND_GREEN | BACKGROUND_BLUE
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> teal [

	^self value: BACKGROUND_GREEN | BACKGROUND_BLUE
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> white [

	^self value: BACKGROUND_INTENSITY | BACKGROUND_RED | BACKGROUND_GREEN | BACKGROUND_BLUE
]

{ #category : 'accessing colors' }
WinConsoleBackgroundColor class >> yellow [

	^self value: BACKGROUND_INTENSITY | BACKGROUND_RED | BACKGROUND_GREEN
]
