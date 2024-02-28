"
Standard native text clipboard format (CF_TEXT)
"
Class {
	#name : 'WinClipboardTextFormat',
	#superclass : 'WinStandardClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardTextFormat class >> formatSymbol [

	^ #CF_TEXT
]
