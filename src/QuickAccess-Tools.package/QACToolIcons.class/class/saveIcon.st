icons
saveIcon 
	"Private - Generated method"
	^ self iconCache 
			at: #saveIcon
			ifAbsentPut: [ Form fromBinaryStream: self saveIconContents base64Decoded readStream ].