"
Native clipboard format for (CF_ENHMETAFILE)
"
Class {
	#name : 'WinClipboardEnhancedMetafileFormat',
	#superclass : 'WinStandardClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardEnhancedMetafileFormat class >> formatSymbol [

	^ #CF_ENHMETAFILE
]
