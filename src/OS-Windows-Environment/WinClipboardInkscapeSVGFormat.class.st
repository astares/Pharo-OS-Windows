"
SVG clipboard format from Inkscape drawing tool
"
Class {
	#name : 'WinClipboardInkscapeSVGFormat',
	#superclass : 'WinCustomClipboardFormat',
	#category : 'OS-Windows-Environment-Clipboard-Formats',
	#package : 'OS-Windows-Environment',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing - defaults' }
WinClipboardInkscapeSVGFormat class >> formatSymbol [

	^ #'image/x-inkscape-svg'
]

{ #category : 'class initialization' }
WinClipboardInkscapeSVGFormat class >> initialize [

	self register
]
