"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestOSWindowsEnvironment,
	#superclass : #PackageManifest,
	#category : #'OS-Windows-Environment-Manifest'
}

{ #category : #'code-critics' }
ManifestOSWindowsEnvironment class >> ruleLiteralArrayContainsSuspiciousTrueFalseOrNilRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMetaclassDefinition #(#'ManifestOSWindowsEnvironment class' #ManifestOSWindowsEnvironment)) #'2025-07-16T13:54:51.205+02:00') )
]

{ #category : #'code-critics' }
ManifestOSWindowsEnvironment class >> ruleUnaryAccessingMethodWithoutReturnRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#WinProcessInformation #autoRelease #false)) #'2025-07-16T13:48:32.376+02:00') )
]
