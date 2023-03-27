"
Standard native Unicode text clipboard format (CF_UNICODETEXT)
"
Class {
	#name : #WinClipboardUnicodeTextFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : #'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardUnicodeTextFormat class >> formatSymbol [

	^ #CF_UNICODETEXT
]
