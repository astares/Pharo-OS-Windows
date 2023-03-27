"
Native clipboard format - Start of a range of integer values for private clipboard formats (CF_PRIVATEFIRST)
"
Class {
	#name : #WinClipboardPrivateFirstFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardPrivateFirstFormat class >> formatSymbol [

	^ #CF_PRIVATEFIRST
]
