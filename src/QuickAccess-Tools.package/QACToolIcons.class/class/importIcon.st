icons
importIcon
	"Private - Generated method"
	^ self iconCache 
			at: #importIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self importIconContents readStream) ].