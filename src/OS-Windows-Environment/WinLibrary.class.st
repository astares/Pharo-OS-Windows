"
#Win Library management

Use :
- `WinLibrary fromLibraryClass: <a FFILibrary subclass>`
- `WinLibrary loadLibrary: 'myLib.dll'`
- `WinLibrary getLibraryModule: 'myLib.dll'`

on a library you can call : 
- `WinLibrary>>findCalls` -> returns a list of current FFI calls on it (if using a FFILibrary class)
- `WinLibrary>>reloadLibrary` -> frees the library and reloads it (reseting FFI Methods)

Caution, this mechanism is not guaranteed to be Threadsafe.
"
Class {
	#name : 'WinLibrary',
	#superclass : 'WinHandle',
	#instVars : [
		'libraryPath',
		'libraryClass'
	],
	#pools : [
		'WinBaseConstants',
		'WinTypes'
	],
	#category : 'OS-Windows-Environment-Processing',
	#package : 'OS-Windows-Environment',
	#tag : 'Processing'
}

{ #category : 'instance creation' }
WinLibrary class >> fromLibraryClass: aFFILibraryClass [

	| lib |
	lib := self getLibraryModule:
		       aFFILibraryClass uniqueInstance win32LibraryName.
	lib libraryClass: aFFILibraryClass.
	lib isLoaded ifFalse: [ lib loadLibrary ].
	^ lib
]

{ #category : 'misc' }
WinLibrary class >> getLibraryModule: lpModuleName [

	| val |
	val := self primGetLibraryModule: lpModuleName.
	val libraryPath: lpModuleName.
	^val.
]

{ #category : 'misc' }
WinLibrary class >> loadLibrary: lpFileName [

	| val |
	val := self primLoadLibrary: lpFileName.
	val libraryPath: lpFileName.
	^val.
]

{ #category : 'misc' }
WinLibrary class >> primFreeLibrary: aHandle [

	^ self
		  ffiCall: #( int FreeLibrary #(void* aHandle) )
		  module: #Kernel32
]

{ #category : 'misc' }
WinLibrary class >> primGetLibraryModule: lpModuleName [

^ self
		       ffiCall:
		       #( WinLibrary GetModuleHandleA #( LPCSTR lpModuleName ) )
		       module: #Kernel32.
	
]

{ #category : 'misc' }
WinLibrary class >> primLoadLibrary: lpFileName [

^self
		       ffiCall: #( WinLibrary LoadLibraryA #( String lpFileName ) )
		       module: #Kernel32.

]

{ #category : 'actions' }
WinLibrary >> findCalls [

	| set |
	set := Set new.
	set addAll:
		(FFIMethodRegistry uniqueInstance compiledMethods select: [ :e |
			 e methodClass = self libraryClass ]).
	set addAll:
		(FFIMethodRegistry uniqueInstance compiledMethods select: [ :m |
			 ('*{1}*' format: (Array with: self class name))  match: m codeForNoSource ]).
	^ set
]

{ #category : 'actions' }
WinLibrary >> freeLibrary [

	self isLoaded ifFalse:[ ^self].
		self class primFreeLibrary: self getHandle.
		self setHandle: ExternalAddress null 
]

{ #category : 'testing' }
WinLibrary >> isLoaded [
^self getHandle isNull not

]

{ #category : 'accessing' }
WinLibrary >> libraryClass [

	^ libraryClass
]

{ #category : 'accessing' }
WinLibrary >> libraryClass: anObject [

	libraryClass := anObject
]

{ #category : 'accessing' }
WinLibrary >> libraryPath [

	^ libraryPath
]

{ #category : 'accessing' }
WinLibrary >> libraryPath: anObject [

	libraryPath := anObject
]

{ #category : 'actions' }
WinLibrary >> loadLibrary [

	| lib |
	self isLoaded ifFalse: [ lib := self class loadLibrary: self libraryPath.
		handle := lib getHandle.
		lib setHandle: nil.
		 ].
	^self.
]

{ #category : 'actions' }
WinLibrary >> recompileCalls [
"warning for test only"
	| calls |
	calls := self findCalls.
	calls do: [ :k | k methodClass recompile: k selector ]
]

{ #category : 'actions' }
WinLibrary >> reloadLibrary [

	self unloadLibrary.
	self loadLibrary.
]

{ #category : 'actions' }
WinLibrary >> resetCalls [

	| calls |
	calls := self findCalls.
	calls do: [ :m | FFIMethodRegistry uniqueInstance removeMethod: m].
	
]

{ #category : 'actions' }
WinLibrary >> unloadLibrary [

	self isLoaded ifTrue: [
		self freeLibrary.
		self resetCalls ].
	^ self
]
