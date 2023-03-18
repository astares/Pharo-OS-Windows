"
SUnit tests for WinConsole
"
Class {
	#name : #WinConsoleTest,
	#superclass : #WindowsSpecificTest,
	#instVars : [
		'stdoutConsole'
	],
	#pools : [
		'WinBaseConstants'
	],
	#category : #'OS-Windows-Environment-Tests-Console'
}

{ #category : #accessing }
WinConsoleTest >> defaultTestClass [

	^WinConsole
]

{ #category : #running }
WinConsoleTest >> setUp [ 

	super setUp.
	stdoutConsole := self defaultTestClass createOutputConsoleForCurrentProcess
]

{ #category : #running }
WinConsoleTest >> tearDown [

	stdoutConsole := nil.
	self defaultTestClass reset.
	super tearDown. 
	"Give windows enough time to close the window - otherwise it will affect other tests (like WinWindowsTest)"
	(Delay forMilliseconds: 10) wait
]

{ #category : #tests }
WinConsoleTest >> testConsoleSize [

	self assert: stdoutConsole screenBuffer size species = Point
]

{ #category : #tests }
WinConsoleTest >> testCursorHasSize [

	self assert: stdoutConsole cursor size isInteger
]

{ #category : #tests }
WinConsoleTest >> testCursorIsVisibleByDefault [

	self assert: stdoutConsole cursor isVisible
]

{ #category : #tests }
WinConsoleTest >> testCursorSettingSize [

	|size|
	size := 100.
	stdoutConsole cursorSize: size.
	self assert: stdoutConsole cursor size equals: size
]

{ #category : #tests }
WinConsoleTest >> testFontSize [

	self assert: stdoutConsole font fontSize isPoint
]

{ #category : #tests }
WinConsoleTest >> testIsConsoleType [

	| fileType |
	fileType := WinConsole getFileType:
		            (WinHandle fromExternalHandle: stdoutConsole getHandle).
	self assert: fileType = FILE_TYPE_CHAR "The specified file is a character file, typically an LPT device or a console."
]
