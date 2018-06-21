actions
openDialogWithSpec
	|dialog|
	dialog := super openDialogWithSpec.
	(self hasIconReceiver and: [ iconReceiver hasCustomIcon ])
		ifTrue: [ iconList selectedItem: iconReceiver customIcon. iconList selectionChanged  ].
	
	^dialog 
		okAction: [ self onAccept ];	
		cancelAction: [ self onCancel ];	 
		yourself