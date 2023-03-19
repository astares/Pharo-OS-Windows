"
SUnit tests for WinPoint
"
Class {
	#name : #WinPointTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-UI-Tests-Graphics-Support'
}

{ #category : #accessing }
WinPointTest >> defaultTestClass [

	^WinPoint
]

{ #category : #tests }
WinPointTest >> testConversionToPoint [

	self assert: (self defaultTestClass x: 1 y: 2) asPoint equals: (1@2)
]

{ #category : #tests }
WinPointTest >> testInstanceCreation [

	|instance|
	instance := self defaultTestClass x: 1 y: 2.
	self
		assert: instance x equals: 1;
		assert: instance y equals: 2
]

{ #category : #tests }
WinPointTest >> testInstanceCreationFromPoint [

	|instance|
	instance := self defaultTestClass fromPoint: 1@2.
	self
		assert: instance x equals: 1;
		assert: instance y equals: 2
]
