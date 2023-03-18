"
Baseline for OS-Windows support from the OS series, see [https://github.com/astares/Pharo-OS-Windows](https://github.com/astares/Pharo-OS-Windows)
"
Class {
	#name : #BaselineOfOSWindows,
	#superclass : #BaselineOf,
	#category : #BaselineOfOSWindows
}

{ #category : #baselines }
BaselineOfOSWindows >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		"Packages"
		spec
			package: 'OS-Windows-Core';
			package: 'OS-Windows-Core-Tests' with: [ spec requires: #('OS-Windows-Core') ];
			package: 'OS-Windows-UI' with: [ spec requires: #('OS-Windows-Core') ];
			package: 'OS-Windows-UI-Tests' with: [ spec requires: #('OS-Windows-UI'). ];
			package: 'OS-Windows-Environment' with: [ spec requires: #('OS-Windows-Core') ];
			package: 'OS-Windows-Environment-Tests' with: [ spec requires: #('OS-Windows-Environment') ];
			package: 'OS-Windows-Cryptography' with: [ spec requires: #('OS-Windows-Core' ) ];
			package: 'OS-Windows-Tools' with: [ spec requires: #('OS-Windows-Core' 'OS-Windows-Environment') ].
		"Groups"
		spec
			group: 'default' with: #('Core' 'Tests' 'Tools');
			group: 'Tests' with: #('OS-Windows-Core-Tests' 'OS-Windows-UI-Tests' 'OS-Windows-Environment-Tests');
			group: 'Core' with: #('OS-Windows-Core' 'OS-Windows-Environment' 'OS-Windows-UI');
			group: 'Tools' with: #('OS-Windows-Tools' ) ]
]
