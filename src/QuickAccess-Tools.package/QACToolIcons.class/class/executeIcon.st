icons
executeIcon
	"Private - Generated method"
	^ self iconCache 
			at: #executeIcon
			ifAbsentPut:[ Form fromBinaryStream: self executeIconContents base64Decoded readStream ].