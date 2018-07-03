"
SUnit tests for WinRectangle
"
Class {
	#name : #WinRectangleTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-Tests-UI-Graphics-Support'
}

{ #category : #accessing }
WinRectangleTest >> defaultTestClass [
	
	^WinRectangle
]

{ #category : #tests }
WinRectangleTest >> testConversionToPoint [
	
	|instance|
	instance := self defaultTestClass left: 1 right: 2 top: 3 bottom: 4.
	self assert: instance asRectangle equals: ((1@3) corner: (2@4))
]

{ #category : #tests }
WinRectangleTest >> testInstanceCreation [
	| instance |
	instance := self defaultTestClass
		left: 1
		right: 2
		top: 3
		bottom: 4.
	self
		assert: instance left equals: 1;
		assert: instance right equals: 2;
		assert: instance top equals: 3;
		assert: instance bottom equals: 4
]

{ #category : #tests }
WinRectangleTest >> testInstanceCreationFromRectangle [
	| instance |
	instance := self defaultTestClass
		fromRectangle: (1 @ 3 extent: 1 @ 1).
	self
		assert: instance left equals: 1;
		assert: instance right equals: 2;
		assert: instance top equals: 3;
		assert: instance bottom equals: 4
]
