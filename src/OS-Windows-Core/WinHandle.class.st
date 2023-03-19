"
Superclass for any external object that is referenced by a windows handle
"
Class {
	#name : #WinHandle,
	#superclass : #FFIConstantHandle,
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-Core-Common'
}

{ #category : #'private - finalization' }
WinHandle class >> closeHandle: aHandle [
	"Closes the given handle"

	^self ffiCall: #(BOOL CloseHandle(HANDLE aHandle)) module: #kernel32
]

{ #category : #finalization }
WinHandle class >> finalizeResourceData: aWinHandle [
	"Finalize the external resource by closing"

	(aWinHandle value = 0) ifTrue: [ ^ self ].
	self closeHandle: aWinHandle
]

{ #category : #'instance creation' }
WinHandle class >> fromExternalHandle: anInteger [

	^(self new)
		setHandle: anInteger;
		yourself
]

{ #category : #finalization }
WinHandle >> closeHandle [

	^self class closeHandle: self
]

{ #category : #initialization }
WinHandle >> initialize [
	super initialize.
	self autoRelease
]

{ #category : #testing }
WinHandle >> isInvalid [

	^self value = 0
]

{ #category : #finalization }
WinHandle >> resourceData [
	"Return the resource data used for managing the external resource"

	^ self
]
