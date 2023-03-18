"
Wrapper for the CONSOLE_FONT_INFO structure from wincon.h

Contains information for a console font.
"
Class {
	#name : #WinConsoleFont,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_DWFONTSIZE',
		'OFFSET_NFONT'
	],
	#pools : [
		'WinConsoleConstants',
		'WinTypes'
	],
	#category : #'OS-Windows-Environment-Console-Support'
}

{ #category : #'private accessing' }
WinConsoleFont class >> fieldsDesc [
	"self rebuildFieldAccessors"
	
	^ #(
		DWORD nFont;
		COORD dwFontSize;
		)
]

{ #category : #'private - accessing structure variables' }
WinConsoleFont >> dwFontSize [
	"This method was automatically generated"
	^WinConsoleCoordinates fromHandle: (handle referenceStructAt: 5 length: 8)
]

{ #category : #'private - accessing structure variables' }
WinConsoleFont >> dwFontSize: anObject [
	"This method was automatically generated"
	handle structAt: 5 put: anObject getHandle length: 4
]

{ #category : #accessing }
WinConsoleFont >> fontIndex [
	"Return the index of the font in the system's console font table."
	
	^self nFont
]

{ #category : #accessing }
WinConsoleFont >> fontSize [

	^(self dwFontSize x @ self dwFontSize y)
]

{ #category : #'private - accessing structure variables' }
WinConsoleFont >> nFont [
	"This method was automatically generated"
	^handle unsignedLongAt: 1
]

{ #category : #'private - accessing structure variables' }
WinConsoleFont >> nFont: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 1 put: anObject
]
