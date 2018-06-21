icons
actionIcon
	"Private - Generated method"
	^ self iconCache 
			at: #actionIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self actionIconContents readStream) ].