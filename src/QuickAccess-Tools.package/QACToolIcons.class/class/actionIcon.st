icons
actionIcon
	"Private - Generated method"
	^ self iconCache 
			at: #actionIcon
			ifAbsentPut: [ Form fromBinaryStream: self actionIconContents base64Decoded readStream ].