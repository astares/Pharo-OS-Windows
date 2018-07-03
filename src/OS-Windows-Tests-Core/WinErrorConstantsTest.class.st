Class {
	#name : #WinErrorConstantsTest,
	#superclass : #WindowsSpecificTest,
	#pools : [
		'WinErrorConstants'
	],
	#category : #'OS-Windows-Tests-Core-Support'
}

{ #category : #tests }
WinErrorConstantsTest >> testErrorNameFromNumber [

	self 
		assert: (WinErrorConstants errorNameFromNumber: 1) equals: #ERROR_INVALID_FUNCTION;
		assert: (WinErrorConstants errorNameFromNumber: 2) equals: #ERROR_FILE_NOT_FOUND;	
		assert: (WinErrorConstants errorNameFromNumber: 3) equals: #ERROR_PATH_NOT_FOUND		
]
