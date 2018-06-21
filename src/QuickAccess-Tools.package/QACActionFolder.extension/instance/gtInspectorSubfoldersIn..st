*QuickAccess-Tools
gtInspectorSubfoldersIn: composite
	<gtInspectorPresentationOrder: 40>
	<gtInspectorTag: #basic>	 
	<gtInspectorTag: #quickAccess>
	
 	composite list
		title: ['Subfolders'];
		display: [ self subfolders ];
		format: [:each | each name asString ];
		icon: [:item | item icon ];
		filterOn: [ :text :each | each name includesSubstring: text caseSensitive: false ];
		
	act: [:p | self onNewSubfolderIn: self updating: p. ] icon: self iconProvider actionFolderNewIcon entitled: 'New subfolder...';
	
	selectionAct: [:p | self onNewSubfolderIn: p selection updating: p. ] icon: self iconProvider actionFolderNewIcon entitled: 'Add new subfolder...'