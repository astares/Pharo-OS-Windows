"
Depending on context, acts either as char* or wchar* string
"
Class {
	#name : #WinTString,
	#superclass : #FFIExternalType,
	#category : #'OS-Windows-Core-Types'
}

{ #category : #utilities }
WinTString class >> asExternalTypeOn: gen [

	^ "(gen optionAt: #WinUnicode)
		ifTrue: [ WinWideString asExternalTypeOn: gen ]
		ifFalse: [ "FFIExternalString asExternalTypeOn: gen "]"
]

{ #category : #utilities }
WinTString class >> primLstrlenA: lpString [
	"Determines the length of the specified string (not including the terminating null character)."

	^ self ffiCall: #(int lstrlen(String lpString)) module: #kernel32
]
