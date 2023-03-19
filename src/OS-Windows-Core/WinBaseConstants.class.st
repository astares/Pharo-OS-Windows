"
This pool includes constants as defined in winbase.h header file
"
Class {
	#name : #WinBaseConstants,
	#superclass : #SharedPool,
	#classVars : [
		'ABOVE_NORMAL_PRIORITY_CLASS',
		'AC_LINE_BACKUP_POWER',
		'AC_LINE_OFFLINE',
		'AC_LINE_ONLINE',
		'AC_LINE_UNKNOWN',
		'BACKUP_ALTERNATE_DATA',
		'BACKUP_DATA',
		'BACKUP_EA_DATA',
		'BACKUP_INVALID',
		'BACKUP_LINK',
		'BACKUP_OBJECT_ID',
		'BACKUP_PROPERTY_DATA',
		'BACKUP_REPARSE_DATA',
		'BACKUP_SECURITY_DATA',
		'BACKUP_SPARSE_BLOCK',
		'BATTERY_FLAG_CHARGING',
		'BATTERY_FLAG_CRITICAL',
		'BATTERY_FLAG_HIGH',
		'BATTERY_FLAG_LOW',
		'BATTERY_FLAG_NO_BATTERY',
		'BATTERY_FLAG_UNKNOWN',
		'BATTERY_LIFE_UNKNOWN',
		'BATTERY_PERCENTAGE_UNKNOWN',
		'BAUD_075',
		'BAUD_110',
		'BAUD_115200',
		'BAUD_1200',
		'BAUD_128K',
		'BAUD_134_5',
		'BAUD_14400',
		'BAUD_150',
		'BAUD_1800',
		'BAUD_19200',
		'BAUD_2400',
		'BAUD_300',
		'BAUD_38400',
		'BAUD_4800',
		'BAUD_56K',
		'BAUD_57600',
		'BAUD_600',
		'BAUD_7200',
		'BAUD_9600',
		'BAUD_USER',
		'BELOW_NORMAL_PRIORITY_CLASS',
		'CALLBACK_CHUNK_FINISHED',
		'CALLBACK_STREAM_SWITCH',
		'CBR_110',
		'CBR_115200',
		'CBR_1200',
		'CBR_128000',
		'CBR_14400',
		'CBR_19200',
		'CBR_2400',
		'CBR_256000',
		'CBR_300',
		'CBR_38400',
		'CBR_4800',
		'CBR_56000',
		'CBR_57600',
		'CBR_600',
		'CBR_9600',
		'CE_BREAK',
		'CE_DNS',
		'CE_FRAME',
		'CE_IOE',
		'CE_MODE',
		'CE_OOP',
		'CE_OVERRUN',
		'CE_PTO',
		'CE_RXOVER',
		'CE_RXPARITY',
		'CE_TXFULL',
		'CLRBREAK',
		'CLRDTR',
		'CLRRTS',
		'CONSOLE_TEXTMODE_BUFFER',
		'CONTROL_C_EXIT',
		'COPY_FILE_ALLOW_DECRYPTED_DESTINATION',
		'COPY_FILE_COPY_SYMLINK',
		'COPY_FILE_FAIL_IF_EXISTS',
		'COPY_FILE_NO_BUFFERING',
		'COPY_FILE_OPEN_SOURCE_FOR_WRITE',
		'COPY_FILE_RESTARTABLE',
		'CREATE_ALWAYS',
		'CREATE_BREAKAWAY_FROM_JOB',
		'CREATE_DEFAULT_ERROR_MODE',
		'CREATE_FORCEDOS',
		'CREATE_NEW',
		'CREATE_NEW_CONSOLE',
		'CREATE_NEW_PROCESS_GROUP',
		'CREATE_NO_WINDOW',
		'CREATE_PROCESS_DEBUG_EVENT',
		'CREATE_SEPARATE_WOW_VDM',
		'CREATE_SHARED_WOW_VDM',
		'CREATE_SUSPENDED',
		'CREATE_THREAD_DEBUG_EVENT',
		'CREATE_UNICODE_ENVIRONMENT',
		'CREATE_WITH_USERPROFILE',
		'DATABITS_16',
		'DATABITS_16X',
		'DATABITS_5',
		'DATABITS_6',
		'DATABITS_7',
		'DATABITS_8',
		'DDD_EXACT_MATCH_ON_REMOVE',
		'DDD_RAW_TARGET_PATH',
		'DDD_REMOVE_DEFINITION',
		'DEBUG_ONLY_THIS_PROCESS',
		'DEBUG_PROCESS',
		'DETACHED_PROCESS',
		'DOCKINFO_DOCKED',
		'DOCKINFO_UNDOCKED',
		'DOCKINFO_USER_DOCKED',
		'DOCKINFO_USER_SUPPLIED',
		'DOCKINFO_USER_UNDOCKED',
		'DONT_RESOLVE_DLL_REFERENCES',
		'DRIVE_CDROM',
		'DRIVE_FIXED',
		'DRIVE_NO_ROOT_DIR',
		'DRIVE_RAMDISK',
		'DRIVE_REMOTE',
		'DRIVE_REMOVABLE',
		'DRIVE_UNKNOWN',
		'DTR_CONTROL_DISABLE',
		'DTR_CONTROL_ENABLE',
		'DTR_CONTROL_HANDSHAKE',
		'EVENPARITY',
		'EVENTLOG_AUDIT_FAILURE',
		'EVENTLOG_AUDIT_SUCCESS',
		'EVENTLOG_BACKWARDS_READ',
		'EVENTLOG_ERROR_TYPE',
		'EVENTLOG_FORWARDS_READ',
		'EVENTLOG_INFORMATION_TYPE',
		'EVENTLOG_SEEK_READ',
		'EVENTLOG_SEQUENTIAL_READ',
		'EVENTLOG_WARNING_TYPE',
		'EVENT_ALL_ACCESS',
		'EVENT_MODIFY_STATE',
		'EV_BREAK',
		'EV_CTS',
		'EV_DSR',
		'EV_ERR',
		'EV_EVENT1',
		'EV_EVENT2',
		'EV_PERR',
		'EV_RING',
		'EV_RLSD',
		'EV_RX80FULL',
		'EV_RXCHAR',
		'EV_RXFLAG',
		'EV_TXEMPTY',
		'EXCEPTION_ACCESS_VIOLATION',
		'EXCEPTION_ARRAY_BOUNDS_EXCEEDED',
		'EXCEPTION_BREAKPOINT',
		'EXCEPTION_CONTINUE_EXECUTION',
		'EXCEPTION_CONTINUE_SEARCH',
		'EXCEPTION_DATATYPE_MISALIGNMENT',
		'EXCEPTION_DEBUG_EVENT',
		'EXCEPTION_EXECUTE_HANDLER',
		'EXCEPTION_FLT_DENORMAL_OPERAND',
		'EXCEPTION_FLT_DIVIDE_BY_ZERO',
		'EXCEPTION_FLT_INEXACT_RESULT',
		'EXCEPTION_FLT_INVALID_OPERATION',
		'EXCEPTION_FLT_OVERFLOW',
		'EXCEPTION_FLT_STACK_CHECK',
		'EXCEPTION_FLT_UNDERFLOW',
		'EXCEPTION_GUARD_PAGE',
		'EXCEPTION_ILLEGAL_INSTRUCTION',
		'EXCEPTION_INT_DIVIDE_BY_ZERO',
		'EXCEPTION_INT_OVERFLOW',
		'EXCEPTION_INVALID_DISPOSITION',
		'EXCEPTION_INVALID_HANDLE',
		'EXCEPTION_IN_PAGE_ERROR',
		'EXCEPTION_NONCONTINUABLE_EXCEPTION',
		'EXCEPTION_PRIV_INSTRUCTION',
		'EXCEPTION_SINGLE_STEP',
		'EXCEPTION_STACK_OVERFLOW',
		'EXIT_PROCESS_DEBUG_EVENT',
		'EXIT_THREAD_DEBUG_EVENT',
		'FILE_BEGIN',
		'FILE_CURRENT',
		'FILE_ENCRYPTABLE',
		'FILE_END',
		'FILE_FLAG_BACKUP_SEMANTICS',
		'FILE_FLAG_DELETE_ON_CLOSE',
		'FILE_FLAG_FIRST_PIPE_INSTANCE',
		'FILE_FLAG_NO_BUFFERING',
		'FILE_FLAG_OPEN_NO_RECALL',
		'FILE_FLAG_OPEN_REPARSE_POINT',
		'FILE_FLAG_OVERLAPPED',
		'FILE_FLAG_POSIX_SEMANTICS',
		'FILE_FLAG_RANDOM_ACCESS',
		'FILE_FLAG_SEQUENTIAL_SCAN',
		'FILE_FLAG_WRITE_THROUGH',
		'FILE_IS_ENCRYPTED',
		'FILE_MAP_ALL_ACCESS',
		'FILE_MAP_COPY',
		'FILE_MAP_READ',
		'FILE_MAP_WRITE',
		'FILE_READ_ONLY',
		'FILE_ROOT_DIR',
		'FILE_SYSTEM_ATTR',
		'FILE_SYSTEM_DIR',
		'FILE_SYSTEM_NOT_SUPPORT',
		'FILE_TYPE_CHAR',
		'FILE_TYPE_PIPE',
		'FILE_TYPE_REMOTE',
		'FILE_TYPE_UNKNOWN',
		'FILE_UNKNOWN',
		'FILE_USER_DISALLOWED',
		'FIND_FIRST_EX_CASE_SENSITIVE',
		'FORMAT_MESSAGE_ALLOCATE_BUFFER',
		'FORMAT_MESSAGE_ARGUMENT_ARRAY',
		'FORMAT_MESSAGE_FROM_HMODULE',
		'FORMAT_MESSAGE_FROM_STRING',
		'FORMAT_MESSAGE_FROM_SYSTEM',
		'FORMAT_MESSAGE_IGNORE_INSERTS',
		'FORMAT_MESSAGE_MAX_WIDTH_MASK',
		'FS_CASE_IS_PRESERVED',
		'FS_CASE_SENSITIVE',
		'FS_FILE_COMPRESSION',
		'FS_PERSISTENT_ACLS',
		'FS_UNICODE_STORED_ON_DISK',
		'FS_VOL_IS_COMPRESSED',
		'GET_TAPE_DRIVE_INFORMATION',
		'GET_TAPE_MEDIA_INFORMATION',
		'GHND',
		'GMEM_DDESHARE',
		'GMEM_DISCARDABLE',
		'GMEM_DISCARDED',
		'GMEM_FIXED',
		'GMEM_INVALID_HANDLE',
		'GMEM_LOCKCOUNT',
		'GMEM_LOWER',
		'GMEM_MODIFY',
		'GMEM_MOVEABLE',
		'GMEM_NOCOMPACT',
		'GMEM_NODISCARD',
		'GMEM_NOTIFY',
		'GMEM_NOT_BANKED',
		'GMEM_SHARE',
		'GMEM_VALID_FLAGS',
		'GMEM_ZEROINIT',
		'GPTR',
		'HANDLE_FLAG_INHERIT',
		'HANDLE_FLAG_PROTECT_FROM_CLOSE',
		'HFILE_ERROR',
		'HIGH_PRIORITY_CLASS',
		'HINSTANCE_ERROR',
		'HW_PROFILE_GUIDLEN',
		'IDLE_PRIORITY_CLASS',
		'IGNORE',
		'INFINITE',
		'INVALID_ATOM',
		'INVALID_FILE_ATTRIBUTES',
		'INVALID_FILE_SIZE',
		'INVALID_HANDLE_VALUE',
		'INVALID_SET_FILE_POINTER',
		'LHND',
		'LMEM_DISCARDABLE',
		'LMEM_DISCARDED',
		'LMEM_FIXED',
		'LMEM_INVALID_HANDLE',
		'LMEM_LOCKCOUNT',
		'LMEM_MODIFY',
		'LMEM_MOVEABLE',
		'LMEM_NOCOMPACT',
		'LMEM_NODISCARD',
		'LMEM_NONZEROLHND',
		'LMEM_NONZEROLPTR',
		'LMEM_ZEROINIT',
		'LOAD_DLL_DEBUG_EVENT',
		'LOAD_LIBRARY_AS_DATAFILE',
		'LOAD_WITH_ALTERED_SEARCH_PATH',
		'LOCKFILE_EXCLUSIVE_LOCK',
		'LOCKFILE_FAIL_IMMEDIATELY',
		'LOGON32_LOGON_BATCH',
		'LOGON32_LOGON_INTERACTIVE',
		'LOGON32_LOGON_NETWORK',
		'LOGON32_LOGON_NETWORK_CLEARTEXT',
		'LOGON32_LOGON_NEW_CREDENTIALS',
		'LOGON32_LOGON_SERVICE',
		'LOGON32_LOGON_UNLOCK',
		'LOGON32_PROVIDER_DEFAULT',
		'LOGON32_PROVIDER_WINNT35',
		'LOGON32_PROVIDER_WINNT40',
		'LOGON32_PROVIDER_WINNT50',
		'LPTR',
		'MARKPARITY',
		'MAXIMUM_SUSPEND_COUNT',
		'MAXIMUM_WAIT_OBJECTS',
		'MAXINTATOM',
		'MAX_COMPUTERNAME_LENGTH',
		'MAX_PROFILE_LEN',
		'MOVEFILE_COPY_ALLOWED',
		'MOVEFILE_DELAY_UNTIL_REBOOT',
		'MOVEFILE_REPLACE_EXISTING',
		'MOVEFILE_WRITE_THROUGH',
		'MS_CTS_ON',
		'MS_DSR_ON',
		'MS_RING_ON',
		'MS_RLSD_ON',
		'MUTEX_ALL_ACCESS',
		'MUTEX_MODIFY_STATE',
		'NMPWAIT_NOWAIT',
		'NMPWAIT_USE_DEFAULT_WAIT',
		'NMPWAIT_WAIT_FOREVER',
		'NONZEROLHND',
		'NONZEROLPTR',
		'NOPARITY',
		'NORMAL_PRIORITY_CLASS',
		'ODDPARITY',
		'OFS_MAXPATHNAME',
		'OF_CANCEL',
		'OF_CREATE',
		'OF_DELETE',
		'OF_EXIST',
		'OF_PARSE',
		'OF_PROMPT',
		'OF_READ',
		'OF_READWRITE',
		'OF_REOPEN',
		'OF_SHARE_COMPAT',
		'OF_SHARE_DENY_NONE',
		'OF_SHARE_DENY_READ',
		'OF_SHARE_DENY_WRITE',
		'OF_SHARE_EXCLUSIVE',
		'OF_VERIFY',
		'OF_WRITE',
		'ONE5STOPBITS',
		'ONESTOPBIT',
		'OPEN_ALWAYS',
		'OPEN_EXISTING',
		'OUTPUT_DEBUG_STRING_EVENT',
		'PARITY_EVEN',
		'PARITY_MARK',
		'PARITY_NONE',
		'PARITY_ODD',
		'PARITY_SPACE',
		'PCF_16BITMODE',
		'PCF_DTRDSR',
		'PCF_INTTIMEOUTS',
		'PCF_PARITY_CHECK',
		'PCF_RLSD',
		'PCF_RTSCTS',
		'PCF_SETXCHAR',
		'PCF_SPECIALCHARS',
		'PCF_TOTALTIMEOUTS',
		'PCF_XONXOFF',
		'PIPE_ACCESS_DUPLEX',
		'PIPE_ACCESS_INBOUND',
		'PIPE_ACCESS_OUTBOUND',
		'PIPE_CLIENT_END',
		'PIPE_NOWAIT',
		'PIPE_READMODE_BYTE',
		'PIPE_READMODE_MESSAGE',
		'PIPE_SERVER_END',
		'PIPE_TYPE_BYTE',
		'PIPE_TYPE_MESSAGE',
		'PIPE_UNLIMITED_INSTANCES',
		'PIPE_WAIT',
		'PROCESS_HEAP_ENTRY_BUSY',
		'PROCESS_HEAP_ENTRY_DDESHARE',
		'PROCESS_HEAP_ENTRY_MOVEABLE',
		'PROCESS_HEAP_REGION',
		'PROCESS_HEAP_UNCOMMITTED_RANGE',
		'PROFILE_KERNEL',
		'PROFILE_SERVER',
		'PROFILE_USER',
		'PROGRESS_CANCEL',
		'PROGRESS_CONTINUE',
		'PROGRESS_QUIET',
		'PROGRESS_STOP',
		'PST_FAX',
		'PST_LAT',
		'PST_MODEM',
		'PST_NETWORK_BRIDGE',
		'PST_PARALLELPORT',
		'PST_RS232',
		'PST_RS422',
		'PST_RS423',
		'PST_RS449',
		'PST_SCANNER',
		'PST_TCPIP_TELNET',
		'PST_UNSPECIFIED',
		'PST_X25',
		'PURGE_RXABORT',
		'PURGE_RXCLEAR',
		'PURGE_TXABORT',
		'PURGE_TXCLEAR',
		'REALTIME_PRIORITY_CLASS',
		'RIP_EVENT',
		'RTS_CONTROL_DISABLE',
		'RTS_CONTROL_ENABLE',
		'RTS_CONTROL_HANDSHAKE',
		'RTS_CONTROL_TOGGLE',
		'SCS_32BIT_BINARY',
		'SCS_64BIT_BINARY',
		'SCS_DOS_BINARY',
		'SCS_OS216_BINARY',
		'SCS_PIF_BINARY',
		'SCS_POSIX_BINARY',
		'SCS_WOW_BINARY',
		'SEMAPHORE_ALL_ACCESS',
		'SEMAPHORE_MODIFY_STATE',
		'SEM_FAILCRITICALERRORS',
		'SEM_NOALIGNMENTFAULTEXCEPT',
		'SEM_NOGPFAULTERRORBOX',
		'SEM_NOOPENFILEERRORBOX',
		'SETBREAK',
		'SETDTR',
		'SETRTS',
		'SETXOFF',
		'SETXON',
		'SET_TAPE_DRIVE_INFORMATION',
		'SET_TAPE_MEDIA_INFORMATION',
		'SHUTDOWN_NORETRY',
		'SLE_ERROR',
		'SLE_MINORERROR',
		'SLE_WARNING',
		'SPACEPARITY',
		'SP_BAUD',
		'SP_DATABITS',
		'SP_HANDSHAKING',
		'SP_PARITY',
		'SP_PARITY_CHECK',
		'SP_RLSD',
		'SP_SERIALCOMM',
		'SP_STOPBITS',
		'STARTF_FORCEOFFFEEDBACK',
		'STARTF_FORCEONFEEDBACK',
		'STARTF_MONITOR',
		'STARTF_RUNFULLSCREEN',
		'STARTF_SCREENSAVER',
		'STARTF_TITLESHORTCUT',
		'STARTF_USECOUNTCHARS',
		'STARTF_USEFILLATTRIBUTE',
		'STARTF_USEHOTKEY',
		'STARTF_USEPOSITION',
		'STARTF_USESHOWWINDOW',
		'STARTF_USESIZE',
		'STARTF_USESTDHANDLES',
		'STATUS_ABANDONED_WAIT_0',
		'STATUS_ACCESS_VIOLATION',
		'STATUS_ARRAY_BOUNDS_EXCEEDED',
		'STATUS_BREAKPOINT',
		'STATUS_CONTROL_C_EXIT',
		'STATUS_DATATYPE_MISALIGNMENT',
		'STATUS_DLL_INIT_FAILED',
		'STATUS_DLL_INIT_FAILED_LOGOFF',
		'STATUS_FLOAT_DENORMAL_OPERAND',
		'STATUS_FLOAT_DIVIDE_BY_ZERO',
		'STATUS_FLOAT_INEXACT_RESULT',
		'STATUS_FLOAT_INVALID_OPERATION',
		'STATUS_FLOAT_OVERFLOW',
		'STATUS_FLOAT_STACK_CHECK',
		'STATUS_FLOAT_UNDERFLOW',
		'STATUS_GUARD_PAGE_VIOLATION',
		'STATUS_ILLEGAL_INSTRUCTION',
		'STATUS_INTEGER_DIVIDE_BY_ZERO',
		'STATUS_INTEGER_OVERFLOW',
		'STATUS_INVALID_DISPOSITION',
		'STATUS_INVALID_HANDLE',
		'STATUS_IN_PAGE_ERROR',
		'STATUS_NONCONTINUABLE_EXCEPTION',
		'STATUS_NO_MEMORY',
		'STATUS_PENDING',
		'STATUS_PRIVILEGED_INSTRUCTION',
		'STATUS_SEGMENT_NOTIFICATION',
		'STATUS_SINGLE_STEP',
		'STATUS_STACK_OVERFLOW',
		'STATUS_TIMEOUT',
		'STATUS_USER_APC',
		'STATUS_WAIT_0',
		'STD_ERROR_HANDLE',
		'STD_INPUT_HANDLE',
		'STD_OUTPUT_HANDLE',
		'STILL_ACTIVE',
		'STOPBITS_10',
		'STOPBITS_15',
		'STOPBITS_20',
		'STREAM_CONTAINS_PROPERTIES',
		'STREAM_CONTAINS_SECURITY',
		'STREAM_MODIFIED_WHEN_READ',
		'STREAM_NORMAL_ATTRIBUTE',
		'SYMBOLIC_LINK_FLAG_DIRECTORY',
		'TC_GP_TRAP',
		'TC_HARDERR',
		'TC_NORMAL',
		'TC_SIGNAL',
		'THREAD_MODE_BACKGROUND_BEGIN',
		'THREAD_MODE_BACKGROUND_END',
		'THREAD_PRIORITY_ABOVE_NORMAL',
		'THREAD_PRIORITY_BELOW_NORMAL',
		'THREAD_PRIORITY_ERROR_RETURN',
		'THREAD_PRIORITY_HIGHEST',
		'THREAD_PRIORITY_IDLE',
		'THREAD_PRIORITY_LOWEST',
		'THREAD_PRIORITY_NORMAL',
		'THREAD_PRIORITY_TIME_CRITICAL',
		'TIME_ZONE_ID_DAYLIGHT',
		'TIME_ZONE_ID_INVALID',
		'TIME_ZONE_ID_STANDARD',
		'TIME_ZONE_ID_UNKNOWN',
		'TRUNCATE_EXISTING',
		'UNLOAD_DLL_DEBUG_EVENT',
		'WAIT_ABANDONED',
		'WAIT_ABANDONED_0',
		'WAIT_FAILED',
		'WAIT_IO_COMPLETION',
		'WAIT_OBJECT_0',
		'WAIT_TIMEOUT'
	],
	#category : #'OS-Windows-Core-Support'
}

