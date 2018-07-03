"
Instances of this class represent native windows OS processes
"
Class {
	#name : #WinProcess,
	#superclass : #WinHandle,
	#pools : [
		'WinBaseConstants',
		'WinTypes'
	],
	#category : #'OS-Windows-Environment-Processing'
}

{ #category : #accessing }
WinProcess class >> allProcessIdentifiers [
	"Return a list of all process identifiers"
	<script: 'self allProcessIdentifiers inspect'>
	
	|processIds bytesReturned ids sizeOfDWORD cProcesses|
	ids := OrderedCollection new.
	sizeOfDWORD := (FFIExternalType sizeOf: DWORD).
	processIds := ExternalAddress allocate: 2024 * sizeOfDWORD.
	bytesReturned := ExternalAddress allocate: (FFIExternalType sizeOf: DWORD).
	
	(self enumProcesses: processIds size: 2024 bytesReturned: bytesReturned)	
		ifTrue: [			 
			cProcesses := (bytesReturned unsignedLongAt: 1) / sizeOfDWORD.	
		 
			0 to: cProcesses do: [:index |
				ids add: (processIds unsignedLongAt: index * sizeOfDWORD + 1)	
			]
		].
	^ids sorted
]

{ #category : #'process creation' }
WinProcess class >> createAndWaitForProcess: szExe [ 
	"
	self createAndWaitForProcess: 'cmd.exe'
	"
	| si pi |
	si := WinStartupInfo new.
	pi := WinProcessInformation new.
	self createProcess: szExe startupInfo: si processInformation: pi.
	self waitForSingleObject: pi hProcess timeout: INFINITE.
	pi hProcess closeHandle. 
	pi hThread closeHandle.
]

{ #category : #'process creation' }
WinProcess class >> createAndWaitForProcess: szExe withCurrentDirectory: szCurrentDirectory [
	"
	self createAndWaitForProcess: 'cmd.exe' withCurrentDirectory: FileSystem disk workingDirectory fullName
	"
	| si pi |
	si := WinStartupInfo new.
	pi := WinProcessInformation new.
	self createProcess: szExe currentDirectory: szCurrentDirectory startupInfo: si processInformation: pi.
	self waitForSingleObject: pi hProcess timeout: INFINITE.
	pi hProcess closeHandle. 
	pi hThread closeHandle.
]

{ #category : #'process creation' }
WinProcess class >> createHeadlessProcess: szExe [ 
	"
	self createProcess: 'cmd.exe'
	"
	| si pi |
	si := WinStartupInfo new.
	si dwFlags: STARTF_USESHOWWINDOW.
	pi := WinProcessInformation new.
	self createProcess: szExe startupInfo: si processInformation: pi.
	^pi
]

{ #category : #'process creation' }
WinProcess class >> createProcess: szExe [ 
	"
	self createProcess: 'cmd.exe'
	"
	| si pi |
	si := WinStartupInfo new.
	pi := WinProcessInformation new.
	self createProcess: szExe startupInfo: si processInformation: pi.
	^pi
]

{ #category : #primitives }
WinProcess class >> createProcess: szExe currentDirectory: szCurrentDirectory startupInfo: lpStartupInfo processInformation: pi [ 
	"Retrieves the contents of the STARTUPINFO structure that was specified when the calling process was created."	

	^self ffiCall: #(BOOL CreateProcessA(0, LPCTSTR szExe, 0, 0, false, 0, 0, LPCTSTR szCurrentDirectory, WinStartupInfo* lpStartupInfo, WinProcessInformation* pi)) module: #kernel32	 

]

{ #category : #primitives }
WinProcess class >> createProcess: szExe startupInfo: lpStartupInfo processInformation: pi [
	"Retrieves the contents of the STARTUPINFO structure that was specified when the calling process was created."	
		
	^ self ffiCall: #(BOOL CreateProcessA(0, LPCTSTR szExe, 0, 0, false, 0, 0, 0, WinStartupInfo* lpStartupInfo, WinProcessInformation* pi)) module: #kernel32	 

]

{ #category : #'process creation' }
WinProcess class >> createProcess: szExe withCurrentDirectory: szCurrentDirectory [
	"
	self createProcess: 'cmd.exe' withCurrentDirectory: FileSystem disk workingDirectory fullName
	"
	| si pi |
	si := WinStartupInfo new.
	pi := WinProcessInformation new.
	self createProcess: szExe currentDirectory: szCurrentDirectory startupInfo: si processInformation: pi.
	^pi
]

{ #category : #accessing }
WinProcess class >> currentProcess [
	"Return an instance with a pseudohandle for the current process."	
	 <script: 'self currentProcess inspect'>

	^ self ffiCall: #(WinProcess GetCurrentProcess()) module: #kernel32	

]

{ #category : #accessing }
WinProcess class >> currentProcessId [
	"Returns the process identifier (PID) of the calling process."	

	^self ffiCall: #( DWORD GetCurrentProcessId()) module: #kernel32	

]

{ #category : #primitives }
WinProcess class >> enumProcesses: pProcessIds size: cb bytesReturned: pBytesReturned [
	"Retrieves the process identifier for each process object in the system.."	

	^ self ffiCall: #(BOOL EnumProcesses(DWORD* pProcessIds, DWORD cb, DWORD* pBytesReturned)) module: #Psapi	

]

{ #category : #private }
WinProcess class >> fgetc: stream [
	"Initiate pipe streams to or from a process "
	 
	 ^self ffiCall: #(int* fgetc(ExternalAddress* stream)) 
			 module: LibC
			 
]

{ #category : #primitives }
WinProcess class >> getStartupInfo: info [
	"Retrieves the contents of the STARTUPINFO structure that was specified when the calling process was created."	

	^ self ffiCall: #(VOID GetStartupInfoA(WinStartupInfo* info)) module: #kernel32	

]

{ #category : #'accessing module' }
WinProcess class >> getVMModuleHandle [
	"The GetModuleHandle function retrieves a module handle for the specified module if the file has been mapped into the address space of the calling process."

	^ self ffiCall: #( HMODULE GetModuleHandleA (0)) module: #Kernel32

]

{ #category : #private }
WinProcess class >> pipe: command mode: mode [
	"Initiate pipe streams to or from a process "
	 
	 ^self ffiCall: #(ExternalAddress* _popen(char* command, char* mode)) 
			 module: LibC
			 
]

{ #category : #private }
WinProcess class >> pipeClose: stream [
	"Close pipe"
	 
	 ^self ffiCall: #(int* _pclose(ExternalAddress* stream)) 
			 module: LibC
			 
]

{ #category : #piping }
WinProcess class >> resultOfCommand: cmd [
	|file last s |
	file := self pipe: cmd mode: 'r'.
	s := String new writeStream.
	[ last := (self fgetc: file) value.
	  last = 16rFFFFFFFF ] whileFalse: [ 	 
			s nextPut: (Character value: last)
	].
	self pipeClose: file.
	^s contents
]

{ #category : #accessing }
WinProcess class >> startupInfo [
	"Returns the STARTUPINFO of the current process"
	<script: 'self startupInfo inspect'>
	
	|info|
	info := WinStartupInfo new.
	self getStartupInfo: info.
	^info
]

{ #category : #primitives }
WinProcess class >> waitForSingleObject: hHandle timeout: dwMilliseconds [
	"Waits until the specified object is in the signaled state or the time-out interval elapses."	

	^self ffiCall: #(DWORD WaitForSingleObject(HANDLE hHandle, DWORD dwMilliseconds)) module: #kernel32	

]

{ #category : #accessing }
WinProcess >> getExitCode [
    | buffer |
    buffer := ByteArray new: 4.
    self getExitCodeProcess: buffer.
    ^ buffer unsignedLongAt: 1
]

{ #category : #'private - primitives' }
WinProcess >> getExitCodeProcess: lpExitCode [
    "Retrieves the termination status of the specified process."

    ^ self
        ffiCall: #(BOOL GetExitCodeProcess #(HANDLE self , LPDWORD lpExitCode))
        module: #kernel32
]

{ #category : #accessing }
WinProcess >> getPriorityClass [
	"Return the priority class for the specified process"	
		
	^self ffiCall: #(DWORD GetPriorityClass(HANDLE self)) module: #kernel32	

]

{ #category : #testing }
WinProcess >> isHighPriorityClass [
	"Indicates a process that performs time-critical tasks that must be executed immediately for it to run correctly."
	
	^self getPriorityClass == HIGH_PRIORITY_CLASS	
]

{ #category : #testing }
WinProcess >> isIdlePriorityClass [
	"Indicates a process whose threads run only when the system is idle and are preempted by the threads of any process running in a higher priority class. An example is a screen saver. The idle priority class is inherited by child processes."
	
	^self getPriorityClass == IDLE_PRIORITY_CLASS		
]

{ #category : #testing }
WinProcess >> isNormalPriorityClass [
	"Indicates a normal process with no special scheduling needs"
	
	^self getPriorityClass == NORMAL_PRIORITY_CLASS		
]

{ #category : #testing }
WinProcess >> isRealtimePriorityClass [
	"Indicates a process that has the highest possible priority. The threads of a real-time priority class process preempt the threads of all other processes, including operating system processes performing important tasks."
	
	^self getPriorityClass == REALTIME_PRIORITY_CLASS		
]

{ #category : #testing }
WinProcess >> isRunning [
	"A return value of STILL_ACTIVE (259) could be interpreted to mean that the thread is 
	 is still running."
  
  ^ self getExitCode = STILL_ACTIVE
]

{ #category : #testing }
WinProcess >> isWow64Process [
	"Determines whether the specified process is running under WOW64 (the x86 emulator that allows 32-bit Windows-based applications to run seamlessly on 64-bit Windows)."
	
	|result|
	result := ExternalAddress allocate: 4.
	self isWow64Process: result.
	^(result value) ~= 0

]

{ #category : #'private - primitives' }
WinProcess >> isWow64Process: wow64Process [
	"Determines whether the specified process is running under WOW64."	

	^self ffiCall: #(BOOL IsWow64Process(HANDLE self, ExternalAddress wow64Process)) module: #kernel32	

]

{ #category : #lifetime }
WinProcess >> terminateProcessWithExitCode: uExitCode [
	"Return the priority class for the specified process"	
 
	^self ffiCall: #(BOOL TerminateProcess(HANDLE self, UINT uExitCode)) module: #kernel32	

]
