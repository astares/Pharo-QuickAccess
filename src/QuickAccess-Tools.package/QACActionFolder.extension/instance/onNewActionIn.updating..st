*QuickAccess-Tools-actions
onNewActionIn: folder updating: p

	| actionName |
	actionName := UIManager default request: 'Name' initialAnswer: 'Unnamed action'.
	actionName ifNil: [ ^self ].
	
	folder addActionItem: (QACAction named: actionName).
	p pane browser update.
