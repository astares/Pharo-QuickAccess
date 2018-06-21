instance creation
openDialogOn: iconLibrary iconReceiver: iconReceiver
	^(self new)
		iconLibrary: iconLibrary;
		iconReceiver: iconReceiver;
		openDialogWithSpec;
		yourself
		 