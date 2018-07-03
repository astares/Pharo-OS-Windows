"
Access to the windows shell
"
Class {
	#name : #WinShell,
	#superclass : #Object,
	#pools : [
		'WinBaseConstants',
		'WinTypes',
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Shell'
}

{ #category : #primitives }
WinShell class >> shellAbout: hWnd application: szApp other: szOtherStuff icon: hIcon [
	"
		self shellAbout: Win32Window getFocus application: 'Pharo' other: 'More' icon: (WinHandle new)
	"	
	
	^self ffiCall: #(int ShellAboutA(
     			HWND hWnd,
         		LPCTSTR szApp,
     			LPCTSTR szOtherStuff,
     			HICON hIcon)) module: #shell32
]

{ #category : #operations }
WinShell class >> shellBrowse: url [
	"
	self shellBrowse: 'http://www.pharo-project.org'
	"
	^self shellExecute: 'open' file: url parameters: '' directory: '' show: SW_SHOW
]

{ #category : #primitives }
WinShell class >> shellExecute: lpOperation file: lpFile parameters: lpParameters directory: lpDirectory show: nShowCmd [
	
	^self ffiCall: #( 
			HINSTANCE ShellExecuteA(
     				0,
     				LPCTSTR lpOperation,
         			LPCTSTR lpFile,
     				LPCTSTR lpParameters,
     				LPCTSTR lpDirectory,
        			INT nShowCmd)) module: #shell32
	

]

{ #category : #primitives }
WinShell class >> shellExecute: hwnd operation: lpOperation file: lpFile parameters: lpParameters directory: lpDirectory show: nShowCmd [
	
	^self ffiCall: #( 
			HINSTANCE ShellExecuteA(
     				HWND hwnd,
     				LPCTSTR lpOperation,
         			LPCTSTR lpFile,
     				LPCTSTR lpParameters,
     				LPCTSTR lpDirectory,
        			INT nShowCmd)) module: #shell32
	

]

{ #category : #operations }
WinShell class >> shellExplore: folder [
	"
	self shellExplore: 'c:\'
	"

	^self shellExecute: 'explore' file: folder parameters: '' directory: '' show: SW_SHOW
]

{ #category : #operations }
WinShell class >> shellOpen: file [
	"
	self shellOpen: 'c:\pharo.pdf'
	"

	^self shellExecute: 'open' file: file parameters: '' directory: '' show: SW_SHOW
]

{ #category : #operations }
WinShell class >> shellPrint: file [
	"
	self shellPrint: 'c:\index.html'
	"

	^self shellExecute: 'print' file: file parameters: '' directory: '' show: SW_SHOW
]

{ #category : #operations }
WinShell class >> shellRunDLL: cmd [
	"
	self shellRunDLL: 'shell32.dll,Control_RunDLL odbccp32.cpl'
	"
	
	^self shellExecute: 'open' file: 'rundll32.exe' parameters: cmd directory: '' show: SW_SHOW
]
