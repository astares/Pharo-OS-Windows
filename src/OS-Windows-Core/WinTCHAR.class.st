"
A Win32 character string that can be used to describe ANSI, DBCS, or Unicode strings

Depending on context, acts either as char or wchar
"
Class {
	#name : #WinTCHAR,
	#superclass : #FFIExternalType,
	#category : #'OS-Windows-Core-Types'
}

{ #category : #converting }
WinTCHAR class >> asExternalTypeOn: generator [

	^(generator optionAt: #WinUnicode) 
		ifTrue: [ 'wchar_t' asExternalTypeOn: generator ]
		ifFalse: [ #uchar asExternalTypeOn: generator ]

]
