"
SUnit tests for WinDebugger
"
Class {
	#name : 'WinDebuggerTest',
	#superclass : 'WindowsSpecificTest',
	#category : 'OS-Windows-Core-Tests-Debugging',
	#package : 'OS-Windows-Core-Tests',
	#tag : 'Debugging'
}

{ #category : 'tests' }
WinDebuggerTest >> testIsAbleToOutputDebugString [
	self
		shouldnt: [ WinDebugger outputDebugString: 'Test Case' ]
		raise: Exception
		description: 'Not possible to write windows debug stream'
]

{ #category : 'tests' }
WinDebuggerTest >> testIsDebuggerPresent [
	"Usually there is no debugger attached to the Pharo VM process"

	self deny: WinDebugger isDebuggerPresent
]
