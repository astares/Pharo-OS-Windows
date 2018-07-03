"
SUnit tests specific for WinLDAP
"
Class {
	#name : #WinLDAPTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-Tests-LDAP-Base'
}

{ #category : #tests }
WinLDAPTest >> testBadUnbindOfConnection [

	self should: [ WinLDAP unbind: 0 ] raise: Error
]
