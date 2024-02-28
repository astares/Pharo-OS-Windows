"
SUnit tests for WinWindow
"
Class {
	#name : 'WinWindowTest',
	#superclass : 'WindowsSpecificTest',
	#instVars : [
		'window'
	],
	#category : 'OS-Windows-UI-Tests-Desktop',
	#package : 'OS-Windows-UI-Tests',
	#tag : 'Desktop'
}

{ #category : 'private - utilities' }
WinWindowTest >> checkValidWindow: aWindow [

	self assert: aWindow notNil.
	self assert: aWindow getHandle asInteger > 0
]

{ #category : 'accessing' }
WinWindowTest >> defaultTestClass [

	^WinWindow
]

{ #category : 'running' }
WinWindowTest >> setUp [

	super setUp.
	window := WinWindow activeWindow
]

{ #category : 'running' }
WinWindowTest >> tearDown [

	window := nil.
	super tearDown
]

{ #category : 'tests - default instances' }
WinWindowTest >> testActiveWindow [

	self checkValidWindow: self defaultTestClass activeWindow
]

{ #category : 'tests - other' }
WinWindowTest >> testAddingToSet [
	| set |
	set := Set new.
	set add: WinWindow desktopWindow.
	set add: WinWindow desktopWindow.
	self assert: set size equals: 1
]

{ #category : 'tests - default instances' }
WinWindowTest >> testCaptureWindow [

	self assert: self defaultTestClass captureWindow getHandle asInteger equals: 0
]

{ #category : 'tests - default instances' }
WinWindowTest >> testClipboardOwnerWindow [

	| win |
	win := self defaultTestClass clipboardOwnerWindow.
	win getHandle asInteger > 0 ifTrue: [ "we can not assume that someone used the clipboard from Pharo already, if so test"
		self checkValidWindow: win ]
]

{ #category : 'tests - default instances' }
WinWindowTest >> testClipboardViewerWindow [

	| win |
	win := self defaultTestClass clipboardViewerWindow.
	win getHandle asInteger > 0 ifTrue: [ "we can not assume that someone used the clipboard from Pharo already, if so test"
		self checkValidWindow: win ]
]

{ #category : 'tests - other' }
WinWindowTest >> testComparision [
	self
		assert: self defaultTestClass activeWindow
		equals: self defaultTestClass activeWindow
]

{ #category : 'tests - other' }
WinWindowTest >> testComparisionDesktopWindow [
	self
		assert: self defaultTestClass desktopWindow
		equals: self defaultTestClass desktopWindow
]

{ #category : 'tests - other' }
WinWindowTest >> testCorrectHash [

	self
		assert: WinWindow desktopWindow hash
		identicalTo: WinWindow desktopWindow hash
]

{ #category : 'tests - default instances' }
WinWindowTest >> testDesktopWindow [

	self checkValidWindow: self defaultTestClass desktopWindow
]

{ #category : 'tests - default instances' }
WinWindowTest >> testFocusWindow [

	self checkValidWindow: self defaultTestClass focusWindow
]

{ #category : 'tests - default instances' }
WinWindowTest >> testForegroundWindow [

	self checkValidWindow: self defaultTestClass focusWindow
]

{ #category : 'tests - default instances' }
WinWindowTest >> testPharoWindow [

	self assert: self defaultTestClass pharoWindow isVisible
]

{ #category : 'tests - default instances' }
WinWindowTest >> testWindowFromPoint [

	self checkValidWindow: (self defaultTestClass windowFromPoint: (WinPoint x: 0 y: 0))
]
