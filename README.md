# Pharo-OS-Windows
Support for Windows operating system for Pharo, migrated from [http://www.smalltalkhub.com/#!/~OS/OS-Windows](http://www.smalltalkhub.com/#!/~OS/OS-Windows)

# The OS PROJECT FOR PHARO

# Introduction

[Pharo][1] with an integrated external interface offers new ways to interact with the ouside world from within your Smalltalk image. Beside interacting with external libraries from other OpenSource projects or commercial libraries it is also very useful to call and use the underlying operating system platform.

The **[OS project][6]** on SmalltalkHub is intended to provide such a layer on top of UFFI. Starting with the Windows operating system our hope is that other will jump onto the bandwagon and help to extend it to support other platforms (Mac, Linux, ...) as well. 

It is possible to generate Pharo code for native interfaces - but we prefer handcrafted code to wrap the native platform since often the underlying API's and names are not very well designed. This way we can make sure to provide a more object-oriented abstraction and more alignment with the Pharo philosophy to provide a clean and innovative environment.  

### Requirements

The **[OS project][6]** requires at least Pharo 3.0. You can grab a copy of Pharo for your platform from the [Pharo file server][3].

### Packages and Naming

The project **[OS project][6]** defines a standard for package names - if you want to support the project it would be necessary to follow it. 
The first part of a package name has to begin with **"OS-"** followed by the name of the platform (for instance *"OS-Windows"* or "OS-Mac"). 

Any following package name is up to the packages that will be provided. It is a good style to provide some kind of ***Core*** package, like *"OS-Windows-Core"* defining functionality common to other dependent packages. 
It is also a good practice to separate the tests in an own packages so they can be loaded only if required.   

----------------------------------------------------------------------
# Windows Support 
## OS-Windows project

Windows support is defined in the project The **[OS-Windows][2]** - a subproject of **[OS project][6]** 
 
### Installation 

You can install the packages either directly from the Pharo configuration browser or with the following script: 

```Smalltalk
Metacello new 
	repository: 'github://astares/Pharo-OS-Windows/src';
	baseline: 'OSWindows' ;
	load
```

By default all packages are loaded as well as the tests. Open the test runner and run all tests from the "OS" category to see if its fully working and report any issue you may find.

----------------------------------------------------------------------
### Debugging
#### Pharo debugging vs. native debugging
There is nothing more helpful for development than a debugger that shows you your code and lets you walk through it. Pharo has a very powerful interactive debugger. Did you know that (compared to traditional development environments in other languages) you can save your Pharo image while debugging and open it the next day to continue to step through your program? Just try it! 
 
If you work with native environments like Windows it may (in very rare cases) be very helpful to additionally use external debug possibilities. This is useful for VM developers or people who dive deep down into the low level world of assembler (which is also possible from within Pharo with NativeBoost and ASMJit, less with new UFFI). Additional external debug support can also be helpful if you run the Pharo image headless without  any user interface.

In these rare cases you can use:

```Smalltalk
WinDebugger outputDebugString: 'Some debug info from my program'
```

to write to the windows debug stream. While running can catch and display such messages with various tools like "DebugView" or dbmon.exe. You can get these tools for free on the internet.

It can also be possible that you want to know if Pharo (the virtual machine of Pharo to be precise) is running under the control of a debugger. The following expression can help you here:

```Smalltalk
WinDebugger isDebuggerPresent
```

----------------------------------------------------------------------
### Processes and Threads
#### Process creation - nonblocking

The class ***WinProcess*** provides access to native OS processes of Windows - so you can use it to start other native processes: 

```Smalltalk
WinProcess createProcess: 'explorer.exe'
```

It returns also an instance of ***WinProcessInformation*** which you can use to query for the PID of the new process:

```Smalltalk
(WinProcess createProcess: 'explorer.exe') processId
```

or the new process itself:

```Smalltalk
(WinProcess createProcess: 'explorer.exe') process
```

When you start a new operating system process this way you will notice that Pharo continues independently. So it is not blocked and both processes run in parallel. 

#### Process creation - blocking

You may have the requirement that you start an external operating system process and wait until its processing is finished before you continue within your Pharo program. Here is an example:

```Smalltalk
WinProcess createAndWaitForProcess: 'cmd.exe'.
Transcript show: 'The external process just finished'.
```

This opens a new command line window and the Pharo process (virtual machine process) is blocked until you either enter "EXIT" or close the console window. 
After that Pharo continues its work and writes to the Transcript.

#### The VM Process

When you start Pharo you start the virtual machine which is a normal platform dependent executable file that runs as a native operating system process. You can access this process of the Pharo virtual machine using the following expression:

```Smalltalk
WinProcess currentProcess
```

By default the VM runs with normal priority which you can check with:

```Smalltalk
WinProcess currentProcess isNormalPriorityClass
```

which should return true.

Any process running on the operating system is associated with a PID (Process Identifier). If you start a second VM you will start a new native OS Process with a different process ID.
Use this expression to get the PID:

```Smalltalk
WinProcess currentProcessId
```

Compare that with the PID that is displayed in the Windows TaskManager.

You can also query for some startup informations:

```Smalltalk
WinProcess startupInfo wasStartedFromAShortcut
```

or

```Smalltalk
WinProcess startupInfo title
```

to find out how and where the virtual machine was started.

#### Threads

The Pharo VM provides its own internal managed process handling to stay portable. Also the number of the underlying operating system processes may be limited - which is no problem for you if you use Pharo.  

So in a simple VM Pharo runs within a single thread within a single OS process. You can access this thread using:

```Smalltalk
WinThread currentThread
```

and 

```Smalltalk
WinThread currentThreadId
```

Note that there are implementation (like Cog-VM) that provide a multithreaded variant of the VM.

----------------------------------------------------------------------
### The Windows User Interface

#### Windows

In a graphical environment like Windows, a window is a rectangular area of the screen where the application displays output and receives input from the user. 

So "Windows" are from the API point of view not only the framed windows that your move around. Also an edit widget or a list view in windows is represented as an own window, usually these are referred as child windows. Even the desktop background itself is an own Window.

You can get the active window using:

```Smalltalk
WinWindow activeWindow
```

and query or manipulate it:

```Smalltalk
WinWindow activeWindow title inspect.
WinWindow activeWindow title: 'Pharo main window title'	
```

If you have a window instance you can easily find out about the area 
it fills on the screen:

```Smalltalk
WinWindow desktopWindow windowRectangle
```

or set its position

```Smalltalk
WinWindow activeWindow moveTo: 20@10
```

You can also show and hide a window as this example proves:

```Smalltalk
|win|
win := WinWindow activeWindow.
win hide.
(Delay forSeconds: 2) wait.
win show
```

...

----------------------------------------------------------------------
### Graphics

#### Basic drawing

Any native window in the Windows operating system provides a device context (DC). You can easily access it if you have a window object. Since Pharo runs in a single native window we can access its windows device context easily:

```Smalltalk
WinWindow pharoWindow deviceContext 
```

The device context (represented by instances of class ***WinDeviceContext***) can be used to draw:

```Smalltalk
WinWindow pharoWindow deviceContext 
     drawRectangle: (10@10 extent: 100@100)
```

You can also access the device context of the whole Window desktop allowing to draw outside of the Pharo window

```Smalltalk
WinDeviceContext desktopDeviceContext  
    drawEllipse: (0@0 extent: 100@100)
```

#### Why draw using native Windows-API
Pharo has several possibilities to draw - by default there is Morphic that draws
inside the Pharo window. There is also Athens (which is also based on NativeBoost) allowing you to work with vector graphics and that is portable across several platforms.

But as you have seen from the desktop example with native access to the windows graphic system (GDI and GDI+) in this project it is also possible to draw outside the Pharo window. So by default one should go the usual Pharo route (Morphi, Athens) for drawing and use the mentioned way only if required.

----------------------------------------------------------------------
### Dialogs
#### MessageBox

Windows provides by default a message box that can be used to inform the user. Have a look at class ***WinMessageBox***. It is still unfinished but you can test:

```Smalltalk
WinMessageBox test
```

----------------------------------------------------------------------
### Shell support

#### Open a URL
You can easily use the class WinShell to open a web browser on a given URL.

```Smalltalk
WinShell shellBrowse: 'http://www.pharo-project.org'
```

If you have more than one web browser installed you should note that Windows uses the default browser that is associated with HTML files.

#### Open a document

If you want to open an application that is associated with a specific file extension then you can use the ***#shellOpen:*** message. Here is an example:

```Smalltalk
WinShell shellOpen: 'c:\pharo.pdf'
```

#### Open Explorer
The Windows explorer is a shell browser that gives you access to the file system. You can open it on any folder in the filesystem very easily:

```Smalltalk
WinShell shellExplore: 'C:\'
```

Note that you can also open it on any virtual folder within the system:

```Smalltalk
WinShell shellExplore: 'shell:Cookies'
```

#### Using Windows explorer
By default you can easily open the windows explorer with

```Smalltalk
WinExplorer open
```

With the class ***WinExplorer*** there is a more convinient way to open virtual folders. Just check the various class side methods - here are some useful examples:

```Smalltalk
WinExplorer openDesktop.
WinExplorer openContacts. 
WinExplorer openCookies.
```

#### Using Internet Explorer
To start the Windows Internet Explorer browse use the following expression:

```Smalltalk
WinInternetExplorer open
```

or open it directly on a URL:

```Smalltalk
WinInternetExplorer open: 'http://association.pharo.org'
```

You can open the IE browser also in kiosk mode which is fullscreen:

```Smalltalk
WinInternetExplorer openKioskMode.
WinInternetExplorer openKioskMode: 'http://consortium.pharo.org'
```

If you work with the [Seaside][4] web framework for Pharo or other web frameworks you may find this snippet very handy:

```Smalltalk
WinExplorer openCookies.
WinInternetExplorer deleteCookies
```

You can also delete the browser history:

```Smalltalk
WinExplorer openHistory.
WinInternetExplorer deleteHistory
```

or clean up some more:

```Smalltalk
WinInternetExplorer deleteFormData.
WinInternetExplorer deletePasswords
```

----------------------------------------------------------------------

### Environment 
#### Getting environment infos

First of all you may need to know on which windows you are running:

```Smalltalk
Smalltalk os isWin32 
```

You also may want to see if you are running on 32 or 64 bit:

```Smalltalk
WinEnvironment is64BitWindows 
```

It is also often required to get information about environment settings like the environment variables. Here are some examples that you should inspect one after the other:

```Smalltalk
WinEnvironment getEnvironmentVariable: 'PATH'.
WinEnvironment getPathEntries.
WinEnvironment getPathExtensions.
```

#### Getting processor infos
Often it is interesting to find out how many processors the system is running on:

```Smalltalk
WinEnvironment getNumberOfProcessors
```

You may also want to know more about the details of the underlying processor, its easy to query:

```Smalltalk
WinEnvironment getProcessorArchitecture.
WinEnvironment getProcessorIdentifier.
WinEnvironment getProcessorLevel.
WinEnvironment getProcessorRevision	
```

#### Getting other infos

Here are some more useful informations from the environment:

```Smalltalk
WinEnvironment getUserName.
WinEnvironment getComputerName
```

or infos about the file system configuration:

```Smalltalk
WinEnvironment getDriveType: WinEnvironment getHomeDrive.
```

Usually this will return *#DRIVE_FIXED* while (depending on your hardware setup) the following expression 

```Smalltalk
WinEnvironment getDriveType:  'D:'
```

may return *#DRIVE_CDROM*

#### Accessing the user session

It is possible to access the user session from within Pharo very 
easily. If you like you can lock the workstation using the following expression:

```Smalltalk
WinUserSession lockWorkstation
```

Or if you want to hibernate the windows session just evaluate:

```Smalltalk
WinUserSession hibernate
```

You can even shutdown Windows:

```Smalltalk
WinUserSession shutDown
```

----------------------------------------------------------------------

### Console Support
#### Accessing the Console 
The *"OS-Windows-Environment-Console"* package provide access to the native windows console. It is possible to open a console for own custom I/O. You can get easy access using the class ***WinConsole***.

```Smalltalk
WinProcess default
```

If evaluated in a workspace this associates the Pharo VM process with a standard output console. The console is a separate OS window that has the same icon as the Pharo main window. 

**Take care: closing this console means closing Pharo too (without getting asked for saving your changed).** 


#### Some simple output
When the console window is displayed, you can easily continue to work with it and see the results:

```Smalltalk
WinConsole default 
	write: 'HelloWorld'
```

Have a closer look at the implementation and you will notice that it ends in the method ***#writeFile:size:*** which calls the [WriteFile][5] API from Windows.
 

#### Cleaning up your work

Using the ***#clearscreen*** message you can clean up the contents of the console window:

```Smalltalk
WinConsole default 
	clearscreen
```

If you are done with playing with the console you can just reset it:

```Smalltalk
WinConsole reset
```

This will free up any native resource associated with it.


#### Positioning

By setting the cursor position you can define where the output should go
within the console window:

```Smalltalk
|con|
WinConsole reset.
con := WinConsole default.
con cursorPosition: 10@10.
con write: 'A simple positioned text'
```

To ask the console for the possible size of the screen buffer you can 
use the following expression:

```Smalltalk
|con|
con := WinConsole default.
con screenBuffer size inspect
```

#### Coloring text

If you like you can change the colors that are used for printing the text. 

```Smalltalk
WinConsole default 
	foregroundColor: WinConsoleForegroundColor red
	backgroundColor: WinConsoleBackgroundColor yellow;
	write: 'Colored text'
```

Note that the console supports a few standard colors - have a look at the subclasses of ***WinConsoleColor*** for more informations.

Internally these standard colors are defined as text attributes encoded in 1 byte (with the upper 4 bits for the background color and the 4 lower bits for the foreground color). To display any possible color combinations for the standard color use the following expression:

 ```Smalltalk
|con|
WinConsole reset.
con := WinConsole default.
	
"Display all color combinations"
1 to: 256 do: [ :each |
    WinConsole default 
       setConsoleTextAttribute: each;
       write: 'O']
```

Windows (starting with Windows Vista) also supports more colors for the console window - it is planned to integrate this in a future release of the Pharo interface.


#### Color management

You can combinate the color attribute and clearing the screen to affect the whole window:

```Smalltalk
WinConsole default 
    foregroundColor: WinConsoleForegroundColor red
    backgroundColor: WinConsoleBackgroundColor yellow;
    clearscreen;
    write: 'Red text on yellow'
```

or

```Smalltalk
WinConsole default 
    blackOnWhite;
    clearscreen
```

#### Cursor properties

Beside positioning the cursor with ***#cursorPosition:*** you can also change its size using ***#cursorSize:***:

```Smalltalk
WinConsole default 
    cursorSize: 2
```

Note that you have to click into the console window to see an effect on the blinking cursor. You can even hide the cursor:

```Smalltalk
WinConsole default
 hideCursor
```

to make it visible again afterwards:

```Smalltalk
WinConsole default
	displayCursor
```

#### Accessing the console window

You can also access the frame window that is displaying the console. So you can easily use any window functionality that is provided:

```Smalltalk
WinConsole default 
    consoleWindow title: 'Pharo console'
```

----------------------------------------------------------------------

### Unit Testing
#### SUnit

The package comes with many tests that can also help to understand how to use the code. If you want to run the test just open the TestRunner and filter on "OS".

#### Writing tests

Writing tests for contributions is a good style and allows to see if things are broken. So if possible write also SUnit tests. There is a special superclass **WindowsSpecificTest** that you should use, with this you can make sure the tests run only on windows machines and will be ignored on other platforms. 

----------------------------------------------------------------------
# Linux Support 
## OS-Linux project

Linux support is defined in the project The **[OS-Linux][2]** - a subproject of **[OS project][6]** 
 
### Installation 
...


----------------------------------------------------------------------
## Continuous Integration (CI)
### The CI jobs

The project is checked using the Pharo CI server, see the following locations:

- [https://ci.inria.fr/pharo-contribution/job/OSWindows/][8]

----------------------------------------------------------------------
## Contribute
### How to contribute

The project is released as is. It may not be complete yet - but as time and contributions permit will make more and more functionality of the underlying OS API available.

Use it at your own risk and feel free to help extending it.  

To contribute just create an own account on SmalltalkHub and join the ["OS" team on Smalltalkhub][6] by asking on the [Pharo developer mailinglist][7] to become a new team member. 

  [1]: http://www.pharo.org
  [2]: http://smalltalkhub.com/#!/~OS/OS-Windows
  [3]: http://files.pharo.org/platform/
  [4]: http://www.seaside.st
  [5]: http://msdn.microsoft.com/en-us/library/windows/desktop/aa365747%28v=vs.85%29.aspx
  [6]: http://smalltalkhub.com/#!/~OS
  [7]: http://lists.pharo.org/
  [8]: https://ci.inria.fr/pharo-contribution/job/OSWindows/
