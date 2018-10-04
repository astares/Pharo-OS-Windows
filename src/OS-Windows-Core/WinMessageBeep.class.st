"
Wrapper around MessageBeep function
"
Class {
	#name : #WinMessageBeep,
	#superclass : #Object,
	#pools : [
		'WinBaseConstants',
		'WinTypes',
		'WinUserConstants'
	],
	#category : #'OS-Windows-Core-User'
}

{ #category : #beeps }
WinMessageBeep class >> error [
	<script>
	self messageBeep: MB_ICONERROR
]

{ #category : #beeps }
WinMessageBeep class >> exclamation [
	<script>
	self messageBeep: MB_ICONEXCLAMATION
]

{ #category : #beeps }
WinMessageBeep class >> hand [
	<script>
	self messageBeep: MB_ICONHAND
]

{ #category : #beeps }
WinMessageBeep class >> information [
	<script>
	self messageBeep: MB_ICONINFORMATION
]

{ #category : #'private - primitives' }
WinMessageBeep class >> messageBeep: uType [
	"Plays a waveform sound. The waveform sound for each sound type is identified by an entry in the registry."	
	 
	^ self ffiCall: #(BOOL MessageBeep(UINT uType)) module: #user32	

]

{ #category : #beeps }
WinMessageBeep class >> ok [
	<script>
	self messageBeep: MB_OK
	

]

{ #category : #beeps }
WinMessageBeep class >> question [
	<script>
	self messageBeep: MB_ICONQUESTION
	

]

{ #category : #beeps }
WinMessageBeep class >> stop [
	<script>
	self messageBeep: MB_ICONSTOP
]

{ #category : #beeps }
WinMessageBeep class >> warning [
	<script>
	self messageBeep: MB_ICONWARNING
]
