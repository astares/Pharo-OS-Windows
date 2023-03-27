"
Standard native device independent bitmap (DIB) clipboard format (CF_DIB)
"
Class {
	#name : #WinClipboardDIBFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardDIBFormat class >> formatSymbol [

	^ #CF_DIB
]
