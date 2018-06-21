accessing
cachedIcon

	cachedIcon isNil ifTrue: [ cachedIcon := Form fromBinaryStream: 
										(Base64MimeConverter mimeDecodeToBytes: self contents readStream) ].
	^cachedIcon 						
						