"
Provides access to windows control panel applets
"
Class {
	#name : 'WinControlPanel',
	#superclass : 'Object',
	#category : 'OS-Windows-Environment-Shell',
	#package : 'OS-Windows-Environment',
	#tag : 'Shell'
}

{ #category : 'private' }
WinControlPanel class >> shellRunDLL: cmd [

	^WinShell shellRunDLL: cmd
]

{ #category : 'applets - accessibility' }
WinControlPanel class >> showAccessibilityCommonSettings [
	"Show the common settings for accessibility

		self showAccessibilityCommonSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,5'
]

{ #category : 'applets - accessibility' }
WinControlPanel class >> showAccessibilityDisplaySettings [
	"Show the keyboard settings

		self showAccessibilityDisplaySettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,3'
]

{ #category : 'applets - accessibility' }
WinControlPanel class >> showAccessibilityKeyboardSettings [
	"Show the keyboard settings for Windows accessibility

		self showAccessibilityKeyboardSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,1'
]

{ #category : 'applets - accessibility' }
WinControlPanel class >> showAccessibilityMouseSettings [
	"Show the mouse settings for accessibility

		self showAccessibilityMouseSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,4'
]

{ #category : 'applets - accessibility' }
WinControlPanel class >> showAccessibilitySoundSettings [
	"Show the sound settings for accessibility

		self showAccessibilitySoundSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,2'
]

{ #category : 'applets - printing' }
WinControlPanel class >> showAddPrinterWizard [
	"
	self showAddPrinterWizard
	"

	^self shellRunDLL: 'shell32.dll,SHHelpShortcuts_RunDLL AddPrinter'
]

{ #category : 'applets - communication' }
WinControlPanel class >> showBluetoothSettings [
	"
		self showBluetoothSettings
	"

	^self shellRunDLL: 'irprops.cpl,,BluetoothAuthenticationAgent'
]

{ #category : 'applets - communication' }
WinControlPanel class >> showCOMPortsSettings [
	"
	self showCOMPortsSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL ports.cpl'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showContentAdvisor [
	"Show the welcome center

		self showContentAdvisor
	"

	^self shellRunDLL: 'msrating.dll,RatingSetupUI'
]

{ #category : 'applets - common' }
WinControlPanel class >> showControlPanel [
	"
	self showControlPanel
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL'
]

{ #category : 'utilities' }
WinControlPanel class >> showControlPanelFolder [

	WinExplorer openControlPanelFolder
]

{ #category : 'applets - system' }
WinControlPanel class >> showDateTimeProperties [
	"
	self showDateTimeProperties
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Timedate.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showDateTimePropertiesTimezone [
	"
	self showDateTimePropertiesTimezone
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL timedate.cpl,,/f'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showDeviceManager [
	"
	self showDeviceManager
	"

	^self shellRunDLL: 'devmgr.dll DeviceManager_Execute'
]

{ #category : 'applets - display' }
WinControlPanel class >> showDisplaySettingsAppearance [
	"
		self showDisplaySettingsAppearance
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,2'
]

{ #category : 'applets - display' }
WinControlPanel class >> showDisplaySettingsBackground [
	"
		self showDisplaySettingsBackground
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,0'
]

{ #category : 'applets - display' }
WinControlPanel class >> showDisplaySettingsCommon [
	"
		self showDisplaySettingsCommon
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,3'
]

{ #category : 'applets - display' }
WinControlPanel class >> showDisplaySettingsScreenSaver [
	"
		self showDisplaySettingsScreenSaver
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,1'
]

{ #category : 'applets - system' }
WinControlPanel class >> showFindFastSetting [
	"
		self showFindFastSetting
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL findfast.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showFolderOptionsFileTypes [
	"
	self showFolderOptionsFileTypes
	"

	^self shellRunDLL: 'shell32.dll,Options_RunDLL 1'
]

{ #category : 'applets - system' }
WinControlPanel class >> showFolderOptionsGeneral [
	"
	self showFolderOptionsGeneral
	"

	^self shellRunDLL: 'shell32.dll,Options_RunDLL 0'
]

{ #category : 'applets - system' }
WinControlPanel class >> showFolderOptionsSearch [
	"
	self showFolderOptionsSearch
	"

	^self shellRunDLL: 'shell32.dll,Options_RunDLL 2'
]

{ #category : 'applets - fonts' }
WinControlPanel class >> showFontsInstallationFolder [
	"
	self showFontsInstallationFolder
	"

	^self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL FontsFolder'
]

{ #category : 'applets - fonts' }
WinControlPanel class >> showFontsProperties [
	"
	self showFontsProperties
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @3'
]

{ #category : 'applets - system' }
WinControlPanel class >> showForgottenPasswordWizard [
	"
	self showForgottenPasswordWizard
	"

	^self shellRunDLL: 'keymgr.dll,PRShowSaveWizardExW'
]

{ #category : 'applets - system' }
WinControlPanel class >> showFormatDrive [
	"
	self showFormatDrive
	"

	^self shellRunDLL: 'shell32.dll,SHFormatDrive'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showHotPlugRemoveDialog [
	"
	self showHotPlugRemoveDialog
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL HotPlug.dll'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsCurrency [
	"
		self showInternationalSettingsCurrency
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,2'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsDate [
	"Show the internation settings for input locales.

		self showInternationalSettingsDate
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,4'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsInputLocales [
	"Show the internation settings for input locales.

		self showInternationalSettingsInputLocales
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,5'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsNumber [
	"Show the internation settings dialog for number.

		self showInternationalSettingsNumber
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,1'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsRegionalSettings [
	"Show the regional and language settings.

		self showInternationalSettingsRegionalSettings
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,0'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsTime [
	"Show the internation settings for input locales.

		self showInternationalSettingsTime
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,3'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetExplorerFavoriteManager [
	"
	self showInternetExplorerFavoriteManager
	"

	^self shellRunDLL: 'shdocvw.dll,DoOrganizeFavDlg'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetExplorerSettings [
	"Show the internet explorer settings

		self showInternetExplorerSettings
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,6'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsAdvanced [
	"
		self showInternetSettingsAdvanced
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,6'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsConnections [
	"
		self showInternetSettingsConnections
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,4'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsContent [
	"
		self showInternetSettingsContent
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,3'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsGeneral [
	"
		self showInternetSettingsGeneral
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,0'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsPrograms [
	"
		self showInternetSettingsPrograms
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,5'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsSecurity [
	"
		self showInternetSettingsSecurity
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,1'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showJoystickSettings [
	"
		self showJoystickSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL joy.cpl'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showKeyboardProperties [
	"
	self showKeyboardProperties
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @1'
]

{ #category : 'applets - communication' }
WinControlPanel class >> showMailAndFaxSettings [
	"
	self showMailAndFaxSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mlcfg32.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showMapNetworkDriveWizard [
	"
	self showMapNetworkDriveWizard
	"

	^self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL Connect'
]

{ #category : 'applets - communication' }
WinControlPanel class >> showMicrosoftWorkgroupPostofficeSettings [
	"
	self showMicrosoftWorkgroupPostofficeSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL wgpocpl.cpl'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showModemSettings [
	"
	self showModemSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL modem.cpl'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showMouseProperties [
	"
	self showMouseProperties
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL main.cpl @0,0'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsAudio [
	"
	self showMultimediaSettingsAudio
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,0'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsCDMusic [
	"
	self showMultimediaSettingsCDMusic
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,3'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsDevices [
	"
	self showMultimediaSettingsDevices
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,4'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsMIDI [
	"
	self showMultimediaSettingsMIDI
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,2'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsVideo [
	"
	self showMultimediaSettingsVideo
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,1'
]

{ #category : 'applets - system' }
WinControlPanel class >> showODBCSettings [
	"
	self showODBCSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL odbccp32.cpl'
]

{ #category : 'applets - fonts' }
WinControlPanel class >> showPassportWizard [
	"
	self showPassportWizard
	"

	^self shellRunDLL: 'netplwiz.dll, PassportWizardRunDll'
]

{ #category : 'applets - system' }
WinControlPanel class >> showPowerOptions [
	"
	self showPowerOptions
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Ups.cpl'
]

{ #category : 'applets - printing' }
WinControlPanel class >> showPrinterManagementFolder [
	"
	self showPrinterManagementFolder
	"

	^self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL PrintersFolder'
]

{ #category : 'applets - printing' }
WinControlPanel class >> showPrinterProperties [
	"
	self showPrinterProperties
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @2'
]

{ #category : 'applets - program' }
WinControlPanel class >> showProgramPropertiesInstallUninstall [
	"
		self showProgramPropertiesInstallUninstall
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,1'
]

{ #category : 'applets - program' }
WinControlPanel class >> showProgramPropertiesStartupDisk [
	"
		self showProgramPropertiesStartupDisk
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,3'
]

{ #category : 'applets - program' }
WinControlPanel class >> showProgramPropertiesWindowsSetup [
	"
		self showProgramPropertiesWindowsSetup
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,2'
]

{ #category : 'applets - system' }
WinControlPanel class >> showServerProperties [
	"
		self showServerProperties
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL srvmgr.cpl'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showSoundSettings [
	"Show the sound properties dialog box.

		self showSoundSettings
	"

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Mmsys.cpl,,0'
]

{ #category : 'applets - security' }
WinControlPanel class >> showStoredUsernamesAndPasswords [
	"
	self showStoredUsernamesAndPasswords
	"

	^self shellRunDLL: 'keymgr.dll,KRShowKeyMgr'
]

{ #category : 'applets - system' }
WinControlPanel class >> showSystemSettings [
	"Show the system settings. Note that the argument zero opens the first tab.

		self showSystemSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL wscui.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showTaskbarProperties [
	"
	self showTaskbarProperties
	"

	^self shellRunDLL: 'shell32.dll,Options_RunDLL 1'
]

{ #category : 'applets - communication' }
WinControlPanel class >> showTelephonySettings [
	"
		self showTelephonySettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL telephon.cpl'
]

{ #category : 'applets - display' }
WinControlPanel class >> showThemesSettings [
	"
	self showThemesSettings
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL themes.cpl'
]

{ #category : 'applets - security' }
WinControlPanel class >> showUserAccounts [
	"
	self showUserAccounts
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL nusrmgr.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showWelcomeCenter [
	"Show the welcome center

		self showWelcomeCenter
	"

	^self shellRunDLL: 'oobefldr.dll,ShowWelcomeCenter'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showWindowsFirewall [
	"
	self showWindowsFirewall
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL firewall.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showWindowsSecurityCenter [
	"
	self showWindowsSecurityCenter
	"

	^self shellRunDLL: 'shell32.dll,Control_RunDLL wscui.cpl'
]
