icons
actionFolderIcon
	"Private - Generated method"
	^ self iconCache 
			at: #actionFolderIcon
			ifAbsentPut: [ Form fromBinaryStream: self actionFolderIconContents base64Decoded readStream ].