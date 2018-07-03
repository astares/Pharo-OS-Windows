"
The PROCESS_INFORMATION structure
"
Class {
	#name : #WinProcessInformation,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_DWPROCESSID',
		'OFFSET_DWTHREADID',
		'OFFSET_HPROCESS',
		'OFFSET_HTHREAD'
	],
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-Environment-Processing-Support'
}

{ #category : #'private - accessing' }
WinProcessInformation class >> fieldsDesc [
	" self rebuildFieldAccessors "
	
	^ #(
		HANDLE hProcess;
  		HANDLE hThread;
  		DWORD  dwProcessId;
  		DWORD  dwThreadId;
		)
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> dwProcessId [
	"This method was automatically generated"
	^handle unsignedLongAt: 9
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> dwProcessId: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 9 put: anObject
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> dwThreadId [
	"This method was automatically generated"
	^handle unsignedLongAt: 13
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> dwThreadId: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 13 put: anObject
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> hProcess [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: 1)
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> hProcess: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 1 put: anObject value
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> hThread [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: 5)
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> hThread: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: 5 put: anObject value
]

{ #category : #accessing }
WinProcessInformation >> process [

	^WinProcess new setHandle: self hProcess getHandle 
]

{ #category : #accessing }
WinProcessInformation >> processId [

	^self dwProcessId
]
