icons
actionManagerIcon
	"Private - Generated method"
	^ self iconCache 
			at: #actionManagerIcon
			ifAbsentPut:[ Form 			 
				fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self actionManagerIconContents readStream) ].