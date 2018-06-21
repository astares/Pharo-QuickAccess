*QuickAccess-Tools-actions
onNewSubfolderIn: folder updating: aPresentation
	|name|
	name := UIManager default request: 'Name' initialAnswer: 'Unnamed folder'.
	name ifNil: [ ^self ].
	
	folder addActionItem: (QACActionFolder named: name).
	aPresentation pane browser update.

