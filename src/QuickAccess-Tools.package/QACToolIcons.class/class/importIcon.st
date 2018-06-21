icons
importIcon
	"Private - Generated method"
	^ self iconCache 
			at: #importIcon
			ifAbsentPut: [ Form fromBinaryStream: self importIconContents base64Decoded readStream ].