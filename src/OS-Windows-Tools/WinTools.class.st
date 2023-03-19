"
Common class for Windows tools
"
Class {
	#name : #WinTools,
	#superclass : #Object,
	#classVars : [
		'Icons'
	],
	#category : #'OS-Windows-Tools-Base'
}

{ #category : #'world menu' }
WinTools class >> commandLineMenuOn: aBuilder [

	<worldMenu>
	(aBuilder item: #'Command line')
		parent: #'OS-Windows Tools';
		help: 'Command Line';
		order: 0.1;
		action: [ self openCommandLineOnWorkingDirectory ];
		icon: (WinToolIcons iconNamed: #cmdIcon);
		withSeparatorAfter
]

{ #category : #'world menu' }
WinTools class >> explorerMenuOn: aBuilder [

	<worldMenu>
	(aBuilder item: #'Explorer')
		parent: #'OS-Windows Tools';
		help: 'Windows Explorer';
		order: 0;
		action: [ self openExplorerOnWorkingDirectory ];
		icon: (WinToolIcons iconNamed: #folderIcon)
]

{ #category : #'world menu' }
WinTools class >> odbcMenuOn: aBuilder [

	<worldMenu>
	(aBuilder item: #'ODBC Panel')
		parent: #'OS-Windows Tools';
		help: 'ODBC Panel';
		order: 0.60;
		action: [ WinControlPanel showODBCSettings ];
		icon: (WinToolIcons iconNamed: #odbcIcon)
]

{ #category : #utilities }
WinTools class >> openCommandLineOnWorkingDirectory [

	WinProcess
		createProcess: WinEnvironment getCommandLineProcessor
		withCurrentDirectory: FileSystem workingDirectory fullName
]

{ #category : #utilities }
WinTools class >> openExplorerOnWorkingDirectory [

	WinShell
		shellOpen: FileSystem workingDirectory fullName
]
