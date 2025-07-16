"
Provides wrappers for native windows console functionality 
"
Class {
	#name : #WinConsole,
	#superclass : #WinHandle,
	#classVars : [
		'Default'
	],
	#pools : [
		'WinBaseConstants',
		'WinConsoleConstants',
		'WinTypes'
	],
	#category : 'OS-Windows-Environment-Console'
}

{ #category : #'private - primitives' }
WinConsole class >> allocateConsole [
	"Allocates a new console for the calling process."

	^ self ffiCall: #(BOOL AllocConsole(void)) module: #kernel32
]

{ #category : #'private - primitives' }
WinConsole class >> attachConsoleToProcessWithId: dwProcessId [
	"Attaches the calling process to the console of the specified process."

	^ self ffiCall: #(BOOL AttachConsole(DWORD dwProcessId)) module: #kernel32
]

{ #category : #'console handling' }
WinConsole class >> createOutputConsoleForCurrentProcess [
	"Create and attach a console to this process.  Note that each process is only allowed one console"

	self allocateConsole.
	self attachConsoleToProcessWithId: WinProcess currentProcessId.
	^self getStandardOutput
]

{ #category : #'console handling' }
WinConsole class >> default [

	Default ifNil: [ Default := self createOutputConsoleForCurrentProcess ].
	^Default
]

{ #category : #examples }
WinConsole class >> example1 [
	"Open the console window and write something.

		self example1
	"

	WinConsole default
		write: 'HelloWorld'
]

{ #category : #examples }
WinConsole class >> example2 [
	"Open the console window and write something.

		self example2
	"

	|con|
	WinConsole reset.
	con := WinConsole default.
	con cursorPosition: 10@10.
	con write: 'Another text'
]

{ #category : #examples }
WinConsole class >> example3 [
	"Open the console window, colors and display text.

		self example3
	"
	WinConsole reset.
	WinConsole default
		foregroundColor: WinConsoleForegroundColor red
		backgroundColor: WinConsoleBackgroundColor yellow;
		write: 'HelloWorld'
]

{ #category : #examples }
WinConsole class >> example4 [
	"Open the console window, change its title and dsplay colors.

		self example4
	"

	|con|
	WinConsole reset.
	con := WinConsole default.
	con consoleWindow title: 'Pharo console'.

	"Display all color combinations"
      1 to: 256 do: [ :each |
		WinConsole default
		setConsoleTextAttribute: each;
		write: 'O']
]

{ #category : #examples }
WinConsole class >> example5 [
	"Query the console

		self example5
	"

	|con|
	con := WinConsole default.
	con screenBuffer size inspect
]

{ #category : #examples }
WinConsole class >> example6 [
	"Clear screen and print some text by filling.

		self example6
	"

	|con|
	con := WinConsole default.
	con clearscreen.
	'PHARO' withIndexDo: [:each :index |
		con fillWithCharacter: each startingAt: (10 + index)@(10 + index) count: 12. 	 ]
]

{ #category : #'private - primitives' }
WinConsole class >> freeConsole [
	"Detaches the calling process from its console."

	^ self ffiCall: #(BOOL FreeConsole(void)) module: #kernel32
]

{ #category : #'private - primitives' }
WinConsole class >> getFileType: hFile [
	"Retrieves the file type of the specified file. "

	^self ffiCall: #(DWORD GetFileType(HANDLE hFile)) module: #kernel32
]

{ #category : #accessing }
WinConsole class >> getStandardError [

	^self getStdHandle: STD_ERROR_HANDLE
]

{ #category : #accessing }
WinConsole class >> getStandardInput [

	^self getStdHandle: STD_INPUT_HANDLE
]

{ #category : #accessing }
WinConsole class >> getStandardOutput [

	^self getStdHandle: STD_OUTPUT_HANDLE
]

{ #category : #'private - primitives' }
WinConsole class >> getStdHandle: nStdHandle [
	"Returns a handle for the standard input, standard output, or standard error device. "

	^ self ffiCall: #(WinConsole GetStdHandle(DWORD nStdHandle)) module: #kernel32
]

{ #category : #'class initialization' }
WinConsole class >> reset [
	<script>
	self freeConsole.
	Default := nil
]

{ #category : #'accessing - color management' }
WinConsole >> blackOnWhite [

	self foregroundColor: WinConsoleForegroundColor black
		 backgroundColor: WinConsoleBackgroundColor white
]

{ #category : #'accessing - screen' }
WinConsole >> clearscreen [
	|area|
	area := self screenBuffer size.
	self fillWithCharacter: Character space startingAt: 0@0 count: area x * area y.
	self fillWithAttribute: (self screenBuffer wAttributes) startingAt: 0@0 count: area x * area y.
	self cursorPosition: 0@0
]

{ #category : #accessing }
WinConsole >> consoleMode [
	"Return the console mode"

	|mode|
	mode := ByteArray new: 2.
	self getConsoleMode: mode.
	^mode nbLongAt: 1
]

{ #category : #accessing }
WinConsole >> consoleWindow [
	"Returns the console window"

	^self getConsoleWindow
]

{ #category : #'character writing' }
WinConsole >> cr [

	self write: Character cr asString
]

{ #category : #'accessing - cursor' }
WinConsole >> cursor [
	|cursor|
	cursor := WinConsoleCursor new.
	self getConsoleCursorInfo: cursor.
	^cursor
]

{ #category : #'accessing - cursor' }
WinConsole >> cursorPosition [

	^self screenBuffer cursorPosition
]

{ #category : #'accessing - cursor' }
WinConsole >> cursorPosition: aPoint [
	"Sets the cursor position"

	self setConsoleCursorPosition: (WinConsoleCoordinates fromPoint: aPoint)
]

{ #category : #'accessing - cursor' }
WinConsole >> cursorSize: anInteger [

	self setConsoleCursorInfo: (self cursor
									size: anInteger;
									yourself)
]

{ #category : #'accessing - cursor' }
WinConsole >> displayCursor [

	self setConsoleCursorInfo: (self cursor
									beVisible;
									yourself)
]

{ #category : #primitives }
WinConsole >> fillConsoleOutputAttribute: wAttribute length: nLength coordinates: dwWriteCoord hasWritten: lpNumberOfAttrsWritten [
	"Sets the character attributes for a specified number of character cells, beginning at the specified coordinates in a screen buffer."

	^ self ffiCall: #(BOOL FillConsoleOutputAttribute(
										HANDLE self,
										WORD wAttribute,
										DWORD nLength,
										COORD dwWriteCoord,
										LPDWORD lpNumberOfAttrsWritten)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> fillConsoleOutputCharacter: cCharacter length: nLength coordinates: dwWriteCoord hasWritten: lpNumberOfCharsWritten [
	"Writes a character to the console screen buffer a specified number of times, beginning at the specified coordinates."

	^ self ffiCall: #(BOOL FillConsoleOutputCharacterA(
										HANDLE self,
										TCHAR cCharacter,
										DWORD nLength,
										COORD dwWriteCoord,
										LPDWORD lpNumberOfCharsWritten)) module: #kernel32
]

{ #category : #utilities }
WinConsole >> fillWithAttribute: attributes startingAt: aPoint count: length [

	|a dwWriteCoord|
	 a := ByteArray new: 2.
	dwWriteCoord := WinConsoleCoordinates fromPoint: aPoint.
	self fillConsoleOutputAttribute: attributes length: length coordinates: dwWriteCoord hasWritten: a
]

{ #category : #utilities }
WinConsole >> fillWithCharacter: aCharacter startingAt: aPoint count: length [

	|a dwWriteCoord|
	 a := ByteArray new: 2.
	dwWriteCoord := WinConsoleCoordinates fromPoint: aPoint.
	self fillConsoleOutputCharacter: aCharacter asInteger length: length coordinates: dwWriteCoord hasWritten: a
]

{ #category : #'accessing - cursor' }
WinConsole >> font [
	|cursor|
	cursor := WinConsoleFont new.
	self getCurrentConsoleFont: cursor.
	^cursor
]

{ #category : #'accessing - color management' }
WinConsole >> foregroundColor: aWinConsoleForegroundColor backgroundColor: aWinConsoleBackgroundColor [

	self setConsoleTextAttribute: aWinConsoleForegroundColor value + aWinConsoleBackgroundColor value
]

{ #category : #'accessing - screen' }
WinConsole >> fullscreen [
	"If fullscreen is supported set it to full screen."

	self setConsoleDisplayMode: CONSOLE_FULLSCREEN_MODE
]

{ #category : #primitives }
WinConsole >> getConsoleCursorInfo: lpConsoleCursorInfo [
	"Retrieves information about the size and visibility of the cursor for the specified console screen buffer."

	^self ffiCall: #(BOOL GetConsoleCursorInfo(HANDLE self, PCONSOLE_CURSOR_INFO lpConsoleCursorInfo)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> getConsoleMode: lpMode [
	"Retrieves the current input mode of a console's input buffer or the current output mode of a console screen buffer."

	^self ffiCall: #(BOOL GetConsoleMode(HANDLE self, LPDWORD lpMode)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> getConsoleScreenBufferInfo: lpConsoleScreenBufferInfo [
	"Sets the cursor position in the specified console screen buffer."

	^ self ffiCall: #(BOOL GetConsoleScreenBufferInfo(HANDLE self, PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> getConsoleWindow [
	"Sets the cursor position in the specified console screen buffer."

	^self ffiCall: #(HWND GetConsoleWindow(HANDLE self)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> getCurrentConsoleFont: lpConsoleCurrentFont [
	"Retrieves information about the current console font."

	^self ffiCall: #(BOOL GetCurrentConsoleFont(HANDLE self, bool false, PCONSOLE_FONT_INFO lpConsoleCurrentFont)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> getCurrentConsoleFont: lpConsoleCurrentFont forMaximumWindow:  bMaximumWindow [
	"Retrieves information about the current console font."

	^ self ffiCall: #(BOOL GetCurrentConsoleFont(HANDLE self, BOOL bMaximumWindow, PCONSOLE_FONT_INFO lpConsoleCurrentFont, 0)) module: #kernel32
]

{ #category : #'accessing - cursor' }
WinConsole >> hideCursor [

	self setConsoleCursorInfo: (self cursor
									beInvisible;
									yourself)
]

{ #category : #testing }
WinConsole >> isControlCProcessedEnabled [

	^self consoleMode allMask: ENABLE_PROCESSED_INPUT
]

{ #category : #testing }
WinConsole >> isEchoInputEnabled [

	^self consoleMode allMask: ENABLE_ECHO_INPUT
]

{ #category : #testing }
WinConsole >> isInsertModeEnabled [

	^self consoleMode allMask: ENABLE_INSERT_MODE
]

{ #category : #testing }
WinConsole >> isLineInputEnabled [

	^self consoleMode allMask: ENABLE_LINE_INPUT
]

{ #category : #testing }
WinConsole >> isMouseInputEnabled [

	^self consoleMode allMask: ENABLE_MOUSE_INPUT
]

{ #category : #testing }
WinConsole >> isProcessedOutputEnabled [

	^self consoleMode allMask: ENABLE_PROCESSED_OUTPUT
]

{ #category : #testing }
WinConsole >> isQuickEditModeEnabled [

	^self consoleMode allMask: ENABLE_QUICK_EDIT_MODE
]

{ #category : #testing }
WinConsole >> isWindowInputEnabled [

	^self consoleMode allMask: ENABLE_WINDOW_INPUT
]

{ #category : #testing }
WinConsole >> isWrappedAtEndOfLineOutputEnabled [

	^self consoleMode allMask: ENABLE_WRAP_AT_EOL_OUTPUT
]

{ #category : #'character writing' }
WinConsole >> lf [

	self write: Character lf asString
]

{ #category : #'accessing - screen buffer' }
WinConsole >> screenBuffer [
	"Returns infos about the screen buffer"

	|bufferInfo|
	bufferInfo := WinConsoleScreenBuffer new.
	self getConsoleScreenBufferInfo: bufferInfo.
	^bufferInfo
]

{ #category : #'accessing - screen buffer' }
WinConsole >> screenBufferSize: aPoint [
	"Sets the screen buffer size"

	self setConsoleScreenBufferSize: (WinConsoleCoordinates fromPoint: aPoint)
]

{ #category : #primitives }
WinConsole >> setConsoleCursorInfo: lpConsoleCursorInfo [
	"Sets the size and visibility of the cursor for the specified console screen buffer."

	^self ffiCall: #(BOOL SetConsoleCursorInfo(HANDLE self, CONSOLE_CURSOR_INFO *lpConsoleCursorInfo)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> setConsoleCursorPosition: dwCursorPosition [
	"Sets the cursor position in the specified console screen buffer."

	^ self ffiCall: #(BOOL SetConsoleCursorPosition(HANDLE self, COORD dwCursorPosition)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> setConsoleDisplayMode: dwFlags [
	"Changes the size of the specified console screen buffer."

	^ self ffiCall: #(BOOL SetConsoleDisplayMode(HANDLE self, DWORD dwFlags, 0)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> setConsoleDisplayMode: dwFlags newDimensions: lpNewScreenBufferDimensions [
	"Changes the size of the specified console screen buffer."

	^ self ffiCall: #(BOOL SetConsoleDisplayMode(HANDLE self, DWORD dwFlags, PCOORD lpNewScreenBufferDimensions)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> setConsoleScreenBufferSize: dwSize [
	"Changes the size of the specified console screen buffer."
	 <primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^self ffiCall: #(BOOL SetConsoleScreenBufferSize(HANDLE self, COORD dwSize)) module: #kernel32
]

{ #category : #primitives }
WinConsole >> setConsoleTextAttribute: wAttributes [
	"Writes data to the specified file or input/output (I/O) device."
	 <primitive: 'primitiveNativeCall' module: 'NativeBoostPlugin'>

	^self ffiCall: #(BOOL SetConsoleTextAttribute(HANDLE self, WORD wAttributes)) module: #kernel32
]

{ #category : #'accessing - color management' }
WinConsole >> whiteOnBlack [

	self foregroundColor: WinConsoleForegroundColor white
		 backgroundColor: WinConsoleBackgroundColor black
]

{ #category : #'character writing' }
WinConsole >> write: aString [

	self writeFile: aString size: aString size
]

{ #category : #private }
WinConsole >> writeFile: lpBuffer size: nNumberOfBytesToWrite [
	"Writes data to the specified file or input/output (I/O) device."

	^self ffiCall: #(BOOL WriteFile(HANDLE self, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite, int 0, int 0)) module: #kernel32
]
