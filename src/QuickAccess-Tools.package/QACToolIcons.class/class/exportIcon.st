icons
exportIcon
	"Private - Generated method"
	^ self iconCache 
			at: #exportIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self exportIconContents readStream) ].