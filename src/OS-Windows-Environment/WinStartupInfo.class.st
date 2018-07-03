"
Represents the Windows STARTUPINFO structure

Specifies the window station, desktop, standard handles, and appearance of the main window for a process at creation time.
"
Class {
	#name : #WinStartupInfo,
	#superclass : #FFIExternalStructure,
	#pools : [
		'WinBaseConstants',
		'WinTypes'
	],
	#category : #'OS-Windows-Environment-Processing-Support'
}

{ #category : #'private - accessing' }
WinStartupInfo class >> fieldsDesc [
	"self rebuildFieldAccessors"
	
	^ #(
		DWORD cb;
		LPTSTR lpReserved;
		LPTSTR lpDesktop;
		LPTSTR lpTitle;
		DWORD  dwX;
		DWORD  dwY;
		DWORD  dwXSize;
		DWORD  dwYSize;
		DWORD  dwXCountChars;
		DWORD  dwYCountChars;
		DWORD  dwFillAttribute;
		DWORD  dwFlags;
		WORD wShowWindow;
		WORD cbReserved2;
		LPBYTE lpReserved2;
		HANDLE hStdInput;
		HANDLE hStdOutput;
		HANDLE hStdError
		)
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> cb [
	"This method was automatically generated"
	^handle unsignedLongAt: 1
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> cb: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 1 put: anObject
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> cbReserved2 [
	"This method was automatically generated"
	^handle unsignedShortAt: 51
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> cbReserved2: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 51 put: anObject
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwFillAttribute [
	"This method was automatically generated"
	^handle unsignedLongAt: 41
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwFillAttribute: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 41 put: anObject
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwFlags [
	"This method was automatically generated"
	^handle unsignedLongAt: 45
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwFlags: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 45 put: anObject
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwX [
	"This method was automatically generated"
	^handle unsignedLongAt: 17
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwX: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 17 put: anObject
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwXCountChars [
	"This method was automatically generated"
	^handle unsignedLongAt: 33
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwXCountChars: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 33 put: anObject
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwXSize [
	"This method was automatically generated"
	^handle unsignedLongAt: 25
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwXSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 25 put: anObject
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwY [
	"This method was automatically generated"
	^handle unsignedLongAt: 21
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwY: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 21 put: anObject
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwYCountChars [
	"This method was automatically generated"
	^handle unsignedLongAt: 37
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwYCountChars: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 37 put: anObject
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwYSize [
	"This method was automatically generated"
	^handle unsignedLongAt: 29
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> dwYSize: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 29 put: anObject
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> hStdError [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: 65)
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> hStdError: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 65 put: anObject value
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> hStdInput [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: 57)
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> hStdInput: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 57 put: anObject value
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> hStdOutput [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: 61)
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> hStdOutput: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 61 put: anObject value
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> lpDesktop [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 9) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> lpDesktop: anObject [
	"This method was automatically generated"
	handle pointerAt: 9 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> lpReserved [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 5) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> lpReserved2 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 53) type: ExternalType sbyte asPointerType
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> lpReserved2: anObject [
	"This method was automatically generated"
	handle pointerAt: 53 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> lpReserved: anObject [
	"This method was automatically generated"
	handle pointerAt: 5 put: anObject getHandle.
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> lpTitle [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 13) type: ExternalType char asPointerType
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> lpTitle: anObject [
	"This method was automatically generated"
	handle pointerAt: 13 put: anObject getHandle.
]

{ #category : #testing }
WinStartupInfo >> title [

	^self lpTitle
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> wShowWindow [
	"This method was automatically generated"
	^handle unsignedShortAt: 49
]

{ #category : #'accessing structure variables' }
WinStartupInfo >> wShowWindow: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 49 put: anObject
]

{ #category : #testing }
WinStartupInfo >> wasStartedFromAShortcut [
	"Return true when an executable has been started via a short-cut."
	
	^STARTF_TITLESHORTCUT = (self dwFlags & STARTF_TITLESHORTCUT)
]
