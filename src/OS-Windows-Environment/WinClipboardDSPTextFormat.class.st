"
Native clipboard format for text display format associated with a private format (CF_DSPTEXT)
"
Class {
	#name : #WinClipboardDSPTextFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : 'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardDSPTextFormat class >> formatSymbol [

	^ #CF_DSPTEXT
]
