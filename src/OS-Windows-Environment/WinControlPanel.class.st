"
Provides access to windows control panel applets
"
Class {
	#name : #WinControlPanel,
	#superclass : #Object,
	#category : #'OS-Windows-Environment-Shell'
}

{ #category : #private }
WinControlPanel class >> shellRunDLL: cmd [

	^WinShell shellRunDLL: cmd
]

{ #category : #'applets - accessibility' }
WinControlPanel class >> showAccessibilityCommonSettings [
	"Show the common settings for accessibility
	
		self showAccessibilityCommonSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,5'
]

{ #category : #'applets - accessibility' }
WinControlPanel class >> showAccessibilityDisplaySettings [
	"Show the keyboard settings 
	
		self showAccessibilityDisplaySettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,3'
]

{ #category : #'applets - accessibility' }
WinControlPanel class >> showAccessibilityKeyboardSettings [
	"Show the keyboard settings for Windows accessibility
	
		self showAccessibilityKeyboardSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,1'
]

{ #category : #'applets - accessibility' }
WinControlPanel class >> showAccessibilityMouseSettings [
	"Show the mouse settings for accessibility 
	
		self showAccessibilityMouseSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,4'
]

{ #category : #'applets - accessibility' }
WinControlPanel class >> showAccessibilitySoundSettings [
	"Show the sound settings for accessibility 
	
		self showAccessibilitySoundSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL access.cpl,,2'
]

{ #category : #'applets - printing' }
WinControlPanel class >> showAddPrinterWizard [
	"
	self showAddPrinterWizard
	"
	<script>
	^self shellRunDLL: 'shell32.dll,SHHelpShortcuts_RunDLL AddPrinter' 
]

{ #category : #'applets - communication' }
WinControlPanel class >> showBluetoothSettings [
	"	
		self showBluetoothSettings
	"
	<script>
	^self shellRunDLL: 'irprops.cpl,,BluetoothAuthenticationAgent'
]

{ #category : #'applets - communication' }
WinControlPanel class >> showCOMPortsSettings [
	"
	self showCOMPortsSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL ports.cpl' 
]

{ #category : #'applets - internet' }
WinControlPanel class >> showContentAdvisor [
	"Show the welcome center
	
		self showContentAdvisor
	"
	<script>
	^self shellRunDLL: 'msrating.dll,RatingSetupUI'
]

{ #category : #'applets - common' }
WinControlPanel class >> showControlPanel [
	"
	self showControlPanel
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL'
]

{ #category : #utilities }
WinControlPanel class >> showControlPanelFolder [
	<script>
	WinExplorer openControlPanelFolder
]

{ #category : #'applets - system' }
WinControlPanel class >> showDateTimeProperties [
	"
	self showDateTimeProperties
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Timedate.cpl'
]

{ #category : #'applets - system' }
WinControlPanel class >> showDateTimePropertiesTimezone [
	"
	self showDateTimePropertiesTimezone
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL timedate.cpl,,/f'
]

{ #category : #'applets - hardware' }
WinControlPanel class >> showDeviceManager [
	"
	self showDeviceManager
	"
	<script>	
	^self shellRunDLL: 'devmgr.dll DeviceManager_Execute'
]

{ #category : #'applets - display' }
WinControlPanel class >> showDisplaySettingsAppearance [
	"  	
		self showDisplaySettingsAppearance
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,2'
]

{ #category : #'applets - display' }
WinControlPanel class >> showDisplaySettingsBackground [
	"  	
		self showDisplaySettingsBackground
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,0'
]

{ #category : #'applets - display' }
WinControlPanel class >> showDisplaySettingsCommon [
	"  	
		self showDisplaySettingsCommon
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,3'
]

{ #category : #'applets - display' }
WinControlPanel class >> showDisplaySettingsScreenSaver [
	"  	
		self showDisplaySettingsScreenSaver
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL desk.cpl,,1'
]

{ #category : #'applets - system' }
WinControlPanel class >> showFindFastSetting [
	"
		self showFindFastSetting
	"
	<script>	
	^self shellRunDLL: 'shell32.dll,Control_RunDLL findfast.cpl'
]

{ #category : #'applets - system' }
WinControlPanel class >> showFolderOptionsFileTypes [
	"
	self showFolderOptionsFileTypes
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Options_RunDLL 1' 
]

{ #category : #'applets - system' }
WinControlPanel class >> showFolderOptionsGeneral [
	"
	self showFolderOptionsGeneral
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Options_RunDLL 0'
]

{ #category : #'applets - system' }
WinControlPanel class >> showFolderOptionsSearch [
	"
	self showFolderOptionsSearch
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Options_RunDLL 2' 
]

{ #category : #'applets - fonts' }
WinControlPanel class >> showFontsInstallationFolder [
	"
	self showFontsInstallationFolder
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL FontsFolder'
]

{ #category : #'applets - fonts' }
WinControlPanel class >> showFontsProperties [
	"
	self showFontsProperties
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @3'
]

{ #category : #'applets - system' }
WinControlPanel class >> showForgottenPasswordWizard [
	"
	self showForgottenPasswordWizard
	"
	<script>
	^self shellRunDLL: 'keymgr.dll,PRShowSaveWizardExW' 
]

{ #category : #'applets - system' }
WinControlPanel class >> showFormatDrive [
	"
	self showFormatDrive
	"
	<script>
	^self shellRunDLL: 'shell32.dll,SHFormatDrive'
]

{ #category : #'applets - hardware' }
WinControlPanel class >> showHotPlugRemoveDialog [
	"
	self showHotPlugRemoveDialog
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL HotPlug.dll'
]

{ #category : #'applets - I18N' }
WinControlPanel class >> showInternationalSettingsCurrency [
	"	
		self showInternationalSettingsCurrency
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,2'
]

{ #category : #'applets - I18N' }
WinControlPanel class >> showInternationalSettingsDate [
	"Show the internation settings for input locales.
	
		self showInternationalSettingsDate
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,4'
]

{ #category : #'applets - I18N' }
WinControlPanel class >> showInternationalSettingsInputLocales [
	"Show the internation settings for input locales.
	
		self showInternationalSettingsInputLocales
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,5'
]

{ #category : #'applets - I18N' }
WinControlPanel class >> showInternationalSettingsNumber [
	"Show the internation settings dialog for number.
	
		self showInternationalSettingsNumber
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,1'
]

{ #category : #'applets - I18N' }
WinControlPanel class >> showInternationalSettingsRegionalSettings [
	"Show the regional and language settings. 
	
		self showInternationalSettingsRegionalSettings
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,0'
]

{ #category : #'applets - I18N' }
WinControlPanel class >> showInternationalSettingsTime [
	"Show the internation settings for input locales.
	
		self showInternationalSettingsTime
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Intl.cpl,,3'
]

{ #category : #'applets - internet' }
WinControlPanel class >> showInternetExplorerFavoriteManager [
	"
	self showInternetExplorerFavoriteManager
	"
	<script>
	^self shellRunDLL: 'shdocvw.dll,DoOrganizeFavDlg'
]

{ #category : #'applets - internet' }
WinControlPanel class >> showInternetExplorerSettings [
	"Show the internet explorer settings 
	
		self showInternetExplorerSettings
	"
	<script>

	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,6'
]

{ #category : #'applets - internet' }
WinControlPanel class >> showInternetSettingsAdvanced [
	"  	
		self showInternetSettingsAdvanced
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,6'
]

{ #category : #'applets - internet' }
WinControlPanel class >> showInternetSettingsConnections [
	"  	
		self showInternetSettingsConnections
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,4'
]

{ #category : #'applets - internet' }
WinControlPanel class >> showInternetSettingsContent [
	"  	
		self showInternetSettingsContent
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,3'
]

{ #category : #'applets - internet' }
WinControlPanel class >> showInternetSettingsGeneral [
	"  	
		self showInternetSettingsGeneral
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,0'
]

{ #category : #'applets - internet' }
WinControlPanel class >> showInternetSettingsPrograms [
	"  	
		self showInternetSettingsPrograms
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,5'
]

{ #category : #'applets - internet' }
WinControlPanel class >> showInternetSettingsSecurity [
	"  	
		self showInternetSettingsSecurity
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Inetcpl.cpl,,1'
]

{ #category : #'applets - hardware' }
WinControlPanel class >> showJoystickSettings [
	"	
		self showJoystickSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL joy.cpl'
]

{ #category : #'applets - hardware' }
WinControlPanel class >> showKeyboardProperties [
	"
	self showKeyboardProperties
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @1'
]

{ #category : #'applets - communication' }
WinControlPanel class >> showMailAndFaxSettings [
	"
	self showMailAndFaxSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL mlcfg32.cpl'
]

{ #category : #'applets - system' }
WinControlPanel class >> showMapNetworkDriveWizard [
	"
	self showMapNetworkDriveWizard
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL Connect'
]

{ #category : #'applets - communication' }
WinControlPanel class >> showMicrosoftWorkgroupPostofficeSettings [
	"
	self showMicrosoftWorkgroupPostofficeSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL wgpocpl.cpl'
]

{ #category : #'applets - hardware' }
WinControlPanel class >> showModemSettings [
	"
	self showModemSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL modem.cpl' 
]

{ #category : #'applets - hardware' }
WinControlPanel class >> showMouseProperties [
	"
	self showMouseProperties
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL main.cpl @0,0'
]

{ #category : #'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsAudio [
	"
	self showMultimediaSettingsAudio
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,0'
]

{ #category : #'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsCDMusic [
	"
	self showMultimediaSettingsCDMusic
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,3'
]

{ #category : #'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsDevices [
	"
	self showMultimediaSettingsDevices
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,4'
]

{ #category : #'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsMIDI [
	"
	self showMultimediaSettingsMIDI
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,2'
]

{ #category : #'applets - multimedia' }
WinControlPanel class >> showMultimediaSettingsVideo [
	"
	self showMultimediaSettingsVideo
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL mmsys.cpl,,1'
]

{ #category : #'applets - system' }
WinControlPanel class >> showODBCSettings [
	"
	self showODBCSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL odbccp32.cpl' 
]

{ #category : #'applets - fonts' }
WinControlPanel class >> showPassportWizard [
	"
	self showPassportWizard
	"
	<script>
	^self shellRunDLL: 'netplwiz.dll, PassportWizardRunDll'
]

{ #category : #'applets - system' }
WinControlPanel class >> showPowerOptions [
	"
	self showPowerOptions
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Ups.cpl'
]

{ #category : #'applets - printing' }
WinControlPanel class >> showPrinterManagementFolder [
	"
	self showPrinterManagementFolder
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,SHHelpShortcuts_RunDLL PrintersFolder'
]

{ #category : #'applets - printing' }
WinControlPanel class >> showPrinterProperties [
	"
	self showPrinterProperties
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL main.cpl @2'
]

{ #category : #'applets - program' }
WinControlPanel class >> showProgramPropertiesInstallUninstall [
	"  	
		self showProgramPropertiesInstallUninstall
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,1'
]

{ #category : #'applets - program' }
WinControlPanel class >> showProgramPropertiesStartupDisk [
	"  	
		self showProgramPropertiesStartupDisk
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,3'
]

{ #category : #'applets - program' }
WinControlPanel class >> showProgramPropertiesWindowsSetup [
	"  	
		self showProgramPropertiesWindowsSetup
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL appwiz.cpl,,2'
]

{ #category : #'applets - system' }
WinControlPanel class >> showServerProperties [
	"
		self showServerProperties
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL srvmgr.cpl' 
]

{ #category : #'applets - multimedia' }
WinControlPanel class >> showSoundSettings [
	"Show the sound properties dialog box. 
	
		self showSoundSettings
	"
	<script>
	^self shellRunDLL: 'Shell32.dll,Control_RunDLL Mmsys.cpl,,0'
]

{ #category : #'applets - security' }
WinControlPanel class >> showStoredUsernamesAndPasswords [
	"
	self showStoredUsernamesAndPasswords
	"
	<script>
	^self shellRunDLL: 'keymgr.dll,KRShowKeyMgr'
]

{ #category : #'applets - system' }
WinControlPanel class >> showSystemSettings [
	"Show the system settings. Note that the argument zero opens the first tab. 
	
		self showSystemSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL wscui.cpl'
]

{ #category : #'applets - system' }
WinControlPanel class >> showTaskbarProperties [
	"
	self showTaskbarProperties
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Options_RunDLL 1'
]

{ #category : #'applets - communication' }
WinControlPanel class >> showTelephonySettings [
	"
		self showTelephonySettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL telephon.cpl' 
]

{ #category : #'applets - display' }
WinControlPanel class >> showThemesSettings [
	"
	self showThemesSettings
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL themes.cpl' 
]

{ #category : #'applets - security' }
WinControlPanel class >> showUserAccounts [
	"
	self showUserAccounts
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL nusrmgr.cpl'
]

{ #category : #'applets - system' }
WinControlPanel class >> showWelcomeCenter [
	"Show the welcome center
	
		self showWelcomeCenter
	"
	<script>
	^self shellRunDLL: 'oobefldr.dll,ShowWelcomeCenter'
]

{ #category : #'applets - internet' }
WinControlPanel class >> showWindowsFirewall [
	"
	self showWindowsFirewall
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL firewall.cpl'
]

{ #category : #'applets - system' }
WinControlPanel class >> showWindowsSecurityCenter [
	"
	self showWindowsSecurityCenter
	"
	<script>
	^self shellRunDLL: 'shell32.dll,Control_RunDLL wscui.cpl'
]
