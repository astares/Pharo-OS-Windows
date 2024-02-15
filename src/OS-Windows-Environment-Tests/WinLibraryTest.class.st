"
A WinLibraryTest is a test class for testing the behavior of WinLibrary
"
Class {
	#name : #WinLibraryTest,
	#superclass : #TestCase,
	#category : #'OS-Windows-Environment-Tests-Processing'
}

{ #category : #running }
WinLibraryTest >> setUp [

	super setUp.
]

{ #category : #running }
WinLibraryTest >> tearDown [

	super tearDown
]

{ #category : #running }
WinLibraryTest >> testLoadLibrary [

	| lib |
	lib := WinLibrary fromLibraryClass: TFTestLibraryUsingSameThreadRunner.
	self assert: lib getHandle isNull not
]

{ #category : #running }
WinLibraryTest >> testUnLoadLibrary [

	| lib |
	lib := WinLibrary fromLibraryClass:
		       TFTestLibraryUsingSameThreadRunner. 
	self assert: lib getHandle isNull not.
	lib freeLibrary.
	self assert: lib getHandle isNull.
	lib loadLibrary
]
