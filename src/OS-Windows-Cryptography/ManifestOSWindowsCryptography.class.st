"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestOSWindowsCryptography,
	#superclass : #PackageManifest,
	#category : #'OS-Windows-Cryptography-Manifest'
}

{ #category : #'code-critics' }
ManifestOSWindowsCryptography class >> ruleLongMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMetaclassDefinition #(#'WinCryptConstants class' #WinCryptConstants)) #'2023-03-19T02:00:25.162+01:00') )
]