{ #category : #'private - initialization' }
WinBaseConstants class >> initCommunicationConstants [
	"
	Initializes the communication constants as defined in winbase.h

		self initCommunicationConstants
	"

	SP_SERIALCOMM := 1.				"specified for communications providers, including modem providers"

	"Communication provider type"
	PST_UNSPECIFIED := 0.				"Unspecified"
	PST_RS232 := 1.					"RS-232 serial port"
	PST_PARALLELPORT := 2.			"Parallel port"
	PST_RS422 := 3.					"RS-422 port"
	PST_RS423 := 4.					"RS-423 port"
	PST_RS449 := 5.					"RS-449 port"
	PST_MODEM := 6.					"Modem device"
	PST_FAX := 16r21.					"FAX device"
	PST_SCANNER := 16r22.			"Scanner device"
	PST_NETWORK_BRIDGE := 16r100.	"Unspecified network bridge"
	PST_LAT := 16r101.				"LAT protocol"
	PST_TCPIP_TELNET := 16r102.		"TCP/IP Telnet® protocol"
	PST_X25 := 16r103.				"X.25 standards"

	"maximum allowable baud rate, in bits per second (bps)."
	BAUD_075 := 1.					"75 bps"
	BAUD_110 := 2.					"110 bps"
	BAUD_134_5 := 4.					"134.5 bps"
	BAUD_150 := 8.					"150 bps"
	BAUD_300 := 16.					"300 bps"
	BAUD_600 := 32.					"600 bps"
	BAUD_1200 := 64.					"1200 bps"
	BAUD_1800 := 128.				"1800 bps"
	BAUD_2400 := 256.				"2400 bps"
	BAUD_4800 := 512.				"4800 bps"
	BAUD_7200 := 1024.				"7200 bps"
	BAUD_9600 := 2048.				"9600 bps"
	BAUD_14400 := 4096.				"14400 bps"
	BAUD_19200 := 8192.				"19200 bps"
	BAUD_38400 := 16384.			"38400 bps"
	BAUD_56K := 32768.				"56K bps"
	BAUD_128K := 65536.				"128K bps"
	BAUD_115200 := 131072.			"115200 bps"
	BAUD_57600 := 262144.			"57600 bps"
	BAUD_USER := 16r10000000.		"Programmable baud rates available"

	"Capabilities offered by the provider"
	PCF_DTRDSR := 1.					"DTR (data-terminal-ready)/DSR (data-set-ready) supported"
	PCF_RTSCTS := 2.					"RTS (request-to-send)/CTS (clear-to-send) supported"
	PCF_RLSD := 4.						"RLSD (receive-line-signal-detect) supported"
	PCF_PARITY_CHECK := 8.			"Parity checking supported"
	PCF_XONXOFF := 16.				"XON/XOFF flow control supported"
	PCF_SETXCHAR := 32.				"Settable XON/XOFF supported"
	PCF_TOTALTIMEOUTS := 64.		"Total (elapsed) time-outs supported"
	PCF_INTTIMEOUTS := 128.			"Interval time-outs supported"
	PCF_SPECIALCHARS := 256.		"Special character support provided"
	PCF_16BITMODE := 512.			"Special 16-bit mode supported"

	"Setable parameters -  communications parameter that can be changed"
	SP_PARITY := 1.					"Parity "
	SP_BAUD := 2.						"Baud rate"
	SP_DATABITS := 4.					"Data bits"
	SP_STOPBITS := 8.					"Stop bits"
	SP_HANDSHAKING := 16.			"Handshaking (flow control)"
	SP_PARITY_CHECK := 32.			"Parity checking"
	SP_RLSD := 64.						"RLSD (receive-line-signal-detect)"

	"The number of data bits that can be set"
	DATABITS_5 := 1.					"5 data bits"
	DATABITS_6 := 2.					"6 data bits"
	DATABITS_7 := 4.					"7 data bits"
	DATABITS_8 := 8.					"8 data bits"
	DATABITS_16 := 16.				"16 data bits"
	DATABITS_16X := 32.				"Special wide path through serial hardware lines"

	"The stop bit and parity settings that can be selected"
	STOPBITS_10 := 1.					"1 stop bit"
	STOPBITS_15 := 2.					"1.5 stop bits"
	STOPBITS_20 := 4.					"2 stop bits"

	PARITY_NONE := 256.				"No parity"
	PARITY_ODD := 256.				"Odd parity"
	PARITY_EVEN := 1024.				"Even parity"
	PARITY_MARK := 2048.				"Mark parity"
	PARITY_SPACE := 4096.			"Space parity"

	CE_BREAK := 16.				 	"The hardware detected a break condition."
	CE_DNS := 2048.					"Windows 95 only: A parallel device is not selected"
	CE_FRAME := 8.						"The hardware detected a framing error."
	CE_IOE := 1024.					"An I/O error occurred during communications with the device."
	CE_MODE := 32768.				"The requested mode is not supported, or the hFile parameter is invalid."
	CE_OOP := 4096.					"Windows 95 only: A parallel device signaled that it is out of paper."
	CE_OVERRUN := 2.					"A character-buffer overrun has occurred. The next character is lost."
	CE_PTO := 512.					"Windows 95 only: A time-out occurred on a parallel device."
	CE_RXOVER := 1.					"An input buffer overflow has occurred. There is either no room in the input buffer, or a character was
						                          received after the end-of-file (EOF) character."
	CE_RXPARITY := 4.					"The hardware detected a parity error."
	CE_TXFULL := 256.					"The application tried to transmit a character, but the output buffer was full."
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initDebugConstants [
	"
	Initializes the debug constants as defined in winbase.h

		self initDebugConstants
	"

	"Debugging event codes that identify the type of debugging event"
	EXCEPTION_DEBUG_EVENT := 1.			"Reports an exception debugging event."
	CREATE_THREAD_DEBUG_EVENT := 2.		"Reports a create-thread debugging event."
	CREATE_PROCESS_DEBUG_EVENT := 3.		"Reports a create-process debugging event."
	EXIT_THREAD_DEBUG_EVENT := 4.			"Reports an exit-thread debugging event."
	EXIT_PROCESS_DEBUG_EVENT := 5.		"Reports an exit-process debugging event."
	LOAD_DLL_DEBUG_EVENT := 6.				"Reports a load-dynamic-link-library (DLL) debugging event."
	UNLOAD_DLL_DEBUG_EVENT := 7.			"Reports an unload-DLL debugging event."
	OUTPUT_DEBUG_STRING_EVENT := 8.		"Reports an output-debugging-string debugging event."
	RIP_EVENT := 9.								"Reports a RIP-debugging event (system debugging error)."
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initEventLogConstants [
	"
	Initializes the constants as defined in winbase.h

		self initEventLogConstants
	"

	EVENTLOG_FORWARDS_READ := 4.
	EVENTLOG_BACKWARDS_READ := 8.
	EVENTLOG_SEEK_READ := 2.
	EVENTLOG_SEQUENTIAL_READ := 1.
	EVENTLOG_ERROR_TYPE := 1.
	EVENTLOG_WARNING_TYPE := 2.
	EVENTLOG_INFORMATION_TYPE := 4.
	EVENTLOG_AUDIT_SUCCESS := 8.
	EVENTLOG_AUDIT_FAILURE := 16.
	FORMAT_MESSAGE_ALLOCATE_BUFFER := 256.
	FORMAT_MESSAGE_IGNORE_INSERTS := 512.
	FORMAT_MESSAGE_FROM_STRING := 1024.
	FORMAT_MESSAGE_FROM_HMODULE := 2048.
	FORMAT_MESSAGE_FROM_SYSTEM := 4096.
	FORMAT_MESSAGE_ARGUMENT_ARRAY := 8192.
	FORMAT_MESSAGE_MAX_WIDTH_MASK := 255.

	EV_BREAK := 64.
	EV_CTS := 8.
	EV_DSR := 16.
	EV_ERR := 128.
	EV_EVENT1 := 2048.
	EV_EVENT2 := 4096.
	EV_PERR := 512.
	EV_RING := 256.
	EV_RLSD := 32.
	EV_RX80FULL := 1024.
	EV_RXCHAR := 1.
	EV_RXFLAG := 2.
	EV_TXEMPTY := 4.

	SEM_FAILCRITICALERRORS := 16r0001.
	SEM_NOGPFAULTERRORBOX := 16r0002.
	SEM_NOALIGNMENTFAULTEXCEPT := 16r0004.
	SEM_NOOPENFILEERRORBOX := 16r8000.

	SLE_ERROR := 1.
	SLE_MINORERROR := 2.
	SLE_WARNING := 3.

	SHUTDOWN_NORETRY := 1.
	EXCEPTION_EXECUTE_HANDLER := 1.
	EXCEPTION_CONTINUE_EXECUTION := -1.
	EXCEPTION_CONTINUE_SEARCH := 0.

	MAXINTATOM := 16rC000.
	INVALID_ATOM := "(ATOM)"0.
	IGNORE := 0.

	NOPARITY := 0.
	ODDPARITY := 1.
	EVENPARITY := 2.
	MARKPARITY := 3.
	SPACEPARITY := 4.

	ONESTOPBIT := 0.
	ONE5STOPBITS := 1.
	ONE5STOPBITS := 2.

	CBR_110 := 110.
	CBR_300 := 300.
	CBR_600 := 600.
	CBR_1200 := 1200.
	CBR_2400 := 2400.
	CBR_4800 := 4800.
	CBR_9600 := 600.
	CBR_14400 := 14400.
	CBR_19200 := 19200.
	CBR_38400 := 38400.
	CBR_56000 := 56000.
	CBR_57600 := 57600.
	CBR_115200 := 115200.
	CBR_128000 := 128000.
	CBR_256000 := 256000.

	BACKUP_INVALID := 0.
	BACKUP_DATA := 1.
	BACKUP_EA_DATA := 2.
	BACKUP_SECURITY_DATA := 3.
	BACKUP_ALTERNATE_DATA := 4.
	BACKUP_LINK := 5.
	BACKUP_PROPERTY_DATA := 6.
	BACKUP_OBJECT_ID := 7.
	BACKUP_REPARSE_DATA := 8.
	BACKUP_SPARSE_BLOCK := 9.

	STREAM_NORMAL_ATTRIBUTE := 0.
	STREAM_MODIFIED_WHEN_READ := 1.
	STREAM_CONTAINS_SECURITY := 2.
	STREAM_CONTAINS_PROPERTIES := 4.

	STARTF_USESHOWWINDOW := 1.
	STARTF_USESIZE := 2.
	STARTF_USEPOSITION := 4.
	STARTF_USECOUNTCHARS := 8.
	STARTF_USEFILLATTRIBUTE := 16.
	STARTF_RUNFULLSCREEN := 32.
	STARTF_FORCEONFEEDBACK := 64.
	STARTF_FORCEOFFFEEDBACK := 128.
	STARTF_USESTDHANDLES := 256.
	STARTF_USEHOTKEY := 512.

 	TC_NORMAL := 0.
	TC_HARDERR := 1.
	TC_GP_TRAP := 2.
	TC_SIGNAL := 3.

 	AC_LINE_OFFLINE := 0.
	AC_LINE_ONLINE := 1.
	AC_LINE_BACKUP_POWER := 2.
	AC_LINE_UNKNOWN := 255.

    	BATTERY_FLAG_HIGH := 1.
	BATTERY_FLAG_LOW := 2.
	BATTERY_FLAG_CRITICAL := 4.
	BATTERY_FLAG_CHARGING := 8.
	BATTERY_FLAG_NO_BATTERY := 128.
	BATTERY_FLAG_UNKNOWN := 255.
	BATTERY_PERCENTAGE_UNKNOWN := 255.
	BATTERY_LIFE_UNKNOWN := 16rFFFFFFFF.

	DDD_RAW_TARGET_PATH := 1.
	DDD_REMOVE_DEFINITION := 2.
	DDD_EXACT_MATCH_ON_REMOVE := 4.

	HINSTANCE_ERROR := 32.
	MS_CTS_ON := 16.
	MS_DSR_ON := 32.
	MS_RING_ON := 64.
	MS_RLSD_ON := 128.

	DTR_CONTROL_DISABLE := 0.
	DTR_CONTROL_ENABLE := 1.
	DTR_CONTROL_HANDSHAKE := 2.
	RTS_CONTROL_DISABLE := 0.
	RTS_CONTROL_ENABLE := 1.
	RTS_CONTROL_HANDSHAKE := 2.
	RTS_CONTROL_TOGGLE := 3
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initExceptionHandlingConstants [
	"
	Initializes the memory constants as defined in winbase.h

		self initExceptionHandlingConstants
	"

	STATUS_WAIT_0 := 0.
	STATUS_ABANDONED_WAIT_0 := 16r80.
	STATUS_USER_APC := 16rC0.
	STATUS_TIMEOUT := 16r102.
	STATUS_PENDING := 16r103.
	STATUS_SEGMENT_NOTIFICATION := 16r40000005.
	STATUS_GUARD_PAGE_VIOLATION := 16r80000001.
	STATUS_DATATYPE_MISALIGNMENT := 16r80000002.
	STATUS_BREAKPOINT := 16r80000003.
	STATUS_SINGLE_STEP := 16r80000004.
	STATUS_ACCESS_VIOLATION := 16rC0000005.
	STATUS_IN_PAGE_ERROR := 16rC0000006.
	STATUS_INVALID_HANDLE := 16rC0000008"L".
	STATUS_NO_MEMORY := 16rC0000017.
	STATUS_ILLEGAL_INSTRUCTION := 16rC000001D.
	STATUS_NONCONTINUABLE_EXCEPTION := 16rC0000025.
	STATUS_INVALID_DISPOSITION := 16rC0000026.
	STATUS_ARRAY_BOUNDS_EXCEEDED := 16rC000008C.
	STATUS_FLOAT_DENORMAL_OPERAND := 16rC000008D.
	STATUS_FLOAT_DIVIDE_BY_ZERO := 16rC000008E.
	STATUS_FLOAT_INEXACT_RESULT := 16rC000008F.
	STATUS_FLOAT_INVALID_OPERATION := 16rC0000090.
	STATUS_FLOAT_OVERFLOW := 16rC0000091.
	STATUS_FLOAT_STACK_CHECK := 16rC0000092.
	STATUS_FLOAT_UNDERFLOW := 16rC0000093.
	STATUS_INTEGER_DIVIDE_BY_ZERO := 16rC0000094.
	STATUS_INTEGER_OVERFLOW := 16rC0000095.
	STATUS_PRIVILEGED_INSTRUCTION := 16rC0000096.
	STATUS_STACK_OVERFLOW := 16rC00000FD.
	STATUS_CONTROL_C_EXIT := 16rC000013A.
	STATUS_DLL_INIT_FAILED := 16rC0000142.
	STATUS_DLL_INIT_FAILED_LOGOFF := 16rC000026B.

	EXCEPTION_ACCESS_VIOLATION := STATUS_ACCESS_VIOLATION.
	EXCEPTION_DATATYPE_MISALIGNMENT := STATUS_DATATYPE_MISALIGNMENT.
	EXCEPTION_BREAKPOINT := STATUS_BREAKPOINT.
	EXCEPTION_SINGLE_STEP := STATUS_SINGLE_STEP.
	EXCEPTION_ARRAY_BOUNDS_EXCEEDED := STATUS_ARRAY_BOUNDS_EXCEEDED.
	EXCEPTION_FLT_DENORMAL_OPERAND := STATUS_FLOAT_DENORMAL_OPERAND.
	EXCEPTION_FLT_DIVIDE_BY_ZERO := STATUS_FLOAT_DIVIDE_BY_ZERO.
	EXCEPTION_FLT_INEXACT_RESULT := STATUS_FLOAT_INEXACT_RESULT.
	EXCEPTION_FLT_INVALID_OPERATION := STATUS_FLOAT_INVALID_OPERATION.
	EXCEPTION_FLT_OVERFLOW := STATUS_FLOAT_OVERFLOW.
	EXCEPTION_FLT_STACK_CHECK := STATUS_FLOAT_STACK_CHECK.
	EXCEPTION_FLT_UNDERFLOW := STATUS_FLOAT_UNDERFLOW.
	EXCEPTION_INT_DIVIDE_BY_ZERO := STATUS_INTEGER_DIVIDE_BY_ZERO.
	EXCEPTION_INT_OVERFLOW := STATUS_INTEGER_OVERFLOW.
	EXCEPTION_PRIV_INSTRUCTION := STATUS_PRIVILEGED_INSTRUCTION.
	EXCEPTION_IN_PAGE_ERROR := STATUS_IN_PAGE_ERROR.
	EXCEPTION_ILLEGAL_INSTRUCTION := STATUS_ILLEGAL_INSTRUCTION.
	EXCEPTION_NONCONTINUABLE_EXCEPTION := STATUS_NONCONTINUABLE_EXCEPTION.
	EXCEPTION_STACK_OVERFLOW := STATUS_STACK_OVERFLOW.
	EXCEPTION_INVALID_DISPOSITION := STATUS_INVALID_DISPOSITION.
	EXCEPTION_GUARD_PAGE := STATUS_GUARD_PAGE_VIOLATION.
	EXCEPTION_INVALID_HANDLE := STATUS_INVALID_HANDLE.
	CONTROL_C_EXIT := STATUS_CONTROL_C_EXIT
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initFileConstants [
	"
	Initializes the file constants as defined in winbase.h

		self initFileConstants
	"

	HFILE_ERROR := -1.

	INVALID_HANDLE_VALUE := "(HANDLE)" -1.
	INVALID_FILE_SIZE := -1.
	INVALID_SET_FILE_POINTER := -1.
	INVALID_FILE_ATTRIBUTES := -1.

	"Starting point for file pointer move"
	FILE_BEGIN := 0.							"The starting point is zero or the beginning of the file"
	FILE_CURRENT := 1.							"The current value of the file pointer is the starting point."
	FILE_END := 2.								"The current end-of-file position is the starting point."

	"Open file actions"
	OF_READ := 0.								"Opens the file for reading only."
	OF_READWRITE := 2.						"Opens the file for reading and writing."
	OF_WRITE := 1.								"Opens the file for writing only."
	OF_SHARE_COMPAT := 0.					"Opens the file using information in the reopen buffer."
	OF_SHARE_DENY_NONE := 64.				"Opens the file without denying read or write access to other processes."
	OF_SHARE_DENY_READ := 48.				"Opens the file and denies read access to other processes. "
	OF_SHARE_DENY_WRITE := 32.				"Opens the file and denies write access to other processes. "
	OF_SHARE_EXCLUSIVE := 16.				"Opens the file with exclusive mode, denying both read and write access to other processes."
	OF_CANCEL := 2048.						"Ignored."
	OF_CREATE := 4096.						"Creates a new file. If the file already exists, it is truncated to zero length."
	OF_DELETE := 512.							"Deletes the file."
	OF_EXIST := 16384.						"Opens the file and then closes it. Used to test for a file's existence."
	OF_PARSE := 256.							"Fills the OFSTRUCT structure but carries out no other action"
	OF_PROMPT := 8192.						"Displays a dialog box if the requested file does not exist. "
	OF_REOPEN := 32768.						"Opens the file using information in the reopen buffer"
	OF_VERIFY := 1024.							"Verifies that the date and time of the file are the same as when it was previously opened."

	"Named pipes"
	NMPWAIT_NOWAIT := 1.					"Does not wait for the named pipe."
	NMPWAIT_WAIT_FOREVER := -1.				"Waits indefinitely."
	NMPWAIT_USE_DEFAULT_WAIT := 0.		"Uses the default time-out specified in a call to the CreateNamedPipe function."

	"copy progress"
	PROGRESS_CONTINUE := 0.					"Continue the copy operation."
	PROGRESS_CANCEL := 1.					"Cancel the copy operation and delete the destination file."
	PROGRESS_STOP := 2.						"Stop the copy operation. It can be restarted at a later time."
	PROGRESS_QUIET := 3.						"Continue the copy operation, but stop invoking CopyProgressRoutine to report progress."

	"Reason that CopyProgressRoutine was called"
	CALLBACK_CHUNK_FINISHED := 0.			"Another part of the data file was copied."
	CALLBACK_STREAM_SWITCH := 1.			"Another stream was created and is about to be copied."

	"Flags specifying how a file is to be copied"
	COPY_FILE_FAIL_IF_EXISTS := 16r0001.							"The copy operation fails immediately if the target file already exists."
	COPY_FILE_RESTARTABLE := 16r0002.							"Progress of the copy is tracked in the target file in case the copy fails. "
	COPY_FILE_OPEN_SOURCE_FOR_WRITE := 16r0004.
	COPY_FILE_ALLOW_DECRYPTED_DESTINATION := 16r0008.
	COPY_FILE_COPY_SYMLINK := 16r0800.
	COPY_FILE_NO_BUFFERING := 16r1000.

	OFS_MAXPATHNAME := 128.									"Max pathname length for open file structure OFSTRUCT"
	FILE_MAP_ALL_ACCESS := 16rf001f.							"Same as FILE_MAP_WRITE"
	FILE_MAP_READ := 4.											"Read-only access. "
	FILE_MAP_WRITE := 2.											"Read-write access."
	FILE_MAP_COPY := 1.											"Copy on write access."

	FILE_FLAG_WRITE_THROUGH := 16r80000000.
	FILE_FLAG_OVERLAPPED := 1073741824.
	FILE_FLAG_NO_BUFFERING := 536870912.
	FILE_FLAG_RANDOM_ACCESS := 268435456.
	FILE_FLAG_SEQUENTIAL_SCAN := 134217728.
	FILE_FLAG_DELETE_ON_CLOSE := 67108864.
	FILE_FLAG_BACKUP_SEMANTICS := 33554432.
	FILE_FLAG_POSIX_SEMANTICS := 16777216.
	FILE_FLAG_OPEN_REPARSE_POINT := 2097152.
	FILE_FLAG_OPEN_NO_RECALL := 1048576.
	FILE_FLAG_FIRST_PIPE_INSTANCE := 524288.
	SYMBOLIC_LINK_FLAG_DIRECTORY := 16r1.

	CLRDTR := 6.
	CLRRTS := 4.
	SETDTR := 5.
	SETRTS := 3.
	SETXOFF := 1.
	SETXON := 2.
	SETBREAK := 8.
	CLRBREAK := 9.
	STILL_ACTIVE := 16r103.
	FIND_FIRST_EX_CASE_SENSITIVE := 1.

	SCS_32BIT_BINARY := 0.
	SCS_64BIT_BINARY := 6.
	SCS_DOS_BINARY := 1.
	SCS_OS216_BINARY := 5.
	SCS_PIF_BINARY := 3.
	SCS_POSIX_BINARY := 4.
	SCS_WOW_BINARY := 2.
	MAX_COMPUTERNAME_LENGTH := 15.
	HW_PROFILE_GUIDLEN := 39.
	MAX_PROFILE_LEN := 80.
	DOCKINFO_UNDOCKED := 1.
	DOCKINFO_DOCKED := 2.
	DOCKINFO_USER_SUPPLIED := 4.
	DOCKINFO_USER_UNDOCKED := (DOCKINFO_USER_SUPPLIED|DOCKINFO_UNDOCKED).
	DOCKINFO_USER_DOCKED := (DOCKINFO_USER_SUPPLIED|DOCKINFO_DOCKED).

	DRIVE_REMOVABLE := 2.
	DRIVE_FIXED := 3.
	DRIVE_REMOTE := 4.
	DRIVE_CDROM := 5.
	DRIVE_RAMDISK := 6.
	DRIVE_UNKNOWN := 0.
	DRIVE_NO_ROOT_DIR := 1.
	FILE_TYPE_UNKNOWN := 0.
	FILE_TYPE_UNKNOWN := 1.
	FILE_TYPE_CHAR := 2.
	FILE_TYPE_PIPE := 3.
	FILE_TYPE_REMOTE := 16r8000.
	FILE_ENCRYPTABLE := 0.
	FILE_IS_ENCRYPTED := 1.
	FILE_READ_ONLY := 8.
	FILE_ROOT_DIR := 3.
	FILE_SYSTEM_ATTR := 2.
	FILE_SYSTEM_DIR := 4.
	FILE_SYSTEM_NOT_SUPPORT := 6.
	FILE_UNKNOWN := 5.
	FILE_USER_DISALLOWED := 7.

	HANDLE_FLAG_INHERIT := 16r01.
	HANDLE_FLAG_PROTECT_FROM_CLOSE := 16r02.

	STD_INPUT_HANDLE := "(DWORD)" 16rfffffff6.
	STD_OUTPUT_HANDLE := "(DWORD)" 16rfffffff5.
	STD_ERROR_HANDLE := "(DWORD)" 16rfffffff4
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initFileSystemConstants [
	"
	Initializes the file system constants as defined in winbase.h

		self initFileSystemConstants
	"

	GET_TAPE_MEDIA_INFORMATION := 0.
	GET_TAPE_DRIVE_INFORMATION := 1.
	SET_TAPE_MEDIA_INFORMATION := 0.
	SET_TAPE_DRIVE_INFORMATION := 1.

	FS_CASE_IS_PRESERVED := 2.
	FS_CASE_SENSITIVE  := 1.
	FS_UNICODE_STORED_ON_DISK := 4.
	FS_PERSISTENT_ACLS := 8.
	FS_FILE_COMPRESSION := 16.
	FS_VOL_IS_COMPRESSED := 32768
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initMemoryConstants [
	"
	Initializes the memory constants as defined in winbase.h

		self initMemoryConstants
	"

	GMEM_FIXED := 0.
	GMEM_MOVEABLE := 2.
	GMEM_MODIFY := 128.
	GPTR := 64.
	GHND := 66.
	GMEM_DDESHARE := 8192.
	GMEM_DISCARDABLE := 256.
	GMEM_LOWER := 4096.
	GMEM_NOCOMPACT := 16.
	GMEM_NODISCARD := 32.
	GMEM_NOT_BANKED := 4096.
	GMEM_NOTIFY := 16384.
	GMEM_SHARE := 8192.
	GMEM_ZEROINIT := 64.
	GMEM_DISCARDED := 16384.
	GMEM_INVALID_HANDLE := 32768.
	GMEM_LOCKCOUNT := 255.
	GMEM_VALID_FLAGS := 32626
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initMemoryManagementConstants [
	"
	Initializes the memory constants as defined in winbase.h

		self initMemoryManagementConstants
	"

	PROCESS_HEAP_REGION := 1.
	PROCESS_HEAP_UNCOMMITTED_RANGE := 2.
	PROCESS_HEAP_ENTRY_BUSY := 4.
	PROCESS_HEAP_ENTRY_MOVEABLE := 16.
	PROCESS_HEAP_ENTRY_DDESHARE := 32.

	DONT_RESOLVE_DLL_REFERENCES := 1.
	LOAD_LIBRARY_AS_DATAFILE := 2.
	LOAD_WITH_ALTERED_SEARCH_PATH := 8.

	LMEM_FIXED := 0.
	LMEM_MOVEABLE := 2.
	LMEM_NONZEROLHND := 2.
	LMEM_NONZEROLPTR := 0.
	LMEM_DISCARDABLE := 3840.
	LMEM_NOCOMPACT := 16.
	LMEM_NODISCARD := 32.
	LMEM_ZEROINIT := 64.
	LMEM_DISCARDED := 16384.
	LMEM_MODIFY := 128.
	LMEM_INVALID_HANDLE := 32768.
	LMEM_LOCKCOUNT := 255.

	LPTR := 64.
	LHND := 66.
	NONZEROLHND := 2.
	NONZEROLPTR := 0.

	LOCKFILE_FAIL_IMMEDIATELY := 1.
	LOCKFILE_EXCLUSIVE_LOCK := 2.

	LOGON32_PROVIDER_DEFAULT := 0.
	LOGON32_PROVIDER_WINNT35 := 1.
	LOGON32_PROVIDER_WINNT40 := 2.
	LOGON32_PROVIDER_WINNT50 := 3.

	LOGON32_LOGON_INTERACTIVE := 2.
	LOGON32_LOGON_NETWORK := 3.
	LOGON32_LOGON_BATCH := 4.
	LOGON32_LOGON_SERVICE := 5.
	LOGON32_LOGON_UNLOCK := 7.
	LOGON32_LOGON_NETWORK_CLEARTEXT := 8.
	LOGON32_LOGON_NEW_CREDENTIALS := 9.

	MOVEFILE_REPLACE_EXISTING := 1.
	MOVEFILE_COPY_ALLOWED := 2.
	MOVEFILE_DELAY_UNTIL_REBOOT := 4.
	MOVEFILE_WRITE_THROUGH := 8.
	MAXIMUM_WAIT_OBJECTS := 64.
	MAXIMUM_SUSPEND_COUNT := 16r7F.
	WAIT_OBJECT_0 := 0.
	WAIT_ABANDONED_0 := 128.
	WAIT_TIMEOUT := 256.

	WAIT_IO_COMPLETION := 16rC0.
	WAIT_ABANDONED := 128.
	WAIT_FAILED := "(DWORD)" 16rFFFFFFFF.

	PURGE_TXABORT := 1.
	PURGE_RXABORT := 2.
	PURGE_TXCLEAR := 4.
	PURGE_RXCLEAR := 8
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initNamedObjectConstants [
	"
	Initializes the file constants as defined in winbase.h

		self initNamedObjectConstants
	"

	"Mutex"
	MUTEX_ALL_ACCESS := 16r1f0001.				"Specifies all possible access rights for a mutex object."
	MUTEX_MODIFY_STATE := 1.						"Specifies modify state (release) access."

	"Semaphore"
	SEMAPHORE_ALL_ACCESS := 16r1f0003.			"Specifies all possible access rights for a semaphore object."
	SEMAPHORE_MODIFY_STATE := 2.					"Specifies modify state (release) access."

	"Events"
	EVENT_ALL_ACCESS := 16r1f0003.					"Specifies all possible access rights for an event object."
	EVENT_MODIFY_STATE := 2.						"Specifies modify state (release) access."
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initPipeConstants [
	"
	Initializes the pipe constants as defined in winbase.h

		self initPipeConstants
	"

	"Pipe access mode"
	PIPE_ACCESS_DUPLEX := 3.				"The pipe is bidirectional; both server and client processes can read from and write to the pipe."
	PIPE_ACCESS_INBOUND := 1.			"The flow of data in the pipe goes from client to server only."
	PIPE_ACCESS_OUTBOUND := 2.			"The flow of data in the pipe goes from server to client only. "

	"Pipe types"
	PIPE_TYPE_BYTE := 0.					"Data is written to the pipe as a stream of bytes. "
	PIPE_TYPE_MESSAGE := 4.				"Data is written to the pipe as a stream of messages."

	PIPE_READMODE_BYTE := 0.			"Data is read from the pipe as a stream of bytes."
	PIPE_READMODE_MESSAGE := 2.		"Data is read from the pipe as a stream of messages."

	PIPE_WAIT := 0.							"Blocking mode is enabled."
	PIPE_NOWAIT := 1.						"Nonblocking mode is enabled."

	PIPE_CLIENT_END := 0.					"The handle refers to the client end of a named pipe instance."
	PIPE_SERVER_END := 1.					"The handle refers to the server end of a named pipe instance. "
	PIPE_UNLIMITED_INSTANCES := 255.	"The number of pipe instances that can be created is limited only by the availability of system resources."
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initProcessConstants [
	"
	Initializes the debug constants as defined in winbase.h

		self initProcessConstants
	"

	DEBUG_PROCESS := 16r00000001.						"The calling process is treated as a debugger, and the new process is a process being debugged."
	DEBUG_ONLY_THIS_PROCESS := 16r00000002.		"The calling thread starts and debugs the new process."

	CREATE_SUSPENDED := 16r00000004.
	DETACHED_PROCESS := 16r00000008.
	CREATE_NEW_CONSOLE := 16r00000010.
	NORMAL_PRIORITY_CLASS := 16r00000020.
	IDLE_PRIORITY_CLASS := 16r00000040.
	HIGH_PRIORITY_CLASS := 16r00000080.
	REALTIME_PRIORITY_CLASS := 16r00000100.
	CREATE_NEW_PROCESS_GROUP := 16r00000200.
	CREATE_UNICODE_ENVIRONMENT := 16r00000400.
	CREATE_SEPARATE_WOW_VDM := 16r00000800.
	CREATE_SHARED_WOW_VDM := 16r00001000.
	CREATE_FORCEDOS := 16r00002000.

	BELOW_NORMAL_PRIORITY_CLASS := 16r00004000.
	ABOVE_NORMAL_PRIORITY_CLASS := 16r00008000.
	CREATE_BREAKAWAY_FROM_JOB := 16r01000000.
	CREATE_WITH_USERPROFILE := 16r02000000.
	CREATE_DEFAULT_ERROR_MODE := 16r04000000.
	CREATE_NO_WINDOW := 16r08000000.

	PROFILE_USER := 16r10000000.
	PROFILE_KERNEL := 16r20000000.
	PROFILE_SERVER := 16r40000000.

	CONSOLE_TEXTMODE_BUFFER := 1.

	CREATE_NEW := 1.
	CREATE_ALWAYS := 2.
	OPEN_EXISTING := 3.
	OPEN_ALWAYS := 4.
	TRUNCATE_EXISTING := 5.

	THREAD_MODE_BACKGROUND_BEGIN := 16r00010000.
	THREAD_MODE_BACKGROUND_END := 16r00020000.
	THREAD_PRIORITY_ABOVE_NORMAL := 1.
	THREAD_PRIORITY_BELOW_NORMAL := -1.
	THREAD_PRIORITY_HIGHEST := 2.
	THREAD_PRIORITY_IDLE := -15.
	THREAD_PRIORITY_LOWEST := -2.
	THREAD_PRIORITY_NORMAL := 0.
	THREAD_PRIORITY_TIME_CRITICAL := 15.
	THREAD_PRIORITY_ERROR_RETURN := 2147483647.

	INFINITE := 16rFFFFFFFF
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initTimeZoneConstants [
	"
	Initializes the file system constants as defined in winbase.h

		self initTimeZoneConstants
	"

	TIME_ZONE_ID_UNKNOWN := 0.
	TIME_ZONE_ID_STANDARD := 1.
	TIME_ZONE_ID_DAYLIGHT := 2.
	TIME_ZONE_ID_INVALID := 16rFFFFFFFF
]

{ #category : #'class initialization' }
WinBaseConstants class >> initialize [
	"Initializes the receiver class

		self initialize
	"

	self
		initCommunicationConstants;
		initDebugConstants;
		initFileConstants;
		initNamedObjectConstants;
		initPipeConstants;
		initProcessConstants;
		initFileSystemConstants;
		initTimeZoneConstants;
		initMemoryConstants;
		initExceptionHandlingConstants;
		initMemoryManagementConstants;
		initEventLogConstants;
		initializeUndocumented
]

{ #category : #'private - initialization' }
WinBaseConstants class >> initializeUndocumented [
	"
	Initializes undocumented constants

		self initializeUndocumented
	"

	STARTF_TITLESHORTCUT := 16r800.
	STARTF_MONITOR := 16r400.				"used to specify a handle to a monitor, on which to start the new process."
	STARTF_SCREENSAVER := 16r80000000.	"seems vaguely useful for a screen-saver"
]
