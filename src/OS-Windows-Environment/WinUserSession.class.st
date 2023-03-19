"
This class provides access to the native user session of the logged in user in Windows
"
Class {
	#name : #WinUserSession,
	#superclass : #Object,
	#pools : [
		'WinBaseConstants',
		'WinTypes'
	],
	#category : #'OS-Windows-Environment-Environment'
}

{ #category : #accessing }
WinUserSession class >> exitWindows [
	"Return an instance with a pseudohandle for the current thread."

	^ self ffiCall: #(BOOL ExitWindowsEx(0, 0)) module: #user32
]

{ #category : #'private - primitives' }
WinUserSession class >> exitWindowsEx: uFlags [
	"Either logs off, shuts down, or shuts down and restarts the system. "

	^ self ffiCall: #(BOOL ExitWindowsEx(DWORD uFlags, 0)) module: #user32
]

{ #category : #accessing }
WinUserSession class >> exitWindowsForceProcessToTerminate [

	self exitWindowsEx: 4 "EWX_FORCE"
]

{ #category : #accessing }
WinUserSession class >> lockWorkstation [
	"Locks the workstation."
	<script>

	^ self ffiCall: #(BOOL LockWorkStation(void)) module: #user32
]

{ #category : #accessing }
WinUserSession class >> shutDownComputer [
	"Returns true if successful."

	^self exitWindowsEx: 1 "EWX_SHUTDOWN"
]
