"
A clipboard format with a memory object containing a BITMAPV5HEADER structure followed by the bitmap color space information and the bitmap bits (CF_DIBV5)
"
Class {
	#name : #WinClipboardDIBV5Format,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardDIBV5Format class >> formatSymbol [

	^ #CF_DIBV5
]
