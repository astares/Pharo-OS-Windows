"
SUnit tests for WinSystemTime
"
Class {
	#name : #WinSystemTimeTest,
	#superclass : #WindowsSpecificTest,
	#instVars : [
		'localTime'
	],
	#category : #'OS-Windows-Core-Tests-Base'
}

{ #category : #running }
WinSystemTimeTest >> setUp [

	super setUp.
	localTime := WinSystemTime localTime
]

{ #category : #running }
WinSystemTimeTest >> tearDown [
	localTime := nil.
	super tearDown 

]

{ #category : #'tests - fields' }
WinSystemTimeTest >> testDay [

	self assert: localTime day < 32
	
]

{ #category : #'tests - fields' }
WinSystemTimeTest >> testDayOfWeek [

	self assert: localTime dayOfWeek < 7
]

{ #category : #'tests - fields' }
WinSystemTimeTest >> testHour [

	self assert: localTime hour < 24
]

{ #category : #'tests - fields' }
WinSystemTimeTest >> testLocalTime [

	self assert: WinSystemTime localTime notNil
]

{ #category : #'tests - fields' }
WinSystemTimeTest >> testMilliseconds [

	self assert: localTime milliseconds > 0
]

{ #category : #'tests - fields' }
WinSystemTimeTest >> testMinute [

	self assert: localTime minute < 60
]

{ #category : #'tests - fields' }
WinSystemTimeTest >> testMonth [

	self assert: localTime month < 13
]

{ #category : #'tests - fields' }
WinSystemTimeTest >> testSecond [

	self assert: localTime second < 60
]

{ #category : #'tests - fields' }
WinSystemTimeTest >> testSystemTime [

	self assert: WinSystemTime systemTime notNil
]

{ #category : #'tests - fields' }
WinSystemTimeTest >> testYear [

	self assert: localTime year > 2014
	
]
