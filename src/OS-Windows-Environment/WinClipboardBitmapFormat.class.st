"
Standard native bitmap clipboard format (CF_BITMAP)
"
Class {
	#name : #WinClipboardBitmapFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : 'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardBitmapFormat class >> formatSymbol [

	^ #CF_BITMAP
]
