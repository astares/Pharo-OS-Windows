"
Instance represent a native menu of the underlying Windows OS platform
"
Class {
	#name : 'WinMenu',
	#superclass : 'WinWindow',
	#pools : [
		'WinBaseConstants',
		'WinTypes'
	],
	#category : 'OS-Windows-UI-Desktop',
	#package : 'OS-Windows-UI',
	#tag : 'Desktop'
}

{ #category : 'accessing' }
WinMenu >> getMenuItemCount [
	"Determines the number of items in the specified menu"

	^self ffiCall: #(int GetMenuItemCount(HMENU self)) module: #user32
]
