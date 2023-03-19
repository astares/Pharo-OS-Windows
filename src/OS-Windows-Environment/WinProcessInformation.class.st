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

{ #category : #'field definition' }
WinProcessInformation class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>

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
	^handle platformUnsignedLongAt: OFFSET_DWPROCESSID
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> dwProcessId: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWPROCESSID put: anObject
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> dwThreadId [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWTHREADID
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> dwThreadId: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_DWTHREADID put: anObject
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> hProcess [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HPROCESS)
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> hProcess: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HPROCESS put: anObject value
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> hThread [
	"This method was automatically generated"
	^WinHandle fromInteger: (handle unsignedLongAt: OFFSET_HTHREAD)
]

{ #category : #'accessing structure variables' }
WinProcessInformation >> hThread: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_HTHREAD put: anObject value
]

{ #category : #accessing }
WinProcessInformation >> process [

	^WinProcess new setHandle: self hProcess getHandle
]

{ #category : #accessing }
WinProcessInformation >> processId [
	"Return the process ID (the one you see in Task manager)"

	^WinProcess getProcessId: self hProcess
]
