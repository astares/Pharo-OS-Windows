Extension { #name : #Duration }

{ #category : #'*OS-Windows-LDAP' }
Duration >> asLDAPTimeOut [
	^WinLDAPTimeInterval duration: self 
]
