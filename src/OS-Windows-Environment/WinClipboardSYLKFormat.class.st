"
Standard native clipboard format for Microsoft Symbolic Link format (CF_SYLK)
"
Class {
	#name : #WinClipboardSYLKFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardSYLKFormat class >> formatSymbol [

	^ #CF_SYLK
]
