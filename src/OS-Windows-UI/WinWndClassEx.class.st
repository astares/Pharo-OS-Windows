"
Contains window class information and represents the
WNDCLASSEX structure defined in WinUser.h

"
Class {
	#name : #WinWndClassEx,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_CBCLSEXTRA',
		'OFFSET_CBSIZE',
		'OFFSET_CBWNDEXTRA',
		'OFFSET_HBRBACKGROUND',
		'OFFSET_HCURSOR',
		'OFFSET_HICON',
		'OFFSET_HICONSM',
		'OFFSET_HINSTANCE',
		'OFFSET_LPFNWNDPROC',
		'OFFSET_LPSZCLASSNAME',
		'OFFSET_LPSZMENUNAME',
		'OFFSET_STYLE'
	],
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-UI-Desktop-Support'
}

{ #category : #'field definition' }
WinWndClassEx class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>

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

{ #category : #'accessing - structure variables' }
WinWndClassEx >> cbClsExtra [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CBCLSEXTRA
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> cbClsExtra: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CBCLSEXTRA put: anObject
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> cbSize [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_CBSIZE
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> cbSize: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_CBSIZE put: anObject
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> cbWndExtra [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_CBWNDEXTRA
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> cbWndExtra: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_CBWNDEXTRA put: anObject
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> hCursor [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HCURSOR)
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> hCursor: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HCURSOR put: anObject value
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> hIcon [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HICON)
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> hIcon: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HICON put: anObject value
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> hIconSm [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HICONSM)
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> hIconSm: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HICONSM put: anObject value
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> hInstance [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HINSTANCE)
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> hInstance: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HINSTANCE put: anObject value
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> hbrBackground [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HBRBACKGROUND)
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> hbrBackground: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HBRBACKGROUND put: anObject value
]

{ #category : #initialization }
WinWndClassEx >> initialize [
	super initialize.
	self cbSize: (self class structureSize)
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> lpfnWndProc [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPFNWNDPROC) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> lpfnWndProc: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPFNWNDPROC put: anObject getHandle
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> lpszClassName [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPSZCLASSNAME) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> lpszClassName: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPSZCLASSNAME put: anObject getHandle
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> lpszMenuName [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPSZMENUNAME) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> lpszMenuName: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPSZMENUNAME put: anObject getHandle
]

{ #category : #registration }
WinWndClassEx >> register [

	^ self ffiCall: #( ATOM RegisterClassExA (WNDCLASSEX * self) )
			  module: #user32
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> style [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_STYLE
]

{ #category : #'accessing - structure variables' }
WinWndClassEx >> style: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_STYLE put: anObject
]
