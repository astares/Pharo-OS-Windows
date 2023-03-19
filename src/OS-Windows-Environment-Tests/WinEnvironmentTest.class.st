"
SUnit tests for WinEnvironment
"
Class {
	#name : #WinEnvironmentTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-Environment-Tests-Environment'
}

{ #category : #tests }
WinEnvironmentTest >> testComputerName [

	self assert: WinEnvironment getComputerName notEmpty
]

{ #category : #tests }
WinEnvironmentTest >> testGetHomeDrive [
	"Usually the home drive is C:"

	self assert: WinEnvironment getHomeDrive = 'C:'
]

{ #category : #tests }
WinEnvironmentTest >> testGetSystemDrive [
	"Usually the system drive where Windows is installed is C:"

	self assert: WinEnvironment getSystemDrive = 'C:'
]

{ #category : #tests }
WinEnvironmentTest >> testNumberOfProcessors [

	self assert: WinEnvironment getNumberOfProcessors asInteger > 0
]

{ #category : #tests }
WinEnvironmentTest >> testPathEntries [

	self assert: WinEnvironment getPathEntries isCollection
]

{ #category : #tests }
WinEnvironmentTest >> testUptime [

	self assert: WinEnvironment getComputerUptime > 0 seconds
]

{ #category : #tests }
WinEnvironmentTest >> testUserName [

	self assert: WinEnvironment getUserName notEmpty
]
