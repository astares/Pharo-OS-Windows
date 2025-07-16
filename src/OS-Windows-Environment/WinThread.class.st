"
Instances of this class represent native windows OS threads
"
Class {
	#name : #WinThread,
	#superclass : #WinHandle,
	#pools : [
		'WinBaseConstants',
		'WinTypes'
	],
	#category : 'OS-Windows-Environment-Processing'
}

{ #category : #accessing }
WinThread class >> currentThread [
	"Return an instance with a pseudohandle for the current thread."

	^ self ffiCall: #(WinThread GetCurrentThread()) module: #kernel32
]

{ #category : #accessing }
WinThread class >> currentThreadId [
	"Returns the thread identifier of the calling thread. Until the thread terminates, the thread identifier uniquely identifies the thread throughout the system."

	^ self ffiCall: #(DWORD GetCurrentThreadId()) module: #kernel32
]

{ #category : #testing }
WinThread >> isThreadAllAccess [
	"For systems that do not support security descriptors, the (pseudo) handle  is THREAD_ALL_ACCESS. "

	^ self getHandle value = 2032639 "THREAD_ALL_ACCESS"
]
