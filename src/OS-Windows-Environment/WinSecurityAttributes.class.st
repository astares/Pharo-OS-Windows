"
Represents the Windows SECURITY_ATTRIBUTES structure

The SECURITY_ATTRIBUTES structure contains the security descriptor for an object and specifies whether the handle retrieved by specifying this structure is inheritable. This structure provides security settings for objects created by various functions, such as CreateFile, CreatePipe, CreateProcess, RegCreateKeyEx, or RegSaveKeyEx.
"
Class {
	#name : #WinSecurityAttributes,
	#superclass : #FFIExternalStructure,
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-Environment-Processing-Support'
}

{ #category : #'private - accessing' }
WinSecurityAttributes class >> fieldsDesc [
	" self rebuildFieldAccessors "

	^ #(
		DWORD  nLength;
    	LPVOID lpSecurityDescriptor;
    	BOOL   bInheritHandle;
		)
]

{ #category : #'accessing structure variables' }
WinSecurityAttributes >> bInheritHandle [
	"This method was automatically generated"
	^handle booleanAt: 9
]

{ #category : #'accessing structure variables' }
WinSecurityAttributes >> bInheritHandle: anObject [
	"This method was automatically generated"
	handle booleanAt: 9 put: anObject
]

{ #category : #'accessing structure variables' }
WinSecurityAttributes >> lpSecurityDescriptor [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: 5) type: ExternalType void asPointerType
]

{ #category : #'accessing structure variables' }
WinSecurityAttributes >> lpSecurityDescriptor: anObject [
	"This method was automatically generated"
	handle pointerAt: 5 put: anObject getHandle
]

{ #category : #'accessing structure variables' }
WinSecurityAttributes >> nLength [
	"This method was automatically generated"
	^handle unsignedLongAt: 1
]

{ #category : #'accessing structure variables' }
WinSecurityAttributes >> nLength: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 1 put: anObject
]
