actions
onAccept
	
	self iconList selectedItem ifNotNil: [:treeNode | iconReceiver customIcon: treeNode content ].
	updateOnAccept update