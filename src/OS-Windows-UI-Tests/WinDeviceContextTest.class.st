"
Test for the windows device context
"
Class {
	#name : 'WinDeviceContextTest',
	#superclass : 'WindowsSpecificTest',
	#category : 'OS-Windows-UI-Tests-Graphics',
	#package : 'OS-Windows-UI-Tests',
	#tag : 'Graphics'
}

{ #category : 'private - utilities' }
WinDeviceContextTest >> checkValidDeviceContext: aDeviceContext [

	self assert: aDeviceContext notNil.
	self assert: aDeviceContext getHandle asInteger > 0
]

{ #category : 'accessing' }
WinDeviceContextTest >> defaultTestClass [

	^ WinDeviceContext
]

{ #category : 'tests' }
WinDeviceContextTest >> testAccessingDesktopDeviceContext [

	self checkValidDeviceContext: self defaultTestClass desktopDeviceContext
]

{ #category : 'tests' }
WinDeviceContextTest >> testAccessingDeviceContextOfActiveWindow [

	self checkValidDeviceContext: WinWindow activeWindow deviceContext
]

{ #category : 'tests' }
WinDeviceContextTest >> testAccessingDeviceContextOfFocusWindow [

	self checkValidDeviceContext: WinWindow focusWindow deviceContext
]

{ #category : 'tests' }
WinDeviceContextTest >> testAccessingDeviceContextOfPharoWindow [

	self checkValidDeviceContext: WinWindow pharoWindow deviceContext
]

{ #category : 'tests' }
WinDeviceContextTest >> testAccessingPharoWindowDeviceContext [

	self checkValidDeviceContext: self defaultTestClass pharoWindowDeviceContext
]
