"
Native clipboard format end of a range of integer values for application-defined GDI object clipboard formats (CF_GDIOBJLAST)
"
Class {
	#name : 'WinClipboardGDIObjectLastFormat',
	#superclass : 'WinStandardClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardGDIObjectLastFormat class >> formatSymbol [

	^ #CF_GDIOBJLAST
]
