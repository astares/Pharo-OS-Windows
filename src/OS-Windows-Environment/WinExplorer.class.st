"
Provides access to the windows explorer.

Includes wrapper for standard folders (HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FolderDescriptions)
"
Class {
	#name : 'WinExplorer',
	#superclass : 'Object',
	#pools : [
		'WinBaseConstants',
		'WinTypes',
		'WinUserConstants'
	],
	#category : 'OS-Windows-Environment-Shell',
	#package : 'OS-Windows-Environment',
	#tag : 'Shell'
}

{ #category : 'private' }
WinExplorer class >> explore: aString [

	^WinShell shellExplore: aString
]

{ #category : 'instance creation' }
WinExplorer class >> open [
	"Open the windows explorer"

	^WinProcess createProcess: 'explorer.exe'
]

{ #category : 'defaults - Windows 10' }
WinExplorer class >> openAccountPictures [

	self explore: 'shell:AccountPictures'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openAddNewProgramsFolder [

	self explore: 'shell:AddNewProgramsFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openAdministrativeTools [

	self explore: 'shell:Administrative Tools'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openAppData [

	self explore: 'shell:AppData'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openAppUpdatesFolder [

	self explore: 'shell:AppUpdatesFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCDBurning [

	self explore: 'shell:CD Burning'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCSCFolder [

	self explore: 'shell:CSCFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCache [

	self explore: 'shell:Cache'
]

{ #category : 'defaults - Windows 10' }
WinExplorer class >> openCaptures [

	self explore: 'shell:Captures'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openChangeRemoveProgramsFolder [

	self explore: 'shell:ChangeRemoveProgramsFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonAdministrativeTools [

	self explore: 'shell:Common Administrative Tools'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonAppData [

	self explore: 'shell:CommonAppData'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonDesktop [

	self explore: 'shell::Common Desktop'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonDocuments [

	self explore: 'shell:Common Documents'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonDownloads [

	self explore: 'shell:CommonDownloads'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonMusic [

	self explore: 'shell:CommonMusic'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonPictures [

	self explore: 'shell:CommonPictures'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonPrograms [

	self explore: 'shell:Common Programs'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openCommonRingtones [

	self explore: 'shell:CommonRingtones'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonStartMenu [

	self explore: 'shell:Common Start Menu'
]

{ #category : 'defaults - Windows 10' }
WinExplorer class >> openCommonStartup [

	self explore: 'shell:Common Startup'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonTemplates [

	self explore: 'shell:Common Templates'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCommonVideo [

	self explore: 'shell:CommonVideo'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openConflictFolder [

	self explore: 'shell:ConflictFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openConnectionsFolder [

	self explore: 'shell:ConnectionsFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openContacts [

	self explore: 'shell:Contacts'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openControlPanelFolder [

	self explore: 'shell:ControlPanelFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCookies [

	self explore: 'shell:Cookies'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCredentialManager [

	self explore: 'shell:CredentialManager'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openCryptoKeys [

	self explore: 'shell:CryptoKeys'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openDefaultGadgets [

	self explore: 'shell:Default Gadgets'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openDesktop [

	self explore: 'shell:Desktop'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openDeviceMetadataStore [

	self explore: 'shell:Device Metadata Store'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openDocumentsLibrary [

	self explore: 'shell:DocumentsLibrary'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openDownloads [
	"see also openLocalDownloads"

	self explore: 'shell:Downloads'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openDpapiKeys [

	self explore: 'shell:DpapiKeys'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openFavorites [

	self explore: 'shell:Favorites'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openFonts [

	self explore: 'shell:Fonts'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openGadgets [

	self explore: 'shell:Gadgets'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openGameTasks [

	self explore: 'shell:GameTasks'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openGames [

	self explore: 'shell:Games'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openHistory [

	self explore: 'shell:History'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openImplicitAppShortcuts [

	self explore: 'shell:ImplicitAppShortcuts'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openInternetFolder [

	self explore: 'shell:InternetFolder'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openLibraries [

	self explore: 'shell:Libraries'
]

{ #category : 'defaults - Windows 10' }
WinExplorer class >> openLinks [

	self explore: 'shell:Links'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openLocalAppData [

	self explore: 'shell:Local AppData'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openLocalAppDataLow [

	self explore: 'shell:LocalAppDataLow'
]

{ #category : 'defaults - Windows 10' }
WinExplorer class >> openLocalDownloads [
	"see also openDownloads"

	self explore: 'shell:Local Downloads'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openLocalizedResourcesDir [

	self explore: 'shell:LocalizedResourcesDir'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openMAPIFolder [

	self explore: 'shell:MAPIFolder'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openMusicLibrary [

	self explore: 'shell:MusicLibrary'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openMyComputerFolder [

	self explore: 'shell:MyComputerFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openMyMusic [

	self explore: 'shell:My Music'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openMyPictures [

	self explore: 'shell:MyPictures'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openMyVideo [

	self explore: 'shell:My Video'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openNetHood [

	self explore: 'shell:NetHood'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openNetworkPlacesFolder [

	self explore: 'shell:NetworkPlacesFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openOEMLinks [

	self explore: 'shell:OEM Links'
]

{ #category : 'defaults - Windows 10' }
WinExplorer class >> openOneDriveCameraRoll [

	self explore: 'shell:OneDriveCameraRoll'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openOriginalImages [

	self explore: 'shell:Original Images'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openOtherUsersFolder [

	self explore: 'shell:OtherUsersFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openPersonal [

	self explore: 'shell:Personal'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openPhotoAlbums [

	self explore: 'shell:PhotoAlbums'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openPicturesLibrary [

	self explore: 'shell:PicturesLibrary'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openPlaylists [

	self explore: 'shell:Playlists'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openPrintHood [

	self explore: 'shell:PrintHood'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openPrintersFolder [

	self explore: 'shell:PrintersFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openProfile [

	self explore: 'shell:Profile'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openProgramFiles [

	self explore: 'shell:ProgramFiles'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openProgramFilesCommon [

	self explore: 'shell:ProgramFilesCommon'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openProgramFilesCommonX86 [

	self explore: 'shell:ProgramFilesCommonX86'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openProgramFilesX86 [

	self explore: 'shell:ProgramFilesX86'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openPrograms [

	self explore: 'shell:Programs'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openPublic [

	self explore: 'shell:Public'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openPublicGameTasks [

	self explore: 'shell:PublicGameTasks'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openPublicSuggestedLocations [

	self explore: 'shell:PublicSuggestedLocations'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openQuickLaunch [

	self explore: 'shell:Quick Launch'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openRecent [

	self explore: 'shell:Recent'
]

{ #category : 'defaults - Windows 10' }
WinExplorer class >> openRecycleBinFolder [

	self explore: 'shell:RecycleBinFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openResourceDir [

	self explore: 'shell:ResourceDir'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openRingtones [

	self explore: 'shell:Ringtones'
]

{ #category : 'defaults - Windows 10' }
WinExplorer class >> openRoamingTiles [

	self explore: 'shell:Roaming Tiles'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSampleMusic [

	self explore: 'shell:SampleMusic'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSamplePictures [

	self explore: 'shell:SamplePictures'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSamplePlaylists [

	self explore: 'shell:SamplePlaylists'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSampleVideos [

	self explore: 'shell:SampleVideos'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSavedGames [

	self explore: 'shell:SavedGames'
]

{ #category : 'defaults - Windows 10' }
WinExplorer class >> openScreenshots [

	self explore: 'shell:Screenshots'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSearchHomeFolder [

	self explore: 'shell:SearchHomeFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSearches [

	self explore: 'shell:Searches'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSendTo [

	self explore: 'shell:SendTo'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openStartMenu [

	self explore: 'shell:Start Menu'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openStartup [

	self explore: 'shell:Startup'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSyncCenterFolder [

	self explore: 'shell:SyncCenterFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSyncResultsFolder [

	self explore: 'shell:SyncResultsFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSyncSetupFolder [

	self explore: 'shell:SyncSetupFolder'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSystem [

	self explore: 'shell:System'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSystemCertificates [

	self explore: 'shell:SystemCertificates'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openSystemX86 [

	self explore: 'shell:SystemX86'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openTemplates [

	self explore: 'shell:Templates'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openTreePropertiesFolder [

	self explore: 'shell:TreePropertiesFolder'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openUserPinned [

	self explore: 'shell:User Pinned'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openUserProfiles [

	self explore: 'shell:UserProfiles'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openUsersFilesFolder [

	self explore: 'shell:UsersFilesFolder'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openUsersLibrariesFolder [

	self explore: 'shell:UsersLibrariesFolder'
]

{ #category : 'defaults - Windows 7' }
WinExplorer class >> openVideosLibrary [

	self explore: 'shell:VideosLibrary'
]

{ #category : 'defaults - Windows 7 and Vista' }
WinExplorer class >> openWindows [

	self explore: 'shell:Windows'
]
