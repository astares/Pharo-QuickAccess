icons
actionFolderWithActionsIcon
	"Private - Generated method"
	
	^ self iconCache 
			at: #actionFolderWithActionsIcon
			ifAbsentPut: [ Form fromBinaryStream: self actionFolderWithActionsIconContents base64Decoded readStream ].
