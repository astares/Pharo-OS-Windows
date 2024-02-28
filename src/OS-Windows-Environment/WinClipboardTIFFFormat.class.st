"
Standard native clipboard format for Tagged-image file format (CF_TIFF)
"
Class {
	#name : 'WinClipboardTIFFFormat',
	#superclass : 'WinStandardClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardTIFFFormat class >> formatSymbol [

	^ #CF_TIFF
]
