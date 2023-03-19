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
