"
Windows type definitions
"
Class {
	#name : #WinTypes,
	#superclass : #SharedPool,
	#classVars : [
		'ATOM',
		'BOOL',
		'BOOLEAN',
		'BYTE',
		'CALLBACK',
		'CHAR',
		'COLORREF',
		'DWORD',
		'DWORD32',
		'DWORD64',
		'DWORDLONG',
		'FLOAT',
		'HANDLE',
		'HBRUSH',
		'HCURSOR',
		'HDC',
		'HICON',
		'HINSTANCE',
		'HMENU',
		'HMODULE',
		'HRESULT',
		'HWND',
		'INT',
		'INT32',
		'INT64',
		'LANGID',
		'LCID',
		'LCTYPE',
		'LGRPID',
		'LONG',
		'LONG32',
		'LONG64',
		'LONGLONG',
		'LPARAM',
		'LPBOOL',
		'LPBYTE',
		'LPCOLORREF',
		'LPCSTR',
		'LPCTSTR',
		'LPCVOID',
		'LPCWSTR',
		'LPDWORD',
		'LPHANDLE',
		'LPSTR',
		'LPSYSTEMTIME',
		'LPTCH',
		'LPTSTR',
		'LPVOID',
		'LPWCH',
		'LPWSTR',
		'PBOOL',
		'PBOOLEAN',
		'PCSTR',
		'PCTSTR',
		'PCWSTR',
		'POINT',
		'PSTR',
		'PTSTR',
		'PVOID',
		'PWSTR',
		'RECT',
		'SHORT',
		'SYSTEMTIME',
		'TCHAR',
		'UINT',
		'ULONG',
		'USHORT',
		'VOID',
		'WCHAR',
		'WNDCLASSEX',
		'WNDENUMPROC',
		'WNDPROC',
		'WORD'
	],
	#category : #'OS-Windows-Core-Support'
}

{ #category : #'private - initialization' }
WinTypes class >> initBasicTypes [

	BOOL := #bool.
	DWORD := #ulong.
	
	VOID := #void.

	POINT := #WinPoint.
	RECT := #WinRectangle.	
		
	HDC := #WinDeviceContext.
	HWND := #WinWindow.
	HMENU := #WinMenu.
	
	SYSTEMTIME := #WinSystemTime.
	LPSYSTEMTIME := #'SYSTEMTIME*'.
]

{ #category : #'private - initialization' }
WinTypes class >> initCallbacks [

	WNDENUMPROC := #WinEnumWindowsProc
]

{ #category : #'private - initialization' }
WinTypes class >> initKnownTypes [

	UINT := #ulong.
	USHORT := #ushort.
	SHORT := 'short'.
	
	ATOM := #WORD.
	BOOLEAN := #BYTE.
	BYTE := #unsignedByte.
	CALLBACK := #'void*'.
	CHAR := #char.
	COLORREF := #DWORD.

	WORD := #ushort.
	DWORDLONG := #ULONGLONG.

	DWORD32 := #ulong.
	DWORD64 := #ulonglong.
	FLOAT := #float.

	HRESULT := #LONG.
	INT := #long.
	INT32 := #long.
	INT64 := #longlong.
	LANGID := #WORD.
	LCID := #DWORD.
	LCTYPE := #DWORD.
	LGRPID := #DWORD.
	
	ULONG := #ulong.
	LONG := #long.
	LONGLONG := #longlong.

	LONG32 := #long.
	LONG64 := #longlong.
	LPARAM := #'LONG_PTR'.
	LPBOOL := #'BOOL*'.
	LPBYTE := #'BYTE*'.
	LPCOLORREF := #'DWORD*'.
	
	PVOID := 'void*'.
	LPVOID := 'void*'.
	LPCVOID := #'void*'.
	LPDWORD := #'DWORD*'.
	
	PBOOL := 'BOOL*'.
	PBOOLEAN := 'BOOLEAN*'.
	
	WNDPROC := #'void*'.
	HANDLE := #WinHandle.
	LPHANDLE := #'HANDLE*'.
	HINSTANCE := HMODULE := HICON := HCURSOR := HBRUSH := #HANDLE.
]

{ #category : #'private - initialization' }
WinTypes class >> initObjectTypes [

	WNDCLASSEX := #WinWndClassEx
]

{ #category : #'private - initialization' }
WinTypes class >> initStringTypes [
	TCHAR := #WinTCHAR.
	LPTCH := 'TCHAR*'.
	WCHAR := 'wchar_t'.
	LPWCH := 'WCHAR*'.

	LPTSTR := #WinTString.
	LPWSTR := #WinWideString.
	LPCSTR := #FFIExternalString.
	
	LPTSTR := #WinTString.
	LPWSTR := #WinWideString.
	
	LPCTSTR := #LPTSTR.
]

{ #category : #'class initialization' }
WinTypes class >> initialize [

	self 
		initBasicTypes;
		initKnownTypes;
		initStringTypes;
		initObjectTypes;
		initCallbacks
]
