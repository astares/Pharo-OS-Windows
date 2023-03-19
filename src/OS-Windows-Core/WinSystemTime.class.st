"
Represents the SYSTEMTIME structure defined in Windows.h
"
Class {
	#name : #WinSystemTime,
	#superclass : #FFIExternalStructure,
	#classVars : [
		'OFFSET_WDAY',
		'OFFSET_WDAYOFWEEK',
		'OFFSET_WHOUR',
		'OFFSET_WMILLISECONDS',
		'OFFSET_WMINUTE',
		'OFFSET_WMONTH',
		'OFFSET_WSECOND',
		'OFFSET_WYEAR'
	],
	#pools : [
		'WinTypes'
	],
	#category : #'OS-Windows-Core-Base'
}

{ #category : #'private - accessing' }
WinSystemTime class >> fieldsDesc [
	"self rebuildFieldAccessors"

	^ #(
		WORD wYear;
  		WORD wMonth;
  		WORD wDayOfWeek;
  		WORD wDay;
  		WORD wHour;
  		WORD wMinute;
  		WORD wSecond;
  		WORD wMilliseconds;
	)
]

{ #category : #'private - primitives' }
WinSystemTime class >> getLocalTime: lpSystemTime [

	^ self ffiCall: #(void GetLocalTime(LPSYSTEMTIME lpSystemTime)) module: #kernel32
]

{ #category : #'private - primitives' }
WinSystemTime class >> getSystemTime: lpSystemTime [

	^ self ffiCall: #(void GetSystemTime(LPSYSTEMTIME lpSystemTime)) module: #kernel32
]

{ #category : #accessing }
WinSystemTime class >> localTime [
	"Retrieves the current local date and time."

	| time |
	time := self new.
	self getLocalTime: time.
	^time
]

{ #category : #'private - primitives' }
WinSystemTime class >> setLocalTime: lpSystemTime [

	^ self ffiCall: #(BOOL SetLocalTime(SYSTEMTIME* lpSystemTime)) module: #kernel32
]

{ #category : #'private - primitives' }
WinSystemTime class >> setSystemTime: lpSystemTime [

	^ self ffiCall: #(BOOL SetSystemTime(SYSTEMTIME* lpSystemTime)) module: #kernel32
]

{ #category : #accessing }
WinSystemTime class >> systemTime [
	"Retrieves the current system date and time. The system time is expressed in Coordinated Universal Time (UTC)."

	| time |
	time := self new.
	self getSystemTime: time.
	^time
]

{ #category : #accessing }
WinSystemTime >> day [

	^self wDay
]

{ #category : #accessing }
WinSystemTime >> day: day [

	self wDay: day
]

{ #category : #accessing }
WinSystemTime >> dayOfWeek [

	^self wDayOfWeek
]

{ #category : #accessing }
WinSystemTime >> dayOfWeek: dayOfWeek [

	self wDayOfWeek: dayOfWeek
]

{ #category : #accessing }
WinSystemTime >> hour [

	^self wHour
]

{ #category : #accessing }
WinSystemTime >> hour: hour [

	self wHour: hour
]

{ #category : #accessing }
WinSystemTime >> milliseconds [

	^self wMilliseconds
]

{ #category : #accessing }
WinSystemTime >> milliseconds: milliseconds [

	self wMilliseconds: milliseconds
]

{ #category : #accessing }
WinSystemTime >> minute [

	^self wMinute
]

{ #category : #accessing }
WinSystemTime >> minute: minutes [

	self wMinute: minutes
]

{ #category : #accessing }
WinSystemTime >> month [

	^self wMonth
]

{ #category : #accessing }
WinSystemTime >> month: aMonth [

	self wMonth: aMonth
]

{ #category : #accessing }
WinSystemTime >> second [

	^self wSecond
]

{ #category : #accessing }
WinSystemTime >> second: seconds [

	self wSecond: seconds
]

{ #category : #operating }
WinSystemTime >> setAsNewLocalTime [
	"Set the time as new local time. The calling process must have the SE_SYSTEMTIME_NAME privilege."

	^self class setLocalTime: self
]

{ #category : #operating }
WinSystemTime >> setAsNewSystemTime [
	"Set the time as new system time.  The system time is expressed in Coordinated Universal Time (UTC). The calling process must have the SE_SYSTEMTIME_NAME privilege."

	^self class setSystemTime: self
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wDay [
	"This method was automatically generated"
	^handle unsignedShortAt: 7
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wDay: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 7 put: anObject
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wDayOfWeek [
	"This method was automatically generated"
	^handle unsignedShortAt: 5
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wDayOfWeek: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 5 put: anObject
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wHour [
	"This method was automatically generated"
	^handle unsignedShortAt: 9
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wHour: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 9 put: anObject
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wMilliseconds [
	"This method was automatically generated"
	^handle unsignedShortAt: 15
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wMilliseconds: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 15 put: anObject
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wMinute [
	"This method was automatically generated"
	^handle unsignedShortAt: 11
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wMinute: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 11 put: anObject
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wMonth [
	"This method was automatically generated"
	^handle unsignedShortAt: 3
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wMonth: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 3 put: anObject
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wSecond [
	"This method was automatically generated"
	^handle unsignedShortAt: 13
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wSecond: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 13 put: anObject
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wYear [
	"This method was automatically generated"
	^handle unsignedShortAt: 1
]

{ #category : #'private - accessing structure variables' }
WinSystemTime >> wYear: anObject [
	"This method was automatically generated"
	handle unsignedShortAt: 1 put: anObject
]

{ #category : #accessing }
WinSystemTime >> year [

	^self wYear
]

{ #category : #accessing }
WinSystemTime >> year: year [

	self wYear: year
]
