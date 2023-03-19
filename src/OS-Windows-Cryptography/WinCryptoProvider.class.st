"
A handle to a crypto service provider (CSP). These handles are used to indicate which CSP module performs specific operations.

It is analog to HCRYPTPROV in C/C++ from wincrypt.h
"
Class {
	#name : #WinCryptoProvider,
	#superclass : #WinHandle,
	#pools : [
		'WinCryptConstants'
	],
	#category : #'OS-Windows-Cryptography-Provider'
}

{ #category : #accessing }
WinCryptoProvider >> acquireContextExample1 [

	^ self ffiCall: #(BOOL CryptAcquireContextA(HCRYPTPROV self, 0, 0, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT | CRYPT_SILENT)) module: #advapi32
]

{ #category : #accessing }
WinCryptoProvider >> acquireContextExample2 [

	^self ffiCall: #(BOOL CryptAcquireContextA(HCRYPTPROV self, 0, 0, PROV_RSA_FULL, 4026531904)) module: #advapi32
]
