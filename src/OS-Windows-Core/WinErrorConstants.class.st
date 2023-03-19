"
Error constants defined in WinError.h
"
Class {
	#name : #WinErrorConstants,
	#superclass : #SharedPool,
	#classVars : [
		'ERROR_ACCESS_DENIED',
		'ERROR_ARENA_TRASHED',
		'ERROR_FILE_NOT_FOUND',
		'ERROR_INVALID_FUNCTION',
		'ERROR_INVALID_HANDLE',
		'ERROR_NOT_ENOUGH_MEMORY',
		'ERROR_PATH_NOT_FOUND',
		'ERROR_SUCCESS',
		'ERROR_TOO_MANY_OPEN_FILES'
	],
	#category : #'OS-Windows-Core-Support'
}

{ #category : #accessing }
WinErrorConstants class >> errorNameFromNumber: errorNumber [
	^ self classPool keyAtValue: errorNumber
]

{ #category : #'private - initialization' }
WinErrorConstants class >> initSystemErrorCodes [

	ERROR_SUCCESS := 16r0.	        			"The operation completed successfully."
	ERROR_INVALID_FUNCTION := 16r1.  			"Incorrect function."
	ERROR_FILE_NOT_FOUND := 16r2.	 			"The system cannot find the file specified."
	ERROR_PATH_NOT_FOUND := 16r3.				"The system cannot find the path specified."
	ERROR_TOO_MANY_OPEN_FILES := 16r4.		"The system cannot open the file."
	ERROR_ACCESS_DENIED := 16r5.				"Access is denied"
	ERROR_INVALID_HANDLE := 16r6.				"The handle is invalid."
	ERROR_ARENA_TRASHED	:= 16r7.				"The storage control blocks were destroyed."
	ERROR_NOT_ENOUGH_MEMORY := 16r8.			"Not enough storage is available to process this command."
]

{ #category : #'class initialization' }
WinErrorConstants class >> initialize [
	"Intializes the receiver"

	self initSystemErrorCodes
]
