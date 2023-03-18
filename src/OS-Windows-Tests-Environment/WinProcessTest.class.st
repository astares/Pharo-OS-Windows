"
Tests for the native windows OS process wrappers.

Instance Variables
	vmProcess:		<WinProcess>

vmProcess
	- the native VM OS process of the windows virtual machine

"
Class {
	#name : #WinProcessTest,
	#superclass : #WindowsSpecificTest,
	#instVars : [
		'vmProcess'
	],
	#pools : [
		'WinBaseConstants'
	],
	#category : #'OS-Windows-Tests-Environment-Processing'
}

{ #category : #accessing }
WinProcessTest >> defaultTestClass [

	^WinProcess
]

{ #category : #running }
WinProcessTest >> setUp [

	super setUp.
	vmProcess := self defaultTestClass currentProcess
]

{ #category : #running }
WinProcessTest >> tearDown [

	vmProcess := nil.
	super tearDown
]

{ #category : #tests }
WinProcessTest >> testAllProcessIdentifiers [

	self 
		assert: self defaultTestClass allProcessIdentifiers notEmpty;
		assert: (self defaultTestClass allProcessIdentifiers includes: self defaultTestClass currentProcessId)
]

{ #category : #tests }
WinProcessTest >> testCurrentProcess [

	self assert: self defaultTestClass currentProcess handle value > 0
]

{ #category : #tests }
WinProcessTest >> testCurrentProcessExitCodeWhileRunning [

	self assert: WinProcess currentProcess getExitCode equals: STILL_ACTIVE
]

{ #category : #tests }
WinProcessTest >> testCurrentProcessId [

	self assert: self defaultTestClass currentProcessId > 0
]

{ #category : #tests }
WinProcessTest >> testCurrentProcessIsRunning [

	self assert: WinProcess currentProcess isRunning
]

{ #category : #tests }
WinProcessTest >> testGetVMModuleHandle [

	| handle |
	handle := WinProcess getVMModuleHandle.
	self
		assert: handle notNil;
		assert: handle getHandle value > 0
]

{ #category : #tests }
WinProcessTest >> testIsRunningUnderWOW64 [
	"Pharo is still a 32 bit app running under WOW64 on 64 bit systems. We assume running on a 64 bit machine here"
	
	self assert: WinProcess currentProcess isWow64Process 
	
]

{ #category : #tests }
WinProcessTest >> testPriorityClasses [

	self assert: self defaultTestClass currentProcess getPriorityClass isInteger
]

{ #category : #tests }
WinProcessTest >> testStartAndTerminateCommandShell [

	|processInfo process | 
	processInfo := self defaultTestClass createProcess: 'cmd.exe'.
	process := processInfo process.
	self assert: process notNil.
	processInfo process terminateProcessWithExitCode: 0
 
]

{ #category : #tests }
WinProcessTest >> testStartedFromShortcut [

	self assert: (self defaultTestClass startupInfo wasStartedFromAShortcut isKindOf: Boolean)	
]

{ #category : #tests }
WinProcessTest >> testStartupInfo [

	self assert: (self defaultTestClass startupInfo) notNil
	
]
