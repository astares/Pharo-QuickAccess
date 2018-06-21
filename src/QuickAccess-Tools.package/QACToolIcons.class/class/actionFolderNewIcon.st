icons
actionFolderNewIcon
	"Private - Generated method"
	^ self iconCache 
			at: #actionFolderNewIcon
			ifAbsentPut:[ (self actionFolderIcon asFormOfDepth: 32)
					mergeWith: (Form fromBinaryStream: self newObjectOverlayIconContents base64Decoded readStream) at: 9@0
				].