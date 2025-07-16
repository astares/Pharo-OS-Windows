"
Native Clipboard format: Data in clipboard is a handle (HGLOBAL) to the locale identifier (LCID) associated with text in the clipboard (CF_LOCALE)
"
Class {
	#name : #WinClipboardLocaleFormat,
	#superclass : #WinStandardClipboardFormat,
	#category : 'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'accessing - defaults' }
WinClipboardLocaleFormat class >> formatSymbol [

	^ #CF_LOCALE
]
