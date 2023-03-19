"
This pool includes constants as defined in shlwapi.h header file
"
Class {
	#name : #WinShellConstants,
	#superclass : #SharedPool,
	#classVars : [
		'OS_EMBEDDED',
		'OS_NT',
		'OS_NT4ORGREATER',
		'OS_WIN2000ADVSERVER',
		'OS_WIN2000DATACENTER',
		'OS_WIN2000ORGREATER',
		'OS_WIN2000PRO',
		'OS_WIN2000SERVER',
		'OS_WIN2000TERMINAL',
		'OS_WIN95ORGREATER',
		'OS_WIN98ORGREATER',
		'OS_WIN98_GOLD',
		'OS_WINDOWS'
	],
	#category : #'OS-Windows-Environment-Shell-Support'
}

{ #category : #'private - initialization' }
WinShellConstants class >> initOSConstants [

	OS_WINDOWS := 0.
	OS_NT := 1.
	OS_WIN95ORGREATER := 2.
	OS_NT4ORGREATER := 3.
	OS_WIN98ORGREATER := 5.
	OS_WIN98_GOLD := 6.
	OS_WIN2000ORGREATER := 7.
	OS_WIN2000PRO := 8.
	OS_WIN2000SERVER := 9.
	OS_WIN2000ADVSERVER := 10.
	OS_WIN2000DATACENTER := 11.
	OS_WIN2000TERMINAL := 12.
	OS_EMBEDDED := 13
]

{ #category : #'private - initialization' }
WinShellConstants class >> initShellConstants [
]

{ #category : #'class initialization' }
WinShellConstants class >> initialize [
	"Initializes the receiver class"

	self
		initShellConstants;
		initOSConstants
]
