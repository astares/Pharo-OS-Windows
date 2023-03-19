"
Represents an LDAPMessage structure as defined in Winldap.h

"
Class {
	#name : #WinLDAPMessage,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_CONNECTION',
		'OFFSET_CONNECTIONREFERENCED',
		'OFFSET_LM_BER',
		'OFFSET_LM_CHAIN',
		'OFFSET_LM_CHASED',
		'OFFSET_LM_EOM',
		'OFFSET_LM_MSGID',
		'OFFSET_LM_MSGTYPE',
		'OFFSET_LM_NEXT',
		'OFFSET_LM_REFERRAL',
		'OFFSET_LM_RETURNCODE',
		'OFFSET_LM_TIME',
		'OFFSET_REQUEST',
		'WinTypes'
	],
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-LDAP-Utilities'
}

{ #category : #'field definition' }
WinLDAPMessage class >> fieldsDesc [
	<script: 'self rebuildFieldAccessors'>

	^ #(
		ULONG lm_msgid;
		ULONG lm_msgtype;
		PVOID lm_ber;

		WinLDAPMessage* lm_chain;	"Point to the next result value"
		WinLDAPMessage* lm_next;		"pointer to next message"

		ULONG lm_time;

		LONG Connection;
		PVOID Request;
		ULONG lm_returncode;
		USHORT lm_referral;
		BOOLEAN lm_chased;
		BOOLEAN lm_eom;
		BOOLEAN ConnectionReferenced;
	)
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> Connection [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_CONNECTION
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> Connection: anObject [
	"This method was automatically generated"
	^handle platformLongAt: OFFSET_CONNECTION put: anObject
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> ConnectionReferenced [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_CONNECTIONREFERENCED
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> ConnectionReferenced: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_CONNECTIONREFERENCED put: anObject
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> Request [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_REQUEST) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> Request: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_REQUEST put: anObject getHandle
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_ber [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_LM_BER) type: ExternalType void asPointerType
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_ber: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LM_BER put: anObject getHandle
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_chain [
	"This method was automatically generated"
	^WinLDAPMessage fromHandle: (handle pointerAt: OFFSET_LM_CHAIN)
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_chain: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LM_CHAIN put: anObject getHandle
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_chased [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_LM_CHASED
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_chased: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_LM_CHASED put: anObject
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_eom [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_LM_EOM
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_eom: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_LM_EOM put: anObject
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_msgid [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_LM_MSGID
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_msgid: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_LM_MSGID put: anObject
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_msgtype [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_LM_MSGTYPE
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_msgtype: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_LM_MSGTYPE put: anObject
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_next [
	"This method was automatically generated"
	^WinLDAPMessage fromHandle: (handle pointerAt: OFFSET_LM_NEXT)
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_next: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_LM_NEXT put: anObject getHandle
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_referral [
	"This method was automatically generated"
	^handle unsignedShortAt: OFFSET_LM_REFERRAL
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_referral: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: OFFSET_LM_REFERRAL put: anObject
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_returncode [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_LM_RETURNCODE
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_returncode: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_LM_RETURNCODE put: anObject
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_time [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_LM_TIME
]

{ #category : #'accessing - structure variables' }
WinLDAPMessage >> lm_time: anObject [
	"This method was automatically generated"
	^handle platformUnsignedLongAt: OFFSET_LM_TIME put: anObject
]
