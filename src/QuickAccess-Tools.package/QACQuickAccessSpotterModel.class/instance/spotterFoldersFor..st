spotting
spotterFoldersFor: aStep
	<spotterOrder: 20>
	
	^ aStep listProcessor 
		title: 'Root Folders';
		candidatesLimit: Float infinity;
		allCandidates: [ QACActionManager default rootFolder subfolders ];
		itemName: [:item | item name ];
		itemIcon: [:item | item icon ];
		matchSubstring