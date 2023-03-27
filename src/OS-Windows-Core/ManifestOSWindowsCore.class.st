"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestOSWindowsCore,
	#superclass : #PackageManifest,
	#category : #'OS-Windows-Core-Manifest'
}

{ #category : #'code-critics' }
ManifestOSWindowsCore class >> ruleLongMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMetaclassDefinition #(#'WinBaseConstants class' #WinBaseConstants)) #'2023-03-19T01:52:03.459+01:00') #(#(#RGMetaclassDefinition #(#'WinUserConstants class' #WinUserConstants)) #'2023-03-27T07:01:13.548+02:00') )
]
