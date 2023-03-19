"
Unit tests for WinLDAPTimeInterval
"
Class {
	#name : #WinLDAPTimeIntervalTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-LDAP-Tests-Utilities'
}

{ #category : #tests }
WinLDAPTimeIntervalTest >> testConversion [

	|timeout|
	timeout := 2 seconds asLDAPTimeOut.
	self assert: timeout seconds equals: 2
]
