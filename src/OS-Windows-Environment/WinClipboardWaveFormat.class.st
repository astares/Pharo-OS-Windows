"
Represents clipboard format with audio data in one of the standard wave formats, such as 11 kHz or 22 kHz PCM (CF_WAVE)
"
Class {
	#name : #WinClipboardWaveFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : 'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardWaveFormat class >> formatSymbol [

	^ #CF_WAVE
]
