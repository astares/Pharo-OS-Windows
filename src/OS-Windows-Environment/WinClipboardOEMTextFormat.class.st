"
Clipboard format for Native Text format containing characters in the OEM character set. Each line ends with a carriage return/linefeed (CR-LF) combination. A null character signals the end of the data. (CF_OEMTEXT)
"
Class {
	#name : #WinClipboardOEMTextFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardOEMTextFormat class >> formatSymbol [

	^ #CF_OEMTEXT
]
