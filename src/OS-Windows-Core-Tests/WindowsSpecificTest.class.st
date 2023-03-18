"
Subclasses represent tests that only run on Windows operating systems
"
Class {
	#name : #WindowsSpecificTest,
	#superclass : #TestCase,
	#category : #'OS-Windows-Core-Tests-Common'
}

{ #category : #testing }
WindowsSpecificTest class >> isAbstract [
  	"only run test subclasses on Windows"

	^(self name = #WindowsSpecificTest)
		or: [ Smalltalk os isWindows not ]
]
