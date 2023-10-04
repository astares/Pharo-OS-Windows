"
Provides access to windows errors
"
Class {
	#name : #WinError,
	#superclass : #Error,
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-Core-Exceptions'
}

{ #category : #accessing }
WinError class >> lastErrorCode [
	"Returns the calling thread's last-error code value"

	^ self ffiCall: #( DWORD GetLastError()) module: #kernel32
]

{ #category : #accessing }
WinError class >> lastErrorCode:  dwErrCode [
	"Sets the last-error code for the calling thread. "

	^ self ffiCall: #( VOID SetLastError(DWORD dwErrCode)) module: #kernel32
]

{ #category : #accessing }
WinError class >> lastErrorCodeMessage [

	^ 'Windows error code: ', self lastErrorCode asString
]
