*QuickAccess-Tools
gtInspectorActionsIn: composite
	<gtInspectorPresentationOrder: 30>
	<gtInspectorTag: #basic>	 
	<gtInspectorTag: #quickAccess>
	
 	composite list
		title: ['Actions'];
		display: [ self actions ];
		format: [:each | each name asString ];
		icon: [:item | item icon ];
		filterOn: [ :text :each | each name includesSubstring: text caseSensitive: false ];
		
	act: [:p | self onNewActionIn: self updating: p. ] icon: self iconProvider actionNewIcon entitled: 'New Action...';
	selectionAct: [:p | p selection execute ] icon: self iconProvider executeIcon entitled: 'Run';		
	with: [ :presentation | presentation selectionActions last withSeparatorAfter];	
	selectionAct: [:p | p selection openInPlayground ] icon: Smalltalk tools workspace taskbarIcon entitled: 'Playground...';				
	with: [ :presentation | presentation selectionActions last withSeparatorAfter];			
	selectionAct: [:p | p selection renameUpdating: p. ] icon: self iconProvider actionFolderIcon entitled: 'Rename ...';
	selectionAct: [:p | p selection setIconUpdating: p. ] entitled: 'Set Icon ...';	
	with: [ :presentation | presentation selectionActions last withSeparatorAfter];			
	selectionAct: [:p | p selection openButton ] entitled: 'Access button'
	 