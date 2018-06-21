initialization
initializeWidgets
	
	addIconButton := self newButton.
	addIconButton
		label: 'Add icon...';
		help: 'Add an icon to the library';
		action: [ self addIcon ].	
	
		
	iconList := self newTree.
	iconList
		beCheckList;
		multiSelection: false;
		removeOnlyLastSelected: true; 
		displayBlock: [ :item | '' ];
		iconBlock: [:each | each cachedIcon ];
		autoMultiSelection: false.
 
	