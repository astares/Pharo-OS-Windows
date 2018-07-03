"
This class represents the internet explorer from windows
"
Class {
	#name : #WinInternetExplorer,
	#superclass : #Object,
	#pools : [
		'WinBaseConstants',
		'WinTypes',
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Shell'
}

{ #category : #utilities }
WinInternetExplorer class >> deleteAllBrowserInfos [
	"
	Delete all browser infos
		
		WinInternetExplorer deleteAllBrowserInfos   
	"
	
	WinShell shellRunDLL: 'InetCpl.cpl,ClearMyTracksByProcess 255'
]

{ #category : #utilities }
WinInternetExplorer class >> deleteAllBrowserInfosAndSettingsStoredByAddOns [
	"
	Delete all browser infos and settings stored by Add-Ons
		
		WinInternetExplorer deleteAllBrowserInfosAndSettingsStoredByAddOns   
	"
	
	WinShell shellRunDLL: 'InetCpl.cpl,ClearMyTracksByProcess 4351'
]

{ #category : #utilities }
WinInternetExplorer class >> deleteAllInfos [
	"
	Delete all browser infos
		
		WinInternetExplorer deleteAllInfos   
	"
	
	WinShell shellRunDLL: 'InetCpl.cpl,ClearMyTracksByProcess 255'
]

{ #category : #utilities }
WinInternetExplorer class >> deleteCookies [
	"
	Delete browser cookies
		
		WinExplorer openCookies.
		WinInternetExplorer deleteCookies 
	"
	
	WinShell shellRunDLL: 'InetCpl.cpl,ClearMyTracksByProcess 2'
]

{ #category : #utilities }
WinInternetExplorer class >> deleteFormData [
	"
	Delete browser form data
		
		WinInternetExplorer deleteFormData
	"
	
	WinShell shellRunDLL: 'InetCpl.cpl,ClearMyTracksByProcess 16'
]

{ #category : #utilities }
WinInternetExplorer class >> deleteHistory [
	"
	Delete browser history
		
		WinExplorer openHistory.
		WinInternetExplorer deleteHistory
	"
	
	WinShell shellRunDLL: 'InetCpl.cpl,ClearMyTracksByProcess 1'
]

{ #category : #utilities }
WinInternetExplorer class >> deletePasswords [
	"
	Delete browser passwords
		
		WinInternetExplorer deletePasswords
	"
	
	WinShell shellRunDLL: 'InetCpl.cpl,ClearMyTracksByProcess 32'
]

{ #category : #'private - accessing' }
WinInternetExplorer class >> internetExplorerRegistryKey [

	^'Software\Microsoft\Internet Explorer'
]

{ #category : #'instance creation' }
WinInternetExplorer class >> open [

	self openWithArguments: String empty
]

{ #category : #'instance creation' }
WinInternetExplorer class >> open: aUrl [
	"
	self open: 'http://www.microsoft.com'
	"

	self openWithArguments: aUrl
]

{ #category : #'instance creation' }
WinInternetExplorer class >> openKioskMode [

	^self openWithArguments: '-k'
]

{ #category : #'instance creation' }
WinInternetExplorer class >> openKioskMode: aUrl [
	"
	self openKioskMode: 'http://www.microsoft.com'
	"

	self openWithArguments: '-k ',aUrl
]

{ #category : #'instance creation' }
WinInternetExplorer class >> openWithArguments: arg [

	|dir cmd|
	dir := WinEnvironment is64BitWindows 
			ifTrue: [ WinEnvironment getProgramFilesX86  ]
			ifFalse: [ WinEnvironment getProgramFilesDirectory ].
	cmd := dir, '\Internet Explorer\iexplore.exe ', arg.
	^WinProcess createProcess: cmd
]

{ #category : #accessing }
WinInternetExplorer class >> updateVersion [

	^ (WinRegistryKey localMachine  
		queryValue: 'svcUpdateVersion'
	   fromSubkey: self internetExplorerRegistryKey)
]

{ #category : #accessing }
WinInternetExplorer class >> version [

	^ (WinRegistryKey localMachine  
		queryValue: 'svcVersion'
	   fromSubkey: self internetExplorerRegistryKey)
]
