"
Native clipboard format - handle to a color palette. Whenever an application places data in the clipboard that depends on or assumes a color palette, it should place the palette on the clipboard as well (CF_PALETTE)
"
Class {
	#name : #WinClipboardColorPaletteFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardColorPaletteFormat class >> formatSymbol [

	^ #CF_PALETTE
]
