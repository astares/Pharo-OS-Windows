"
Native clipboard format - Data for the pen extensions to the Microsoft Windows for Pen Computing (CF_PENDATA)
"
Class {
	#name : #WinClipboardPenDataFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardPenDataFormat class >> formatSymbol [

	^ #CF_PENDATA
]
