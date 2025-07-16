"
The native Windows clipboard
"
Class {
	#name : #WinClipboard,
	#superclass : #WinHandle,
	#pools : [
		'WinBaseConstants',
		'WinTypes',
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Clipboard'
}

{ #category : #cleanup }
WinClipboard class >> cleanUp: anObject [

	super cleanUp: anObject.
	self resetClipboard
]

{ #category : #'api - utils' }
WinClipboard class >> clearClipboard [
	<script>

	self
		openClipboard;
		emptyClipboard;
		closeClipboard
]

{ #category : #private }
WinClipboard class >> clipboardDataValue: aDatum id: anId [
	"Get clipboard content"

	aDatum ifNil:[ ^ nil ].
	aDatum isNull ifTrue: [ ^ nil ].

	anId = CF_TEXT ifTrue:[
		^ aDatum bytesFromCString utf8Decoded
	].

	anId = WinClipboardHTMLFormat formatID ifTrue:[
		^ aDatum bytesFromCString utf8Decoded
	].

	anId = CF_HDROP ifTrue:[
		^ aDatum readStream
	].

	^ aDatum readStream
]

{ #category : #'api - utils' }
WinClipboard class >> closeClipboard [
	<script>

	^ self ffiCall: #(BOOL CloseClipboard #()) module: #user32
]

{ #category : #accessing }
WinClipboard class >> currentClipboardEntries [
	"Return a list of entries for the current clipboard"
	<script: 'WinClipboard currentClipboardEntries inspect'>

	| base stop oc types |
	oc := OrderedCollection new.
	base := 0.
	stop := false.
	types := WinClipboardFormat concreteFormatsMapping.

	self openClipboard.
	[ stop ] whileFalse: [
		base := WinClipboardFormat enumClipboardFormats: base.
		base = 0 ifTrue: [
			stop := true.
		] ifFalse: [ | entry |
			entry := WinClipboardEntry new.
			entry id: base.
			entry isSupported: (types includesKey: base).
			entry isSupported ifFalse:[ | type |
				"Try to get the type by the registered list"
				type := (WinClipboardFormat formatFromID: base) formatSymbol.
				type ifNotNil:[
					entry isSupported: true.
					entry type: type.
				].
			].

			entry isSupported ifTrue:[
				entry type ifNil:[ entry type: (types at: base) ].
				entry datum: (self getClipboardData: base).
				entry data: (self clipboardDataValue: (entry datum) id: base).
			].
			oc add: entry.
		].
	].
	self closeClipboard.
	^ oc
]

{ #category : #accessing }
WinClipboard class >> currentClipboardFormatIDs [
	"Return a list a numeric types into the current clipboard"
	<script: 'WinClipboard currentClipboardFormatIDs inspect'>

	| base stop oc |
	self openClipboard.
	base := 0.
	stop := false.
	oc := OrderedCollection new.
	[ stop ] whileFalse: [
		base := WinClipboardFormat enumClipboardFormats: base.
		base = 0
			ifTrue: [ stop := true ]
			ifFalse: [ oc add: base ] ].
	self closeClipboard.
	^ oc
]

{ #category : #'api - utils' }
WinClipboard class >> emptyClipboard [
	<script>

	^ self ffiCall: #(BOOL EmptyClipboard #()) module: #user32
]

{ #category : #initialization }
WinClipboard class >> getClipboardData: aFormat [

	^ self ffiCall: #(void* GetClipboardData #(UINT aFormat)) module: #user32
]

{ #category : #accessing }
WinClipboard class >> getTextClipboardData [
	<script: 'self getTextClipboardData inspect'>
	| datum aStringOrNil |
	self openClipboard.
	datum := self getClipboardData: CF_TEXT.
	aStringOrNil := self clipboardDataValue: datum id: CF_TEXT.
	self closeClipboard.
	^ aStringOrNil
]

{ #category : #'api - utils' }
WinClipboard class >> openClipboard [
	<script>

	WinClipboardFormat registerCustomClipboardFormats.
	^ self openClipboard: (ExternalAddress fromAddress: 0)
]

{ #category : #'api - utils' }
WinClipboard class >> openClipboard: aHWnd [

	^ self ffiCall: #(BOOL OpenClipboard #(HWND aHWnd)) module: #user32
]

{ #category : #initialization }
WinClipboard class >> resetClipboard [

	WinClipboardFormat reset
]

{ #category : #initialization }
WinClipboard class >> setClipboardTextData: aFormat value: aString [

	^ self ffiCall:  #(void * SetClipboardData #(UINT aFormat, char * aString)) module: #user32
]
