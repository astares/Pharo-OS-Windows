"
LDAP Interface for Windows
"
Class {
	#name : #WinLDAP,
	#superclass : #Object,
	#instVars : [
		'ldapHandle'
	],
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-LDAP-Base'
}

{ #category : #'private - primitives' }
WinLDAP class >> ldapOpenHost: hostname port: portNumber [

	^self ffiCall: #(
		long ldap_open (
			char* hostname, 
			long portNumber)) module: #Wldap32


]

{ #category : #'private - primitives' }
WinLDAP class >> ldapResult: handle messageID: msgid searchResults: all timeout: timeout message: resultMessage [

	^self ffiCall: #(
		long ldap_result (
			long handle,
			LONG msgid,
			WinLDAPTimeout* timeout,
			char* resultMessage)) module: #Wldap32


]

{ #category : #'private - primitives' }
WinLDAP class >> ldapSimpleBind: handle username: dn password: password [

	^self ffiCall: #(
		long ldap_simple_bind (
			long handle,
			char* dn,
			char* password)) module: #Wldap32


]

{ #category : #'private - primitives' }
WinLDAP class >> ldapUnbind: handle [
	"Frees resources associated with an LDAP session."
	
	^self ffiCall: #(ulong ldap_unbind(long handle)) module: #Wldap32


]

{ #category : #connecting }
WinLDAP class >> openHost: hostname port: portNumber [
	"Open a connection on the given hostname and port and returns a handle.
	 Better use classes like WinLDAPConnection directly."
	
	|handle|
	handle := self ldapOpenHost: hostname port: portNumber.
	handle = 0 ifTrue: [ ^WinLDAPUnableToConnect signal ].
	^handle
]

{ #category : #private }
WinLDAP class >> unbind: aHandle [

	(self ldapUnbind: aHandle) = 0 ifFalse: [ self error: 'Not possible to unbind: bad parameter' ]
]
