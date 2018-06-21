actions
addIcon
	| icon file |	
	file := UITheme builder 
                            fileOpen: 'Choose a 16x16 image file' 
                            extensions: #('png' 'gif').
	file isNil ifTrue:[ ^self ].
 
	icon := QACustomIcon contents: (self base64ContentsOfFileNamed: file name).
	self iconLibrary addCustomIcon: icon.
	iconList roots: self iconLibrary customIcons 