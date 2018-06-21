*QuickAccess-Tools-actions
setIconUpdating: p
	|dialog iconLibrary|
	iconLibrary := p pane browser entity iconLibrary. 
	dialog := QACIconSelectionDialog openDialogOn: iconLibrary iconReceiver: p selection.
	dialog updateOnAccept: p. "give the presentation as it is otherwise hard to bind spec to gt"
	 