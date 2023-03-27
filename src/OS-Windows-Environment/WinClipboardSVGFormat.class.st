"
SVG clipboard format
"
Class {
	#name : #WinClipboardSVGFormat,
	#superclass : #WinCustomClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardSVGFormat class >> formatSymbol [

	^ #'image/svg+xml'
]

{ #category : #'class initialization' }
WinClipboardSVGFormat class >> initialize [

	self register
]
