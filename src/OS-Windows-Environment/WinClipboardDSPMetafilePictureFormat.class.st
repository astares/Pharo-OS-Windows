"
Native clipboard format for Metafile-picture display format associated with a private format (CF_DSPMETAFILEPICT)
"
Class {
	#name : 'WinClipboardDSPMetafilePictureFormat',
	#superclass : 'WinStandardClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardDSPMetafilePictureFormat class >> formatSymbol [

	^ #CF_DSPMETAFILEPICT
]
