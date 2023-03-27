"
Native clipboard format for metafile picture format as defined by the METAFILEPICT structure (CF_METAFILEPICT)
"
Class {
	#name : #WinClipboardMetafilePictureFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardMetafilePictureFormat class >> formatSymbol [

	^ #CF_METAFILEPICT
]
