"
Provides access to the windows explorer.

Includes wrapper for standard folders (HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions)
"
Class {
	#name : #WinExplorer,
	#superclass : #Object,
	#pools : [
		'WinBaseConstants',
		'WinTypes',
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Shell'
}

{ #category : #private }
WinExplorer class >> explore: aString [

	^WinShell shellExplore: aString
]

{ #category : #'instance creation' }
WinExplorer class >> open [
	"Open the windows explorer"
	<script>

	^ WinProcess createProcess: 'explorer.exe'
]

{ #category : #'defaults - Windows 10' }
WinExplorer class >> openAccountPictures [
	<script>

	self explore: 'shell:AccountPictures'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openAddNewProgramsFolder [
	<script>

	self explore: 'shell:AddNewProgramsFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openAdministrativeTools [
	<script>

	self explore: 'shell:Administrative Tools'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openAppData [
	<script>

	self explore: 'shell:AppData'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openAppUpdatesFolder [
	<script>

	self explore: 'shell:AppUpdatesFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCDBurning [
	<script>

	self explore: 'shell:CD Burning'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCSCFolder [
	<script>

	self explore: 'shell:CSCFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCache [
	<script>

	self explore: 'shell:Cache'
]

{ #category : #'defaults - Windows 10' }
WinExplorer class >> openCaptures [
	<script>

	self explore: 'shell:Captures'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openChangeRemoveProgramsFolder [
	<script>

	self explore: 'shell:ChangeRemoveProgramsFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonAdministrativeTools [
	<script>

	self explore: 'shell:Common Administrative Tools'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonAppData [
	<script>

	self explore: 'shell:CommonAppData'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonDesktop [
	<script>

	self explore: 'shell::Common Desktop'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonDocuments [
	<script>

	self explore: 'shell:Common Documents'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonDownloads [
	<script>

	self explore: 'shell:CommonDownloads'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonMusic [
	<script>

	self explore: 'shell:CommonMusic'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonPictures [
	<script>

	self explore: 'shell:CommonPictures'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonPrograms [
	<script>

	self explore: 'shell:Common Programs'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openCommonRingtones [
	<script>

	self explore: 'shell:CommonRingtones'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonStartMenu [
	<script>

	self explore: 'shell:Common Start Menu'
]

{ #category : #'defaults - Windows 10' }
WinExplorer class >> openCommonStartup [
	<script>

	self explore: 'shell:Common Startup'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonTemplates [
	<script>

	self explore: 'shell:Common Templates'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonVideo [
	<script>

	self explore: 'shell:CommonVideo'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openConflictFolder [
	<script>

	self explore: 'shell:ConflictFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openConnectionsFolder [
	<script>

	self explore: 'shell:ConnectionsFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openContacts [
	<script>

	self explore: 'shell:Contacts'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openControlPanelFolder [
	<script>

	self explore: 'shell:ControlPanelFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCookies [
	<script>

	self explore: 'shell:Cookies'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCredentialManager [
	<script>

	self explore: 'shell:CredentialManager'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openCryptoKeys [
	<script>

	self explore: 'shell:CryptoKeys'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openDefaultGadgets [
	<script>

	self explore: 'shell:Default Gadgets'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openDesktop [
	<script>

	self explore: 'shell:Desktop'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openDeviceMetadataStore [
	<script>

	self explore: 'shell:Device Metadata Store'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openDocumentsLibrary [
	<script>

	self explore: 'shell:DocumentsLibrary'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openDownloads [
	"see also openLocalDownloads"
	<script>

	self explore: 'shell:Downloads'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openDpapiKeys [
	<script>

	self explore: 'shell:DpapiKeys'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openFavorites [
	<script>

	self explore: 'shell:Favorites'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openFonts [
	<script>

	self explore: 'shell:Fonts'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openGadgets [
	<script>

	self explore: 'shell:Gadgets'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openGameTasks [
	<script>

	self explore: 'shell:GameTasks'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openGames [
	<script>

	self explore: 'shell:Games'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openHistory [
	<script>

	self explore: 'shell:History'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openImplicitAppShortcuts [
	<script>

	self explore: 'shell:ImplicitAppShortcuts'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openInternetFolder [
	<script>

	self explore: 'shell:InternetFolder'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openLibraries [
	<script>

	self explore: 'shell:Libraries'
]

{ #category : #'defaults - Windows 10' }
WinExplorer class >> openLinks [
	<script>

	self explore: 'shell:Links'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openLocalAppData [
	<script>

	self explore: 'shell:Local AppData'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openLocalAppDataLow [
	<script>

	self explore: 'shell:LocalAppDataLow'
]

{ #category : #'defaults - Windows 10' }
WinExplorer class >> openLocalDownloads [
	"see also openDownloads"
	<script>

	self explore: 'shell:Local Downloads'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openLocalizedResourcesDir [
	<script>

	self explore: 'shell:LocalizedResourcesDir'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openMAPIFolder [
	<script>

	self explore: 'shell:MAPIFolder'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openMusicLibrary [
	<script>

	self explore: 'shell:MusicLibrary'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openMyComputerFolder [
	<script>

	self explore: 'shell:MyComputerFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openMyMusic [
	<script>

	self explore: 'shell:My Music'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openMyPictures [
	<script>

	self explore: 'shell:MyPictures'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openMyVideo [
	<script>

	self explore: 'shell:My Video'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openNetHood [
	<script>

	self explore: 'shell:NetHood'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openNetworkPlacesFolder [
	<script>

	self explore: 'shell:NetworkPlacesFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openOEMLinks [
	<script>

	self explore: 'shell:OEM Links'
]

{ #category : #'defaults - Windows 10' }
WinExplorer class >> openOneDriveCameraRoll [
	<script>

	self explore: 'shell:OneDriveCameraRoll'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openOriginalImages [
	<script>

	self explore: 'shell:Original Images'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openOtherUsersFolder [
	<script>

	self explore: 'shell:OtherUsersFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openPersonal [
	<script>

	self explore: 'shell:Personal'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openPhotoAlbums [
	<script>

	self explore: 'shell:PhotoAlbums'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openPicturesLibrary [
	<script>

	self explore: 'shell:PicturesLibrary'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openPlaylists [
	<script>

	self explore: 'shell:Playlists'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openPrintHood [
	<script>

	self explore: 'shell:PrintHood'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openPrintersFolder [
	<script>

	self explore: 'shell:PrintersFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openProfile [
	<script>

	self explore: 'shell:Profile'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openProgramFiles [
	<script>

	self explore: 'shell:ProgramFiles'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openProgramFilesCommon [
	<script>

	self explore: 'shell:ProgramFilesCommon'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openProgramFilesCommonX86 [
	<script>

	self explore: 'shell:ProgramFilesCommonX86'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openProgramFilesX86 [
	<script>

	self explore: 'shell:ProgramFilesX86'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openPrograms [
	<script>

	self explore: 'shell:Programs'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openPublic [
	<script>

	self explore: 'shell:Public'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openPublicGameTasks [
	<script>

	self explore: 'shell:PublicGameTasks'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openPublicSuggestedLocations [
	<script>

	self explore: 'shell:PublicSuggestedLocations'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openQuickLaunch [
	<script>

	self explore: 'shell:Quick Launch'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openRecent [
	<script>

	self explore: 'shell:Recent'
]

{ #category : #'defaults - Windows 10' }
WinExplorer class >> openRecycleBinFolder [
	<script>

	self explore: 'shell:RecycleBinFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openResourceDir [
	<script>

	self explore: 'shell:ResourceDir'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openRingtones [
	<script>

	self explore: 'shell:Ringtones'
]

{ #category : #'defaults - Windows 10' }
WinExplorer class >> openRoamingTiles [
	<script>

	self explore: 'shell:Roaming Tiles'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSampleMusic [
	<script>

	self explore: 'shell:SampleMusic'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSamplePictures [
	<script>

	self explore: 'shell:SamplePictures'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSamplePlaylists [
	<script>

	self explore: 'shell:SamplePlaylists'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSampleVideos [
	<script>

	self explore: 'shell:SampleVideos'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSavedGames [
	<script>

	self explore: 'shell:SavedGames'
]

{ #category : #'defaults - Windows 10' }
WinExplorer class >> openScreenshots [
	<script>

	self explore: 'shell:Screenshots'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSearchHomeFolder [
	<script>

	self explore: 'shell:SearchHomeFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSearches [
	<script>

	self explore: 'shell:Searches'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSendTo [
	<script>

	self explore: 'shell:SendTo'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openStartMenu [
	<script>

	self explore: 'shell:Start Menu'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openStartup [
	<script>

	self explore: 'shell:Startup'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSyncCenterFolder [
	<script>

	self explore: 'shell:SyncCenterFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSyncResultsFolder [
	<script>

	self explore: 'shell:SyncResultsFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSyncSetupFolder [
	<script>

	self explore: 'shell:SyncSetupFolder'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSystem [
	<script>

	self explore: 'shell:System'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSystemCertificates [
	<script>

	self explore: 'shell:SystemCertificates'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openSystemX86 [
	<script>

	self explore: 'shell:SystemX86'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openTemplates [
	<script>

	self explore: 'shell:Templates'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openTreePropertiesFolder [
	<script>

	self explore: 'shell:TreePropertiesFolder'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openUserPinned [
	<script>

	self explore: 'shell:User Pinned'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openUserProfiles [
	<script>

	self explore: 'shell:UserProfiles'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openUsersFilesFolder [
	<script>

	self explore: 'shell:UsersFilesFolder'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openUsersLibrariesFolder [
	<script>

	self explore: 'shell:UsersLibrariesFolder'
]

{ #category : #'defaults - Windows 7' }
WinExplorer class >> openVideosLibrary [
	<script>

	self explore: 'shell:VideosLibrary'
]

{ #category : #'defaults - Windows 7 and Vista' }
WinExplorer class >> openWindows [
	<script>

	self explore: 'shell:Windows'
]
