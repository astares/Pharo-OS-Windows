"
Baseline for OS-Windows support from the OS series
"
Class {
	#name : #BaselineOfOSWindows,
	#superclass : #BaselineOf,
	#category : #BaselineOfOSWindows
}

{ #category : #baseline }
BaselineOfOSWindows >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec 
			package: 'OS-Windows-Core';
			package: 'OS-Windows-Tests-Core' with: [
				spec requires: #('OS-Windows-Core' ). ];
			package: 'OS-Windows-UI' with: [
				spec requires: #('OS-Windows-Core' ). ];
			package: 'OS-Windows-Tests-UI' with: [
				spec requires: #('OS-Windows-UI' ). ];
			package: 'OS-Windows-Environment' with: [
				spec requires: #('OS-Windows-Core' ). ];
			package: 'OS-Windows-Tests-Environment' with: [
				spec requires: #('OS-Windows-Environment' ). ];
			package: 'OS-Windows-Cryptography' with: [
				spec requires: #('OS-Windows-Core' ). ];
			package: 'OS-Windows-Tools' with: [
				spec requires: #('OS-Windows-Core' 'OS-Windows-Environment' ). ].
		spec 
			group: 'default' with: #('Core' 'Tests' 'Tools');
			group: 'Tests' with: #('OS-Windows-Tests-Core' 'OS-Windows-Tests-UI' 'OS-Windows-Tests-Environment' );
			group: 'Core' with: #('OS-Windows-Core' 'OS-Windows-Environment' 'OS-Windows-UI');
			group: 'Tools' with: #('OS-Windows-Tools' ). ].

]
