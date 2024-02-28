"
Clipboard format for an enhanced metafile display format associated with a private format (CF_DSPENHMETAFILE)
"
Class {
	#name : 'WinClipboardDSPEnhancedMetafileFormat',
	#superclass : 'WinStandardClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardDSPEnhancedMetafileFormat class >> formatSymbol [

	^ #CF_DSPENHMETAFILE
]
