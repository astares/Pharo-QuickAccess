icons
actionNewIcon
	"Private - Generated method"
	^ self iconCache 
			at: #actionNewIcon
			ifAbsentPut: [ (self actionIcon asFormOfDepth: 32)
					mergeWith: (Form fromBinaryStream: self newObjectOverlayIconContents base64Decoded readStream) at: 9@0
				].