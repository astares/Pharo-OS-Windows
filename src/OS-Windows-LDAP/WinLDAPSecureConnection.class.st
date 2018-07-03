"
Represents a connection for LDAP over SSL
"
Class {
	#name : #WinLDAPSecureConnection,
	#superclass : #WinLDAPConnection,
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-LDAP-Base'
}

{ #category : #defaults }
WinLDAPSecureConnection class >> defaultPort [

	^636
]
