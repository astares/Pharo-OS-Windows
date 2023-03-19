"
Windows proxy
"
Class {
	#name : #WinProxy,
	#superclass : #Object,
	#category : #'OS-Windows-Environment-Network'
}

{ #category : #testing }
WinProxy class >> address [

	self isEnabled ifFalse: [ ^nil ].
	^(self proxyServerRegistryValue substrings: ':') first
]

{ #category : #testing }
WinProxy class >> isEnabled [
	"Return true if a proxy is enabled"

	^self proxyEnabledRegistryValue = 1
]

{ #category : #testing }
WinProxy class >> port [

	self isEnabled ifFalse: [ ^nil ].
	^(self proxyServerRegistryValue substrings: ':') last
]

{ #category : #'private - accessing' }
WinProxy class >> proxyEnabledRegistryValue [

	^WinRegistryKey currentUser
	queryValue: 'ProxyEnable' fromSubkey: 'Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings'
]

{ #category : #'private - accessing' }
WinProxy class >> proxyServerRegistryValue [

	^WinRegistryKey currentUser
	queryValue: 'ProxyServer' fromSubkey: 'Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings'
]
