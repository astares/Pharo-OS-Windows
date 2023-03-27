"
Utility class to handle native windows clipboard formats
"
Class {
	#name : #WinClipboardFormat,
	#superclass : #Object,
	#pools : [
		'WinTypes',
		'WinUserConstants'
	],
	#classInstVars : [
		'clipboardFormats'
	],
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - formats' }
WinClipboardFormat class >> concreteFormats [
	"Return a list of concrete subclasses (custom and standard formats)"
	<script: 'self concreteFormats inspect'>

	^ self allSubclasses reject: [ :each | each isAbstract ]
]

{ #category : #accessing }
WinClipboardFormat class >> concreteFormatsMapping [
	<script: 'self concreteFormatsMapping inspect'>

	|map|
	map := IdentityDictionary new.
	self concreteFormats do: [:each |
		map at: each formatID	put: each formatSymbol ].
	^ map
]

{ #category : #accessing }
WinClipboardFormat class >> concreteFormatsReverseMapping [
	<script: 'self concreteFormatsReverseMapping inspect'>

	|map|
	map := IdentityDictionary new.
	self concreteFormats do: [:each |
		map at: each formatSymbol put: each formatID ].
	^ map
]

{ #category : #'accessing - formats' }
WinClipboardFormat class >> customFormats [
	"Return a list of concrete subclasses who represent custom formats"
	<script: 'self customFormats inspect'>

	^ self concreteFormats select: [:each | each isCustomFormat ]
]

{ #category : #'api - utils' }
WinClipboardFormat class >> enumClipboardFormats: aFormat [

	^ self ffiCall: #(UINT EnumClipboardFormats #(UINT aFormat)) module: #user32
]

{ #category : #accessing }
WinClipboardFormat class >> formatFromID: anID [

	^ self concreteFormats detect: [:each | each formatID = anID ] ifNone: [ nil ]
]

{ #category : #'accessing - defaults' }
WinClipboardFormat class >> formatID [

	^ self subclassResponsibility
]

{ #category : #'accessing - defaults' }
WinClipboardFormat class >> formatSymbol [

	^ self subclassResponsibility
]

{ #category : #'class initialization' }
WinClipboardFormat class >> initialize [

	self registerCustomClipboardFormats
]

{ #category : #testing }
WinClipboardFormat class >> isAbstract [

	^ self == WinClipboardFormat
]

{ #category : #testing }
WinClipboardFormat class >> isCustomFormat [

	^ self isStandardFormat not
]

{ #category : #testing }
WinClipboardFormat class >> isStandardFormat [

	^ true
]

{ #category : #'api - utils' }
WinClipboardFormat class >> registerClipboardFormat: aString [

	^ self ffiCall: #(UINT RegisterClipboardFormatA #(LPTSTR aString)) module: #user32
]

{ #category : #'class initialization' }
WinClipboardFormat class >> registerCustomClipboardFormats [
	<script>

	WinCustomClipboardFormat allSubclassesDo: [:each | each register ]
]

{ #category : #'class initialization' }
WinClipboardFormat class >> reset [
	<script>

	clipboardFormats := nil
]

{ #category : #'accessing - formats' }
WinClipboardFormat class >> standardFormats [
	"Return a list of concrete subclasses who represent standard formats"
	<script: 'self standardFormats inspect'>

	^ self concreteFormats select: [:each | each isStandardFormat ]
]
