"
Represents the Windows STARTUPINFO structure

Specifies the window station, desktop, standard handles, and appearance of the main window for a process at creation time.
"
Class {
	#name : 'WinStartupInfo',
	#superclass : 'FFIExternalStructure',
	#classVars : [
		'OFFSET_CB',
		'OFFSET_CBRESERVED2',
		'OFFSET_DWFILLATTRIBUTE',
		'OFFSET_DWFLAGS',
		'OFFSET_DWX',
		'OFFSET_DWXCOUNTCHARS',
		'OFFSET_DWXSIZE',
		'OFFSET_DWY',
		'OFFSET_DWYCOUNTCHARS',
		'OFFSET_DWYSIZE',
		'OFFSET_HSTDERROR',
		'OFFSET_HSTDINPUT',
		'OFFSET_HSTDOUTPUT',
		'OFFSET_LPDESKTOP',
		'OFFSET_LPRESERVED',
		'OFFSET_LPRESERVED2',
		'OFFSET_LPTITLE',
		'OFFSET_WSHOWWINDOW'
	],
	#pools : [
		'WinBaseConstants',
		'WinTypes'
	],
	#category : 'OS-Windows-Environment-Processing-Support',
	#package : 'OS-Windows-Environment',
	#tag : 'Processing-Support'
}

{ #category : 'field definition' }
WinStartupInfo class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>

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

{ #category : 'accessing - structure variables' }
WinStartupInfo >> cb [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_CB
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> cb: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_CB put: anObject
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> cbReserved2 [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_CBRESERVED2
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> cbReserved2: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_CBRESERVED2 put: anObject
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwFillAttribute [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWFILLATTRIBUTE
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwFillAttribute: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWFILLATTRIBUTE put: anObject
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwFlags [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWFLAGS
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwFlags: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWFLAGS put: anObject
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwX [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWX
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwX: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWX put: anObject
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwXCountChars [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWXCOUNTCHARS
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwXCountChars: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWXCOUNTCHARS put: anObject
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwXSize [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWXSIZE
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwXSize: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWXSIZE put: anObject
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwY [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWY
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwY: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWY put: anObject
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwYCountChars [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWYCOUNTCHARS
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwYCountChars: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWYCOUNTCHARS put: anObject
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwYSize [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWYSIZE
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> dwYSize: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWYSIZE put: anObject
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> hStdError [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HSTDERROR)
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> hStdError: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HSTDERROR put: anObject value
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> hStdInput [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HSTDINPUT)
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> hStdInput: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HSTDINPUT put: anObject value
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> hStdOutput [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HSTDOUTPUT)
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> hStdOutput: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HSTDOUTPUT put: anObject value
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> lpDesktop [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPDESKTOP) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> lpDesktop: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPDESKTOP put: anObject getHandle
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> lpReserved [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPRESERVED) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> lpReserved2 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPRESERVED2) type: ExternalType byte asPointerType
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> lpReserved2: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPRESERVED2 put: anObject getHandle
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> lpReserved: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPRESERVED put: anObject getHandle
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> lpTitle [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPTITLE) type: ExternalType char asPointerType
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> lpTitle: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPTITLE put: anObject getHandle
]

{ #category : 'testing' }
WinStartupInfo >> title [

	^self lpTitle
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> wShowWindow [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_WSHOWWINDOW
]

{ #category : 'accessing - structure variables' }
WinStartupInfo >> wShowWindow: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_WSHOWWINDOW put: anObject
]

{ #category : 'testing' }
WinStartupInfo >> wasStartedFromAShortcut [
	"Return true when an executable has been started via a short-cut."

	^STARTF_TITLESHORTCUT = (self dwFlags & STARTF_TITLESHORTCUT)
]
