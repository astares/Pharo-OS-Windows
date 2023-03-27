"
Native clipboard format - End of a range of integer values for private clipboard formats (CF_PRIVATELAST)
"
Class {
	#name : #WinClipboardPrivateLastFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardPrivateLastFormat class >> formatSymbol [

	^ #CF_PRIVATELAST
]
