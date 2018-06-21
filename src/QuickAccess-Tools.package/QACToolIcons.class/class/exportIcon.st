icons
exportIcon
	"Private - Generated method"
	^ self iconCache 
			at: #exportIcon
			ifAbsentPut:[ Form fromBinaryStream: self exportIconContents base64Decoded readStream ].