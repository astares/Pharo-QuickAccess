*QuickAccess-Tools-actions
renameUpdating: aPresentation
	|newName|
	newName := UIManager default request: 'Name' initialAnswer: self name.
	newName ifNil: [ ^self ].
	
	self name: newName.
	aPresentation update.

