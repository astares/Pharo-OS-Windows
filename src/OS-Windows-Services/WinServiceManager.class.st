"
The windows service manager
"
Class {
	#name : #WinServiceManager,
	#superclass : #Object,
	#instVars : [
		'serviceHandle'
	],
	#pools : [
		'WinErrorConstants',
		'WinServicesConstants'
	],
	#category : #'OS-Windows-Services-Model'
}

{ #category : #'instance creation' }
WinServiceManager class >> open [

	^(self new)
		open
]

{ #category : #operating }
WinServiceManager >> open [

	serviceHandle := self openSCManager.
	serviceHandle isInvalid
		ifTrue: [ self processLastError ]
]

{ #category : #private }
WinServiceManager >> openSCManager [

	^ self
		  ffiCall:
		  #( #SC_HANDLE #OpenSCManagerA #( 0 #, 0 #, #SC_MANAGER_ALL_ACCESS ) )
		  module: #advapi32
]

{ #category : #operating }
WinServiceManager >> processLastError [

	(WinError lastErrorCode = ERROR_ACCESS_DENIED)
					ifTrue: [  WinAccessDenied signal: 'The requested access was denied. Maybe you need to run as admin.' ].
	(WinError lastErrorCode = ERROR_ACCESS_DENIED)
					ifTrue: [  WinAccessDenied signal: 'The requested access was denied. Maybe you need to run as admin.' ]
]
