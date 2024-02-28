"
Native clipboard format that identifies a list of files (CF_HDROP)
"
Class {
	#name : 'WinClipboardFileDropFormat',
	#superclass : 'WinStandardClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardFileDropFormat class >> formatSymbol [

	^ #CF_HDROP
]
