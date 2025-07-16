"
HTML Clipboard format (CF_HTML)
"
Class {
	#name : #WinClipboardHTMLFormat,
	#superclass : #WinCustomClipboardFormat,
	#category : 'OS-Windows-Environment-Clipboard-Formats'
}

{ #category : #'private - accessing' }
WinClipboardHTMLFormat class >> formatHTML [

	^ 'HTML Format'
]

{ #category : #'accessing - defaults' }
WinClipboardHTMLFormat class >> formatSymbol [

	^ #CF_HTML
]

{ #category : #'class initialization' }
WinClipboardHTMLFormat class >> initialize [

	self register
]

{ #category : #registration }
WinClipboardHTMLFormat class >> register [

	self formatID: (self registerClipboardFormat: self formatHTML)
]
