icons
actionNewIcon
	"Private - Generated method"
	^ self iconCache 
			at: #actionNewIcon
			ifAbsentPut: [ (self actionIcon asFormOfDepth: 32)
					mergeWith: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self newObjectOverlayIconContents readStream)) at: 9@0
				].