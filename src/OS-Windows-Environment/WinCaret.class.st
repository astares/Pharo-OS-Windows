"
A caret is a blinking line, block, or bitmap in the client area of a window. The caret typically indicates the place at which text or graphics will be inserted.
"
Class {
	#name : #WinCaret,
	#superclass : #Object,
	#category : #'OS-Windows-Environment-Caret'
}

{ #category : #accessing }
WinCaret class >> blinkTime [
	"Returns the elapsed time, in milliseconds, required to invert the caret's pixels. The user can set this value using the Control Panel."
	<script: 'self blinkTime inspect'>

	^ self ffiCall: #( uint GetCaretBlinkTime()) module: #user32
]
