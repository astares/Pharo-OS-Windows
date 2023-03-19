"
A windows LDAP connection
"
Class {
	#name : #WinLDAPConnection,
	#superclass : #Object,
	#instVars : [
		'handle'
	],
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-LDAP-Base'
}

{ #category : #defaults }
WinLDAPConnection class >> defaultPort [

	^389
]

{ #category : #'instance creation' }
WinLDAPConnection class >> fromHandle: aHandle [

	^(self new)
		initHandle: aHandle;
		yourself
]

{ #category : #'instance creation' }
WinLDAPConnection class >> hostname: aHostname [
	"Return a new instance of the receiver using the given hostname and standard port"

	^self hostname: aHostname port: self defaultPort
]

{ #category : #'instance creation' }
WinLDAPConnection class >> hostname: aHostname port: aPort [
	"Return a new instance of the receiver using the given hostname and port"

	^self fromHandle: (WinLDAP openHost: aHostname port: aPort)
]

{ #category : #authentication }
WinLDAPConnection >> authenticate: username passwd: password [
	self isValid ifFalse: [ ^false ].
	^WinLDAP ldapSimpleBind: self handle username: username password: password
]

{ #category : #accessing }
WinLDAPConnection >> close [

	WinLDAP unbind: self handle.
	handle := nil
]

{ #category : #accessing }
WinLDAPConnection >> handle [

	^handle
]

{ #category : #'private - initialization' }
WinLDAPConnection >> initHandle: aHandle [

	handle := aHandle
]

{ #category : #testing }
WinLDAPConnection >> isValid [

	^handle notNil
]
