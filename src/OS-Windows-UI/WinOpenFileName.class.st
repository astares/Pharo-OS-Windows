"
Wrapper for the OPENFILENAME structure
"
Class {
	#name : #WinOpenFileName,
	#superclass : #FFIExternalStructure,
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-UI-Dialogs-Support'
}

{ #category : #'private - accessing' }
WinOpenFileName class >> fieldsDesc [
	"self rebuildFieldAccessors"
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
