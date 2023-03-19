"
Wrapper for the OPENFILENAME structure
"
Class {
	#name : #WinOpenFileName,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_DWRESERVED',
		'OFFSET_FLAGS',
		'OFFSET_FLAGSEX',
		'OFFSET_HINSTANCE',
		'OFFSET_HWNDOWNER',
		'OFFSET_LCUSTDATA',
		'OFFSET_LPFNHOOK',
		'OFFSET_LPSTRCUSTOMFILTER',
		'OFFSET_LPSTRDEFEXT',
		'OFFSET_LPSTRFILE',
		'OFFSET_LPSTRFILETITLE',
		'OFFSET_LPSTRFILTER',
		'OFFSET_LPSTRINITIALDIR',
		'OFFSET_LPSTRTITLE',
		'OFFSET_LPTEMPLATENAME',
		'OFFSET_LSTRUCTSIZE',
		'OFFSET_NFILEEXTENSION',
		'OFFSET_NFILEOFFSET',
		'OFFSET_NFILTERINDEX',
		'OFFSET_NMAXCUSTFILTER',
		'OFFSET_NMAXFILE',
		'OFFSET_NMAXFILETITLE',
		'OFFSET_PVRESERVED'
	],
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-UI-Dialogs-Support'
}

{ #category : #'field definition' }
WinOpenFileName class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>

	^ #(
		 DWORD         lStructSize;
	 	 HWND          hwndOwner;
  		 HINSTANCE     hInstance;
   		 LPCTSTR       lpstrFilter;
  		 LPTSTR        lpstrCustomFilter;
  		 DWORD         nMaxCustFilter;
  		 DWORD         nFilterIndex;
  		 LPTSTR        lpstrFile;
  		 DWORD         nMaxFile;
  		 LPTSTR        lpstrFileTitle;
  		 DWORD         nMaxFileTitle;
  		 LPCTSTR       lpstrInitialDir;
  		 LPCTSTR       lpstrTitle;
  		 DWORD         Flags;
  		 WORD          nFileOffset;
  		 WORD          nFileExtension;
  		 LPCTSTR       lpstrDefExt;
  		 LPARAM        lCustData;
  		 LPOFNHOOKPROC lpfnHook;
  		 LPCTSTR       lpTemplateName;
		 void          *pvReserved;
  		 DWORD         dwReserved;
  		 DWORD         FlagsEx;
	)
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> Flags [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_FLAGS
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> Flags: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_FLAGS put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> FlagsEx [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_FLAGSEX
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> FlagsEx: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_FLAGSEX put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> dwReserved [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWRESERVED
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> dwReserved: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWRESERVED put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> hInstance [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HINSTANCE)
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> hInstance: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HINSTANCE put: anObject value
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> hwndOwner [
	"This method was automatically generated"
	^WinWindow fromInteger: (handle unsignedLongAt: OFFSET_HWNDOWNER)
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> hwndOwner: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HWNDOWNER put: anObject value
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lCustData [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_LCUSTDATA
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lCustData: anObject [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_LCUSTDATA put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lStructSize [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_LSTRUCTSIZE
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lStructSize: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_LSTRUCTSIZE put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpTemplateName [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPTEMPLATENAME) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpTemplateName: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPTEMPLATENAME put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpfnHook [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_LPFNHOOK
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpfnHook: anObject [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_LPFNHOOK put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrCustomFilter [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPSTRCUSTOMFILTER) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrCustomFilter: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPSTRCUSTOMFILTER put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrDefExt [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPSTRDEFEXT) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrDefExt: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPSTRDEFEXT put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrFile [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPSTRFILE) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrFile: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPSTRFILE put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrFileTitle [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPSTRFILETITLE) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrFileTitle: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPSTRFILETITLE put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrFilter [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPSTRFILTER) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrFilter: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPSTRFILTER put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrInitialDir [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPSTRINITIALDIR) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrInitialDir: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPSTRINITIALDIR put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrTitle [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LPSTRTITLE) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> lpstrTitle: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LPSTRTITLE put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nFileExtension [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_NFILEEXTENSION
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nFileExtension: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_NFILEEXTENSION put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nFileOffset [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_NFILEOFFSET
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nFileOffset: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_NFILEOFFSET put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nFilterIndex [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NFILTERINDEX
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nFilterIndex: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NFILTERINDEX put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nMaxCustFilter [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NMAXCUSTFILTER
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nMaxCustFilter: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NMAXCUSTFILTER put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nMaxFile [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NMAXFILE
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nMaxFile: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NMAXFILE put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nMaxFileTitle [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NMAXFILETITLE
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> nMaxFileTitle: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NMAXFILETITLE put: anObject
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> pvReserved [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_PVRESERVED) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
WinOpenFileName >> pvReserved: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_PVRESERVED put: anObject getHandle.
]
