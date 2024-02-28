"
Native clipboard format start of a range of integer values for application-defined GDI object clipboard formats (CF_GDIOBJFIRST)
"
Class {
	#name : 'WinClipboardGDIObjectFirstFormat',
	#superclass : 'WinStandardClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardGDIObjectFirstFormat class >> formatSymbol [

	^ #CF_GDIOBJFIRST
]
