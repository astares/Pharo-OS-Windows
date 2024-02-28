"
Native clipboard format for Bitmap display format associated with a private format (CF_DSPBITMAP)
"
Class {
	#name : 'WinClipboardDSPBitmapFormat',
	#superclass : 'WinStandardClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardDSPBitmapFormat class >> formatSymbol [

	^ #CF_DSPBITMAP
]
