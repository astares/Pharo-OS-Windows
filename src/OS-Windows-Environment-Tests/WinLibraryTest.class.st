"
A WinLibraryTest is a test class for testing the behavior of WinLibrary
"
Class {
	#name : 'WinLibraryTest',
	#superclass : 'TestCase',
	#category : 'OS-Windows-Environment-Tests-Processing',
	#package : 'OS-Windows-Environment-Tests',
	#tag : 'Processing'
}

{ #category : 'running' }
WinLibraryTest >> testLoadLibrary [

	| lib |
	lib := WinLibrary fromLibraryClass: TFTestLibraryUsingSameThreadRunner.
	self assert: lib getHandle isNull not
]

{ #category : 'running' }
WinLibraryTest >> testReloadLibrary [
	"reload the lib test"

	| lib calls |
	lib := WinLibrary fromLibraryClass: TFTestLibraryUsingSameThreadRunner.
	self assert: lib getHandle isNull not.
	lib reloadLibrary.
	calls := lib findCalls asArray.
	calls do: [ :c |
		self
			assert: (c methodClass lookupSelector: c selector) sourceCode
			equals: (c propertyAt: #ffiNonCompiledMethod) sourceCode ]
]

{ #category : 'running' }
WinLibraryTest >> testUnLoadLibrary [

	| lib |
	lib := WinLibrary fromLibraryClass:
		       TFTestLibraryUsingSameThreadRunner. 
	self assert: lib getHandle isNull not.
	lib freeLibrary.
	self assert: lib getHandle isNull.
	lib loadLibrary
]
