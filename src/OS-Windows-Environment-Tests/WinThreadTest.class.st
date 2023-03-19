"
Tests for the native windows OS thread wrappers
"
Class {
	#name : #WinThreadTest,
	#superclass : #WindowsSpecificTest,
	#instVars : [
		'vmThread'
	],
	#category : #'OS-Windows-Environment-Tests-Processing'
}

{ #category : #accessing }
WinThreadTest >> defaultTestClass [

	^WinThread
]

{ #category : #running }
WinThreadTest >> setUp [

	super setUp.
	vmThread := WinThread currentThread
]

{ #category : #running }
WinThreadTest >> tearDown [

	vmThread := nil.
	super tearDown
]

{ #category : #tests }
WinThreadTest >> testCurrentThread [

	self assert: self defaultTestClass currentThread getHandle value > 0
]

{ #category : #tests }
WinThreadTest >> testCurrentThreadId [

	self assert: self defaultTestClass currentThreadId > 0
]

{ #category : #tests }
WinThreadTest >> testIsThreadAllAccess [
	"by default the main thread of the VM is not all access"

	self deny: vmThread isThreadAllAccess
]
