"
Clipboard format that represents audio data more complex than can be represented in a CF_WAVE standard wave format (CF_RIFF)
"
Class {
	#name : #WinClipboardRIFFFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : 'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardRIFFFormat class >> formatSymbol [

	^ #CF_RIFF
]
