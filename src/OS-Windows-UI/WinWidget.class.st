"
Instance represent a native widget of the underlying Windows OS platform. Since widgets are windows too they have a lot in common with the real (framed) desktop windows.
"
Class {
	#name : #WinWidget,
	#superclass : #WinWindow,
	#pools : [
		'WinBaseConstants',
		'WinTypes'
	],
	#category : #'OS-Windows-UI-Desktop'
}
