"
SUnit tests specific for WinLDAP
"
Class {
	#name : #WinLDAPTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-LDAP-Tests-Base'
}

{ #category : #tests }
WinLDAPTest >> testBadUnbindOfConnection [

	self should: [ WinLDAP unbind: 0 ] raise: Error
]
