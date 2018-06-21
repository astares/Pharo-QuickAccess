icons
actionFolderIcon
	"Private - Generated method"
	^ self iconCache 
			at: #actionFolderIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self actionFolderIconContents readStream) ].