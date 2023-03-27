"
Native clipboard format for (CF_ENHMETAFILE)
"
Class {
	#name : #WinClipboardEnhancedMetafileFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardEnhancedMetafileFormat class >> formatSymbol [

	^ #CF_ENHMETAFILE
]
