"
Contains window class information and represents the
WNDCLASSEX structure defined in WinUser.h

"
Class {
	#name : #WinWndClassEx,
	#superclass : #FFIExternalStructure,
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-UI-Desktop-Support'
}

{ #category : #'private - accessing' }
WinWndClassEx class >> fieldsDesc [
	"self rebuildFieldAccessors"
	^ #(
		UINT cbSize;
		UINT style;
		WNDPROC lpfnWndProc;
		int cbClsExtra;
		int cbWndExtra;
		HINSTANCE hInstance;
		HICON hIcon;
		HCURSOR hCursor;
		HBRUSH hbrBackground;
		ExternalAddress lpszMenuName;
		ExternalAddress lpszClassName;
		HICON hIconSm;
	)
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> cbClsExtra [
	"This method was automatically generated"
	^handle signedLongAt: 13
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> cbClsExtra: anObject [
	"This method was automatically generated"
	handle signedLongAt: 13 put: anObject
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> cbSize [
	"This method was automatically generated"
	^handle unsignedLongAt: 1
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> cbSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 1 put: anObject
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> cbWndExtra [
	"This method was automatically generated"
	^handle signedLongAt: 17
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> cbWndExtra: anObject [
	"This method was automatically generated"
	handle signedLongAt: 17 put: anObject
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> hCursor [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: 41)
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> hCursor: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 41 put: anObject value
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> hIcon [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: 33)
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> hIcon: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 33 put: anObject value
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> hIconSm [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: 65)
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> hIconSm: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 65 put: anObject value
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> hInstance [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: 25)
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> hInstance: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 25 put: anObject value
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> hbrBackground [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: 49)
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> hbrBackground: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 49 put: anObject value
]

{ #category : #initialization }
WinWndClassEx >> initialize [
	super initialize.
	self cbSize: (self class structureSize).
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> lpfnWndProc [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 9) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> lpfnWndProc: anObject [
	"This method was automatically generated"
	handle pointerAt: 9 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> lpszClassName [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 57) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> lpszClassName: anObject [
	"This method was automatically generated"
	handle pointerAt: 57 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> lpszMenuName [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 53) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> lpszMenuName: anObject [
	"This method was automatically generated"
	handle pointerAt: 53 put: anObject getHandle.
]

{ #category : #registration }
WinWndClassEx >> register [
	 
	^ self ffiCall: #( ATOM RegisterClassExA (WNDCLASSEX * self) ) 
			  module: #user32
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> style [
	"This method was automatically generated"
	^handle unsignedLongAt: 5
]

{ #category : #'accessing structure variables' }
WinWndClassEx >> style: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 5 put: anObject
]
