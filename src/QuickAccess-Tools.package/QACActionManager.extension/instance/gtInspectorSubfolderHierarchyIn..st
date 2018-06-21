*QuickAccess-Tools
gtInspectorSubfolderHierarchyIn: aComposite
	<gtInspectorPresentationOrder: 30>
	<gtInspectorTag: #basic>	 
	<gtInspectorTag: #quickAccess>
 
 	aComposite tree
		title: ['Folders' translated ];
		when: [ self rootFolder notNil ];
		display: [ self rootFolder subfolders ];
		children: [ :aFolder | aFolder subfolders ];
		icon: [:each | each icon ];
		format: [ :aClass | aClass name asString ];
		filterOn: [ :text :each | each name includesSubstring: text caseSensitive: false ];
		allExpanded;		
		act: [:p | self onImport. p update ] icon: self iconProvider importIcon entitled: 'Import...';			
		act: [:p | self onExport ] icon: self iconProvider exportIcon entitled: 'Export...';						
		act: [:p | self onNewSubfolderIn: self rootFolder updating: p. ] icon: self iconProvider actionFolderNewIcon entitled: 'New Folder...';
		act: [:p | self rootFolder onNewActionIn: self rootFolder updating: p ] 	icon: self iconProvider actionNewIcon entitled: 'New action...';																
		selectionAct: [:p | p selection onNewActionIn: p selection updating: p ] 
				icon: self iconProvider actionNewIcon entitled: 'New action...';
		selectionAct: [:p | self onNewSubfolderIn: p selection updating: p. ] 
				icon: self iconProvider actionFolderNewIcon 
				entitled: 'New subfolder...';
		with: [ :presentation | presentation selectionActions last withSeparatorAfter];				
		selectionAct: [:p | p selection renameUpdating: p. ] icon: self iconProvider actionFolderIcon entitled: 'Rename ...';
		selectionAct: [:p | p selection setIconUpdating: p. ] entitled: 'Set Icon ...'			