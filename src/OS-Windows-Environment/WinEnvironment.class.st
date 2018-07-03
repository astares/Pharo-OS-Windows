"
A class to query various environment settings
"
Class {
	#name : #WinEnvironment,
	#superclass : #Object,
	#pools : [
		'WinBaseConstants',
		'WinTypes',
		'WinUserConstants'
	],
	#category : #'OS-Windows-Environment-Environment'
}

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getAllUsersProfileFolder [
	"Return the profile path for all users.
  	 typically this is C:\Documents and Settings\All Users
	
		self getAllUsersProfileFolder
	"
	<script: 'self getAllUsersProfileFolder inspect'>
	
	^self getEnvironmentVariable: 'ALLUSERSPROFILE'
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getApplicationDataFolder [
	"Return the folder for application data
	
		self getApplicationDataFolder
	"
	<script: 'self getApplicationDataFolder inspect'>
	
	^self getEnvironmentVariable: 'APPDATA'
]

{ #category : #'accessing - configurations' }
WinEnvironment class >> getCommandLineProcessor [
	"Return command line processor executable
	
		self getCommandLineProcessor
	"
	<script: 'self getCommandLineProcessor inspect'>
	
	^self getEnvironmentVariable: 'ComSpec'
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getCommonProgramFiles [ 
	"Return the common program files 
  	 typically this is C:\Program Files\Common Files
	
		self getCommonProgramFiles 
	"
	<script: 'self getCommonProgramFiles inspect'>
	
	^self getEnvironmentVariable: 'COMMONPROGRAMFILES'
]

{ #category : #'accessing - 64bit' }
WinEnvironment class >> getCommonProgramFilesX86 [
	"Return the common program files x86.
  	 typically this is C:\Program Files (x86)\Common Files
	
		self getCommonProgramFilesX86
	"
	<script: 'self getCommonProgramFilesX86 inspect'>
	
	^self getEnvironmentVariable: 'COMMONPROGRAMFILES(x86)'
]

{ #category : #'accessing - configurations' }
WinEnvironment class >> getComputerName [
	"Return the name of the computer.
	
		self getComputerName
	"
	<script: 'self getComputerName inspect'>
	
	^self getEnvironmentVariable: 'COMPUTERNAME'
]

{ #category : #accessing }
WinEnvironment class >> getComputerUptime [
	"Get the uptime of a computer (duration elapsed since the system has started)"
	<script: 'self getComputerUptime inspect'> 
	
	|tc days weeks hours minutes seconds|
	tc := self primGetTickCount.
	weeks := (tc / 1000 / 60 / 60 / 24 / 7 % 52) asInteger weeks.
	days := (tc / 1000 / 60 / 60 / 24 % 7) asInteger days.
	hours := (tc / 1000 / 60 / 60 % 24) asInteger hours.
	minutes := (tc / 1000 / 60 % 60) asInteger minutes.
	seconds := (tc / 1000 % 60) asInteger seconds.
	^weeks + days + hours + minutes + seconds
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getDriveType: lpRootPathName [
	"
		self getDriveType:  'D:\' 
	"
	
	| types |
	types := #(DRIVE_UNKNOWN DRIVE_NO_ROOT_DIR DRIVE_REMOVABLE DRIVE_FIXED DRIVE_REMOTE DRIVE_CDROM DRIVE_RAMDISK).
	^types at: (self primGetDriveType: lpRootPathName) +  1
]

{ #category : #accessing }
WinEnvironment class >> getEnvironmentVariable: variableName [
	"Return the value of the given environment variable"
	
	 ^ self ffiCall: #( String getenv (String variableName) ) module: LibC
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getHomeDrive [
	"Return the drive letter of the home drive.
	
		self getHomeDrive
	"
	<script: 'self getHomeDrive inspect'>
		
	^self getEnvironmentVariable: 'HOMEDRIVE'
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getHomePath [
	"Return the home path. Typically this is \Documents and Settings\{username}
	
		self getHomePath
	"
	<script: 'self getHomePath inspect'>
	
	^self getEnvironmentVariable: 'HOMEPATH'
]

{ #category : #'accessing - hardware' }
WinEnvironment class >> getNumberOfProcessors [
	"Return the number of processors/cores.
	
		self getNumberOfProcessors
	"
	<script: 'self getNumberOfProcessors inspect'>
	
	^self getEnvironmentVariable: 'NUMBER_OF_PROCESSORS'
]

{ #category : #'accessing - system' }
WinEnvironment class >> getOS [
	"Return the name of the OS. The environment variable has the value 'Windows_NT' 
	 on at least the following systems: Windows XP, Windows 2000 and Windows 7"
	<script: 'self getOS inspect'>
	
	^self getEnvironmentVariable: 'OS'
]

{ #category : #'accessing - configurations' }
WinEnvironment class >> getPathEntries [
	"Return the PATH entries"
	<script: 'self getPathEntries inspect'>
	
	^(self getEnvironmentVariable: 'PATH') findTokens: $;
]

{ #category : #'accessing - configurations' }
WinEnvironment class >> getPathExtensions [
	"Returns a list of the file extensions that the OS considers to be executable.
	
		self getPathExtensions
	"
	<script: 'self getPathExtensions inspect'>
	
	^self getEnvironmentVariable: 'PATHEXT'
]

{ #category : #'accessing - hardware' }
WinEnvironment class >> getProcessorArchitecture [
	"Return processor chip architecture. Values: x86, IA64.
	 Note: x86 is also returned when a 32-bit process is created by a 64-bit process. Check if you run in WOW64 using #isWow64Process.
	
		self getProcessorArchitecture
	"
	<script: 'self getProcessorArchitecture inspect'>
	
	^self getEnvironmentVariable: 'PROCESSOR_ARCHITECTURE'
]

{ #category : #'accessing - hardware' }
WinEnvironment class >> getProcessorIdentifier [
	"Return a description of the processor.
	
		self getProcessorIdentifier
	"
	<script: 'self getProcessorIdentifier inspect'>
	
	^self getEnvironmentVariable: 'PROCESSOR_IDENTIFIER'
]

{ #category : #'accessing - hardware' }
WinEnvironment class >> getProcessorLevel [
	"Return the model number of the computer's processor.
	
		self getProcessorLevel
	"
	<script: 'self getProcessorLevel inspect'>
	
	^self getEnvironmentVariable: 'PROCESSOR_LEVEL'
]

{ #category : #'accessing - hardware' }
WinEnvironment class >> getProcessorRevision [
	"Return the revision number of the processor.
	
		self getProcessorRevision
	"
	<script: 'self getProcessorRevision inspect'>
	
	^self getEnvironmentVariable: 'PROCESSOR_REVISION'
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getProgramFilesDirectory [
	"Return the program files directory
	
		self getProgramFilesDirectory
	"
	<script: 'self getProgramFilesDirectory inspect'>
	
	^self getEnvironmentVariable: 'PROGRAMFILES'
]

{ #category : #'accessing - 64bit' }
WinEnvironment class >> getProgramFilesX86 [
	"Return the program files x86.
  	 typically this is C:\Program Files (x86) 
	
		self getProgramFilesX86
	"
	<script: 'self getProgramFilesX86 inspect'>
	
	^self getEnvironmentVariable: 'programfiles(x86)'
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getSystemDrive [
	"Return the drive containing the Windows root directory, usually C:
	
		self getSystemDrive
	"
	<script: 'self getSystemDrive inspect'>	
	
	^self getEnvironmentVariable: 'SYSTEMDRIVE'
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getSystemRootDirectory [
	"Return the systems root directory. Typically this is
	  'C:\WINDOWS'
	
		self getSystemRootDirectory
	"
	<script: 'self getSystemRootDirectory inspect'>		
	
	^self getEnvironmentVariable: 'SystemRoot'
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getTempDirectory [
	"Return the name of the temp directory.
	
		self getTempDirectory
	"
	<script: 'self getTempDirectory inspect'>
	
	^self getEnvironmentVariable: 'TEMP'
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getTmpDirectory [
	"Return the name of the temp directory.
	
		self getTmpDirectory
	"
	<script: 'self getTmpDirectory inspect'>
	
	^self getEnvironmentVariable: 'TMP'
]

{ #category : #'accessing - user' }
WinEnvironment class >> getUserDomain [
	"Return the name of the domain that contains the user’s account.
	
		self getUserDomain
	"
	<script: 'self getUserDomain inspect'>
	
	^self getEnvironmentVariable: 'USERDOMAIN'
]

{ #category : #'accessing - user' }
WinEnvironment class >> getUserName [
	"Return the name of the logged in user
	
		self getUserName
	"
	<script: 'self getUserName inspect'>
	
	^self getEnvironmentVariable: 'USERNAME'
]

{ #category : #'accessing - user' }
WinEnvironment class >> getUserProfile [
	"Return the users profile location. Typically this is C:\Documents and Settings\{username}
	
		self getUserProfile
	"
	<script: 'self getUserProfile inspect'>
	
	^self getEnvironmentVariable: 'USERPROFILE'
]

{ #category : #'accessing - filesystem' }
WinEnvironment class >> getWindowsDirectory [
	"Return the path to the windows directory"
	<script: 'self getWindowsDirectory inspect'>	
	
	^self getEnvironmentVariable: 'windir'
]

{ #category : #'accessing - 64bit' }
WinEnvironment class >> is64BitWindows [
	<script: 'self is64BitWindows inspect'>
	
	^(self getEnvironmentVariable: 'ProgramW6432') notNil
]

{ #category : #'accessing - user' }
WinEnvironment class >> isUserAnAdmin [
	"
	 Tests whether the current user is a member of the Administrator's group.
	
		self isUserAnAdmin
	"
	<script: 'self isUserAnAdmin inspect'>
	
	^ self ffiCall: #(bool IsUserAnAdmin(void)) module: #shell32
]

{ #category : #'private - primitives' }
WinEnvironment class >> primGetDriveType: lpRootPathName [
	"
		self getDriveType: 'c:\' 
	"  
	
	^ self ffiCall: #(UINT GetDriveTypeA(LPCTSTR lpRootPathName)) module: #kernel32
]

{ #category : #'private - primitives' }
WinEnvironment class >> primGetTickCount [
	
	^ self ffiCall: #(DWORD GetTickCount(void)) module: #kernel32
]

{ #category : #'private - primitives' }
WinEnvironment class >> primWhichPlatform [
	"
	Retrieves a value that indicates the type of Shell32.dll that the platform contains.
	
		self primWhichPlatform
	"	
	
	^ self ffiCall: #(UINT WhichPlatform(void)) module: #Shlwapi
]
