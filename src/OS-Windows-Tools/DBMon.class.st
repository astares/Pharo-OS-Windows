"
Download the tool (dbmon.exe) from the net and install in Windows folder
"
Class {
	#name : #DBMon,
	#superclass : #Object,
	#category : #'OS-Windows-Tools-Debugging'
}

{ #category : #'world menu' }
DBMon class >> menuCommandOn: aBuilder [
	<worldMenu>
	(aBuilder item: #'DBMON')
		parent: #'OS-Windows Tools';
		help: 'Debug Monitor';
		order: 0.50;
		action: [self start ];
		icon: (WinToolIcons iconNamed: #dbmonIcon)
]

{ #category : #operations }
DBMon class >> start [

	WinProcess createProcess: 'dbmon.exe'
]
