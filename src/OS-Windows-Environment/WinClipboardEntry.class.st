"
An entry in the Clipboard
"
Class {
	#name : #WinClipboardEntry,
	#superclass : #Object,
	#instVars : [
		'id',
		'type',
		'isSupported',
		'datum',
		'data'
	],
	#category : 'OS-Windows-Environment-Clipboard'
}

{ #category : #accessing }
WinClipboardEntry >> data [

	^ data
]

{ #category : #accessing }
WinClipboardEntry >> data: anObject [

	data := anObject
]

{ #category : #accessing }
WinClipboardEntry >> datum [

	^ datum
]

{ #category : #accessing }
WinClipboardEntry >> datum: anObject [

	datum := anObject
]

{ #category : #accessing }
WinClipboardEntry >> id [

	^ id
]

{ #category : #accessing }
WinClipboardEntry >> id: anObject [

	id := anObject
]

{ #category : #accessing }
WinClipboardEntry >> isSupported [

	^ isSupported
]

{ #category : #accessing }
WinClipboardEntry >> isSupported: anObject [

	isSupported := anObject
]

{ #category : #printing }
WinClipboardEntry >> printOn: aStream [
	super printOn: aStream.
	aStream
		space;
		nextPut: $-;
		space;
		nextPutAll: type asString
]

{ #category : #accessing }
WinClipboardEntry >> type [

	^ type
]

{ #category : #accessing }
WinClipboardEntry >> type: anObject [

	type := anObject
]
