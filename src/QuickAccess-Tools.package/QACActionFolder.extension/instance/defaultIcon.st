*QuickAccess-Tools-defaults
defaultIcon

	^self actions isEmpty 
		ifTrue: [ self iconProvider actionFolderIcon ]
		ifFalse: [ self iconProvider actionFolderWithActionsIcon ] 
		