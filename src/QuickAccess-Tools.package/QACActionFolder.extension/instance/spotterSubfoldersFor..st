*QuickAccess-Tools-spotting
spotterSubfoldersFor: aStep
	<spotterOrder: 2>
	
	aStep listProcessor
		title: ['Subfolders'];
		allCandidates: [ self subfolders ];
		itemName: [ :member | member name asString ];
    	itemIcon: [ :item | item icon ];
		wantsToDisplayOnEmptyQuery: true


