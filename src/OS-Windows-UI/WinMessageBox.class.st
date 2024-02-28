"
Represents a native windows message box
"
Class {
	#name : 'WinMessageBox',
	#superclass : 'Object',
	#pools : [
		'WinBaseConstants',
		'WinTypes',
		'WinUserConstants'
	],
	#category : 'OS-Windows-UI-Dialogs',
	#package : 'OS-Windows-UI',
	#tag : 'Dialogs'
}

{ #category : 'primitives' }
WinMessageBox class >> messageBox: hWnd text: lpText title: lpCaption flags: uType [

	^ self ffiCall: #(int MessageBoxA(
  			HWND hWnd,
    		LPCTSTR  lpText,
    		LPCTSTR  lpCaption,
      		UINT uType
		)) module: #user32
]

{ #category : 'examples' }
WinMessageBox class >> test [

	self messageBox: WinWindow focusWindow text: 'Hello from Pharo' title: 'Pharo' flags: MB_YESNO
]
