icons
actionFolderNewIcon
	"Private - Generated method"
	^ self iconCache 
			at: #actionFolderNewIcon
			ifAbsentPut:[ (self actionFolderIcon asFormOfDepth: 32)
					mergeWith: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self newObjectOverlayIconContents readStream)) at: 9@0
				].