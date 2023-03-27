"
Native clipboard format - owner-display format. The clipboard owner must display and update the clipboard viewer window (CF_OWNERDISPLAY)
"
Class {
	#name : #WinClipboardOwnerDisplayFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardOwnerDisplayFormat class >> formatSymbol [

	^ #CF_OWNERDISPLAY
]
