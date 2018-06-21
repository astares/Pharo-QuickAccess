icons
saveIcon 
	"Private - Generated method"
	^ self iconCache 
			at: #saveIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self saveIconContents readStream) ].