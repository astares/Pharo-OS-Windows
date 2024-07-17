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
	"Show the common settings for accessibility."
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,5'
]

{ #category : 'applets - accessibility' }
WinControlPanel class >> showAccessibilityDisplaySettings [
	"Show the keyboard settings."
	<script>

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,3'
]

{ #category : 'applets - accessibility' }
WinControlPanel class >> showAccessibilityKeyboardSettings [
	"Show the keyboard settings for Windows accessibility."
	<script>

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,1'
]

{ #category : 'applets - accessibility' }
WinControlPanel class >> showAccessibilityMouseSettings [
	"Show the mouse settings for accessibility."
	<script>

	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,4'
]

{ #category : 'applets - accessibility' }
WinControlPanel class >> showAccessibilitySoundSettings [
	"Show the sound settings for accessibility"
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,2'
]

{ #category : 'applets - printing' }
WinControlPanel class >> showAddPrinterWizard [
	<script>

	^ self shellRunDLL: 'shell32.dll,SHHelpShortcuts_RunDLL AddPrinter'
]

{ #category : 'applets - communication' }
WinControlPanel class >> showBluetoothSettings [
	<script>

	^ self shellRunDLL: 'irprops.cpl,,BluetoothAuthenticationAgent'
]

{ #category : 'applets - communication' }
WinControlPanel class >> showCOMPortsSettings [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL ports.cpl'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showContentAdvisor [
	"Show the welcome center."
	<script>

	^ self shellRunDLL: 'msrating.dll,RatingSetupUI'
]

{ #category : 'applets - common' }
WinControlPanel class >> showControlPanel [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL'
]

{ #category : 'utilities' }
WinControlPanel class >> showControlPanelFolder [
	<script>

	WinExplorer openControlPanelFolder
]

{ #category : 'applets - system' }
WinControlPanel class >> showDateTimeProperties [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Timedate.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showDateTimePropertiesTimezone [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL timedate.cpl,,/f'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showDeviceManager [
	<script>

	^ self shellRunDLL: 'devmgr.dll DeviceManager_Execute'
]

{ #category : 'applets - display' }
WinControlPanel class >> showDisplaySettingsAppearance [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,2'
]

{ #category : 'applets - display' }
WinControlPanel class >> showDisplaySettingsBackground [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,0'
]

{ #category : 'applets - display' }
WinControlPanel class >> showDisplaySettingsCommon [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,3'
]

{ #category : 'applets - display' }
WinControlPanel class >> showDisplaySettingsScreenSaver [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,1'
]

{ #category : 'applets - system' }
WinControlPanel class >> showFindFastSetting [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL findfast.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showFolderOptionsFileTypes [
	<script>

	^ self shellRunDLL: 'shell32.dll,Options_RunDLL 1'
]

{ #category : 'applets - system' }
WinControlPanel class >> showFolderOptionsGeneral [
	<script>

	^ self shellRunDLL: 'shell32.dll,Options_RunDLL 0'
]

{ #category : 'applets - system' }
WinControlPanel class >> showFolderOptionsSearch [
	<script>

	^ self shellRunDLL: 'shell32.dll,Options_RunDLL 2'
]

{ #category : 'applets - fonts' }
WinControlPanel class >> showFontsInstallationFolder [
	<script>

	^ self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL FontsFolder'
]

{ #category : 'applets - fonts' }
WinControlPanel class >> showFontsProperties [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @3'
]

{ #category : 'applets - system' }
WinControlPanel class >> showForgottenPasswordWizard [
	<script>

	^ self shellRunDLL: 'keymgr.dll,PRShowSaveWizardExW'
]

{ #category : 'applets - system' }
WinControlPanel class >> showFormatDrive [
	<script>

	^ self shellRunDLL: 'shell32.dll,SHFormatDrive'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showHotPlugRemoveDialog [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL HotPlug.dll'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsCurrency [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,2'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsDate [
	"Show the internation settings for input locales."
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,4'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsInputLocales [
	"Show the internation settings for input locales."
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,5'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsNumber [
	"Show the internation settings dialog for number."
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,1'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsRegionalSettings [
	"Show the regional and language settings."
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,0'
]

{ #category : 'applets - I18N' }
WinControlPanel class >> showInternationalSettingsTime [
	"Show the internation settings for input locales."
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,3'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetExplorerFavoriteManager [
	<script>

	^ self shellRunDLL: 'shdocvw.dll,DoOrganizeFavDlg'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetExplorerSettings [
	"Show the internet explorer settings"
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,6'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsAdvanced [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,6'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsConnections [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,4'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsContent [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,3'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsGeneral [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,0'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsPrograms [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,5'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showInternetSettingsSecurity [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,1'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showJoystickSettings [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL joy.cpl'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showKeyboardProperties [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @1'
]

{ #category : 'applets - communication' }
WinControlPanel class >> showMailAndFaxSettings [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL mlcfg32.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showMapNetworkDriveWizard [
	<script>

	^ self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL Connect'
]

{ #category : 'applets - communication' }
WinControlPanel class >> showMicrosoftWorkgroupPostofficeSettings [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL wgpocpl.cpl'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showModemSettings [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL modem.cpl'
]

{ #category : 'applets - hardware' }
WinControlPanel class >> showMouseProperties [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL main.cpl @0,0'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsAudio [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,0'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsCDMusic [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,3'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsDevices [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,4'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsMIDI [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,2'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsVideo [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,1'
]

{ #category : 'applets - system' }
WinControlPanel class >> showODBCSettings [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL odbccp32.cpl'
]

{ #category : 'applets - fonts' }
WinControlPanel class >> showPassportWizard [
	<script>

	^ self shellRunDLL: 'netplwiz.dll, PassportWizardRunDll'
]

{ #category : 'applets - system' }
WinControlPanel class >> showPowerOptions [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Ups.cpl'
]

{ #category : 'applets - printing' }
WinControlPanel class >> showPrinterManagementFolder [
	<script>

	^ self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL PrintersFolder'
]

{ #category : 'applets - printing' }
WinControlPanel class >> showPrinterProperties [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @2'
]

{ #category : 'applets - program' }
WinControlPanel class >> showProgramPropertiesInstallUninstall [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,1'
]

{ #category : 'applets - program' }
WinControlPanel class >> showProgramPropertiesStartupDisk [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,3'
]

{ #category : 'applets - program' }
WinControlPanel class >> showProgramPropertiesWindowsSetup [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,2'
]

{ #category : 'applets - system' }
WinControlPanel class >> showServerProperties [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL srvmgr.cpl'
]

{ #category : 'applets - multimedia' }
WinControlPanel class >> showSoundSettings [
	<script>

	^ self shellRunDLL: 'Shell32.dll,Control_RunDLL Mmsys.cpl,,0'
]

{ #category : 'applets - security' }
WinControlPanel class >> showStoredUsernamesAndPasswords [
	<script>

	^ self shellRunDLL: 'keymgr.dll,KRShowKeyMgr'
]

{ #category : 'applets - system' }
WinControlPanel class >> showSystemSettings [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL wscui.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showTaskbarProperties [
	<script>

	^ self shellRunDLL: 'shell32.dll,Options_RunDLL 1'
]

{ #category : 'applets - communication' }
WinControlPanel class >> showTelephonySettings [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL telephon.cpl'
]

{ #category : 'applets - display' }
WinControlPanel class >> showThemesSettings [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL themes.cpl'
]

{ #category : 'applets - security' }
WinControlPanel class >> showUserAccounts [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL nusrmgr.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showWelcomeCenter [
	<script>

	^ self shellRunDLL: 'oobefldr.dll,ShowWelcomeCenter'
]

{ #category : 'applets - internet' }
WinControlPanel class >> showWindowsFirewall [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL firewall.cpl'
]

{ #category : 'applets - system' }
WinControlPanel class >> showWindowsSecurityCenter [
	<script>

	^ self shellRunDLL: 'shell32.dll,Control_RunDLL wscui.cpl'
]
