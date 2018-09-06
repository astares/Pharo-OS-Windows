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

{ #category : #'accessing structure variables' }
WinConsoleFont >> dwFontSize [
	"This method was automatically generated"
	^ WinConsoleCoordinates fromHandle: (handle referenceStructAt: OFFSET_DWFONTSIZE length: WinConsoleCoordinates byteSize)
]

{ #category : #'accessing structure variables' }
WinConsoleFont >> dwFontSize: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DWFONTSIZE put: anObject getHandle length: WinConsoleCoordinates byteSize
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

{ #category : #'accessing structure variables' }
WinConsoleFont >> nFont [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NFONT
]

{ #category : #'accessing structure variables' }
WinConsoleFont >> nFont: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_NFONT put: anObject
]
