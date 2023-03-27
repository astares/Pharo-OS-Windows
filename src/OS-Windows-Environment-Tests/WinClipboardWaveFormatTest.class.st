"
A WinClipboardWaveFormatTest is a test class for testing the behavior of WinClipboardWaveFormat
"
Class {
	#name : #WinClipboardWaveFormatTest,
	#superclass : #TestCase,
	#pools : [
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Clipboard-Formats'
}

{ #category : #tests }
WinClipboardWaveFormatTest >> testFormatFromID [

	self assert: (WinClipboardFormat formatFromID: CF_WAVE) equals: WinClipboardWaveFormat
]

{ #category : #tests }
WinClipboardWaveFormatTest >> testFormatID [

	self assert: WinClipboardWaveFormat formatID equals: CF_WAVE.
	self assert: WinClipboardWaveFormat formatID equals: 12
]

{ #category : #tests }
WinClipboardWaveFormatTest >> testGeneral [

	self
		assert: WinClipboardWaveFormat isStandardFormat;
		deny: WinClipboardWaveFormat isCustomFormat
]
