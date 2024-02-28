"
Standard native clipboard format for Software Arts' Data Interchange Format (CF_DIF)
"
Class {
	#name : 'WinClipboardDIFFormat',
	#superclass : 'WinStandardClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardDIFFormat class >> formatSymbol [

	^ #CF_DIF
]
