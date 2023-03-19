"
A possible foreground color for the windows console
"
Class {
	#name : #WinConsoleForegroundColor,
	#superclass : #WinConsoleColor,
	#category : #'OS-Windows-Environment-Console-Support'
}

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> aqua [

	^self value: FOREGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_BLUE
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> black [

	^self value: 0
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> blue [

	^self value: FOREGROUND_INTENSITY | FOREGROUND_BLUE
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> fuchsia [

	^self value: FOREGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_BLUE
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> gray [

	^self value: FOREGROUND_INTENSITY
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> green [

	^self value: FOREGROUND_GREEN
]

{ #category : #'private testing' }
WinConsoleForegroundColor class >> isValidValue: anInteger [

	^anInteger >= 0 and: [ anInteger < 16 ]
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> lime [

	^self value: FOREGROUND_INTENSITY | FOREGROUND_GREEN
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> maroon [

	^self value: FOREGROUND_RED
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> navy [

	^self value: FOREGROUND_BLUE
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> olive [

	^self value: FOREGROUND_RED | FOREGROUND_GREEN
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> purple [

	^self value: FOREGROUND_RED | FOREGROUND_BLUE
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> red [

	^self value: FOREGROUND_INTENSITY | FOREGROUND_RED
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> silver [

	^self value: FOREGROUND_RED | FOREGROUND_GREEN | FOREGROUND_BLUE
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> teal [

	^self value: FOREGROUND_GREEN | FOREGROUND_BLUE
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> white [

	^self value: FOREGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_GREEN | FOREGROUND_BLUE
]

{ #category : #'accessing colors' }
WinConsoleForegroundColor class >> yellow [

	^self value: FOREGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_GREEN
]
