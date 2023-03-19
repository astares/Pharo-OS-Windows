"
Test for WinProxy
"
Class {
	#name : #WinProxyTest,
	#superclass : #WindowsSpecificTest,
	#category : #'OS-Windows-Environment-Tests-Network'
}

{ #category : #tests }
WinProxyTest >> testIsEnabled [

	self assert: (WinProxy isEnabled isKindOf:  Boolean)
]

{ #category : #tests }
WinProxyTest >> testServerAddressWhenEnabled [

	WinProxy isEnabled ifFalse: [ ^self ].

	self assert: (WinProxy address substrings: '.') size = 4  "Regular IP address"
]

{ #category : #tests }
WinProxyTest >> testServerPortWhenEnabled [

	WinProxy isEnabled ifFalse: [ ^self ].

	self assert: WinProxy port asNumber > 0
]
