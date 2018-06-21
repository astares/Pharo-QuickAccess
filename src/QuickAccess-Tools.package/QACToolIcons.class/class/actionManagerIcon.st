icons
actionManagerIcon
	"Private - Generated method"
	^ self iconCache 
			at: #actionManagerIcon
			ifAbsentPut:[ Form fromBinaryStream: self actionManagerIconContents base64Decoded readStream ].