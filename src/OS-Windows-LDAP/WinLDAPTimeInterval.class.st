"
Represents the l_timeval interval structure
"
Class {
	#name : #WinLDAPTimeInterval,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_TV_SEC',
		'OFFSET_TV_USEC'
	],
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-LDAP-Utilities'
}

{ #category : #'instance creation' }
WinLDAPTimeInterval class >> duration: aDuration [

	^(self new)
		seconds: aDuration asSeconds;
		yourself
]

{ #category : #'field definition' }
WinLDAPTimeInterval class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>
	
	^ #(
		LONG tv_sec;
		LONG tv_usec
	)
]

{ #category : #accessing }
WinLDAPTimeInterval >> seconds [ 

	^self tv_sec 
]

{ #category : #accessing }
WinLDAPTimeInterval >> seconds: numberOfSeconds [

	self tv_sec: numberOfSeconds 
]

{ #category : #'accessing structure variables' }
WinLDAPTimeInterval >> tv_sec [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_TV_SEC
]

{ #category : #'accessing structure variables' }
WinLDAPTimeInterval >> tv_sec: anObject [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_TV_SEC put: anObject
]

{ #category : #'accessing structure variables' }
WinLDAPTimeInterval >> tv_usec [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_TV_USEC
]

{ #category : #'accessing structure variables' }
WinLDAPTimeInterval >> tv_usec: anObject [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_TV_USEC put: anObject
]
