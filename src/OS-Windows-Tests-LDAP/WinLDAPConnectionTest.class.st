"
Test for WinLDAPConnection
"
Class {
	#name : #WinLDAPConnectionTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-Tests-LDAP-Base'
}

{ #category : #accessing }
WinLDAPConnectionTest class >> defaultTimeLimit [

	^2 minutes
]

{ #category : #tests }
WinLDAPConnectionTest >> testConnectToOnlineLDAPTestServer [

	| connection |
	connection := WinLDAPConnection hostname: 'ldap.forumsys.com ' port: 389.
	self assert: connection isValid.
	connection close.
	self deny: connection isValid.
]

{ #category : #tests }
WinLDAPConnectionTest >> testInvalidConnection [

	self deny: WinLDAPConnection new isValid 
]
