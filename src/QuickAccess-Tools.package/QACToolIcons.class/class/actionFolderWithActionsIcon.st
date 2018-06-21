icons
actionFolderWithActionsIcon
	"Private - Generated method"
	
	^ self iconCache 
			at: #actionFolderWithActionsIcon
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self actionFolderWithActionsIconContents readStream) ].
