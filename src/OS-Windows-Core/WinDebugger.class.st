"
Provides access to the windows debug stream

You should install 

  dbmon.exe from the Windows SDK to use methods like #outputDebugString:
"
Class {
	#name : #WinDebugger,
	#superclass : #Object,
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-Core-Debugging'
}

{ #category : #testing }
WinDebugger class >> isDebuggerPresent [
	"Indicates whether the calling process is running under the context of a debugger."	

	^self ffiCall: #(BOOL IsDebuggerPresent()) module: #kernel32

]

{ #category : #testing }
WinDebugger class >> outputDebugString: lpOutputString [
	"Sends a string to the debugger for display.  Use free tools like 
		- 'DebugView' from Sysinternals or 
		- 'dbmon.exe' from Miicrosoft SDK to display"
	
	^self ffiCall: #(void OutputDebugStringA(LPCSTR lpOutputString)) module: #Kernel32
	


]
