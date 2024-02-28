"
A WinStandardClipboardFormatTest is a test class for testing the behavior of WinStandardClipboardFormat
"
Class {
	#name : 'WinStandardClipboardFormatTest',
	#superclass : 'TestCase',
	#category : 'OS-Windows-Environment-Tests-Clipboard-Formats',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Clipboard-Formats'
}

{ #category : 'accessing' }
WinStandardClipboardFormatTest >> standardClipboardFormats [

	^ #( CF_BITMAP
	     CF_DIB
		  CF_DIBV5
		  CF_DIF
		  CF_DSPBITMAP
		  CF_DSPENHMETAFILE
		  CF_DSPMETAFILEPICT
		  CF_DSPTEXT
		  CF_ENHMETAFILE
		  CF_GDIOBJFIRST
		  CF_GDIOBJLAST
	     CF_HDROP
		  CF_LOCALE
		  CF_METAFILEPICT
		  CF_OEMTEXT
		  CF_OWNERDISPLAY
		  CF_PALETTE
		  CF_PENDATA
		  CF_PRIVATEFIRST
	     CF_PRIVATELAST
		  CF_RIFF
		  CF_SYLK
		  CF_TEXT
		  CF_TIFF
		  CF_UNICODETEXT
		  CF_WAVE)
]

{ #category : 'tests' }
WinStandardClipboardFormatTest >> testIsAbstract [

	self assert: WinStandardClipboardFormat isAbstract
]

{ #category : 'tests' }
WinStandardClipboardFormatTest >> testIsNotCustomFormatByDefault [

	self deny: WinStandardClipboardFormat isCustomFormat
]

{ #category : 'tests' }
WinStandardClipboardFormatTest >> testIsStandardFormatByDefault [

	self assert: WinStandardClipboardFormat isStandardFormat
]

{ #category : 'tests' }
WinStandardClipboardFormatTest >> testStandardClipboardFormats [

	WinStandardClipboardFormat allSubInstancesDo: [:each |
		self assert: (self standardClipboardFormats includes: each formatSymbol) ]
]
