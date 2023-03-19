"
The windows shell folders
"
Class {
	#name : #WinShellFolder,
	#superclass : #Object,
	#instVars : [
		'name',
		'path'
	],
	#pools : [
		'WinBaseConstants',
		'WinTypes',
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Shell'
}

{ #category : #accessing }
WinShellFolder class >> appData [
	"Return the application data folder location"

	^self named: 'AppData'
]

{ #category : #accessing }
WinShellFolder class >> cache [
	"Return the cache folder"

	^self named: 'Cache'
]

{ #category : #accessing }
WinShellFolder class >> cookies [
	"Return the IE cookies folder"

	^self named: 'Cookies'
]

{ #category : #accessing }
WinShellFolder class >> desktop [
	"Return the desktop folder"

	^self named: 'Desktop'
]

{ #category : #accessing }
WinShellFolder class >> favorites [
	"Return the favorites IE folder"

	^self named: 'Favorites'
]

{ #category : #accessing }
WinShellFolder class >> fonts [
	"Return the fonts folder"

	^self named: 'Fonts'
]

{ #category : #accessing }
WinShellFolder class >> history [
	"Return the IE history folder"

	^self named: 'History'
]

{ #category : #'instance creation' }
WinShellFolder class >> named: aName [
	"Return the folder with the given name"

	^self named: aName path: (self shellFolderRegistryValue: aName)
]

{ #category : #'instance creation' }
WinShellFolder class >> named: aName path: aFolderName [

	^(self new)
		name: aName;
		path: aFolderName
		yourself
]

{ #category : #accessing }
WinShellFolder class >> netHood [
	"Return the NetHood folder"

	^self named: 'NetHood'
]

{ #category : #accessing }
WinShellFolder class >> personal [
	"Return the Personal folder location"

	^self named: 'Personal'
]

{ #category : #accessing }
WinShellFolder class >> printHood [
	"Return the PrintHood folder"

	^self named: 'PrintHood'
]

{ #category : #accessing }
WinShellFolder class >> programs [
	"Return the Programs folder"

	^self named: 'Programs'
]

{ #category : #accessing }
WinShellFolder class >> recent [
	"Return the Recent folder"

	^self named: 'Recent'
]

{ #category : #accessing }
WinShellFolder class >> sendTo [
	"Return the SendTo folder"

	^self named: 'SendTo'
]

{ #category : #'private - utilities' }
WinShellFolder class >> shellFolderRegistryValue: value [

	^WinRegistryKey currentUser
		queryValue: value
	   fromSubkey: 'Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders'
]

{ #category : #accessing }
WinShellFolder class >> startMenu [
	"Return the Start Menu folder"

	^self named: 'Start Menu'
]

{ #category : #accessing }
WinShellFolder class >> startup [
	"Return the Startup folder"

	^self named: 'Startup'
]

{ #category : #accessing }
WinShellFolder class >> templates [
	"Return the Templates folder"

	^self named: 'Templates'
]

{ #category : #accessing }
WinShellFolder >> name [

	^name
]

{ #category : #accessing }
WinShellFolder >> name: aString [

	name := aString
]

{ #category : #operations }
WinShellFolder >> open [

	WinShell shellOpen: self path
]

{ #category : #accessing }
WinShellFolder >> path [

	^path
]

{ #category : #accessing }
WinShellFolder >> path: aString [

	path := aString
]
