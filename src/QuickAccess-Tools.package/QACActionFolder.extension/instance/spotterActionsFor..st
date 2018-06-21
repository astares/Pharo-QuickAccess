*QuickAccess-Tools-spotting
spotterActionsFor: aStep
	<spotterOrder: 1>
	
	aStep listProcessor
		title: 'Actions in folder ', self name asString;
		allCandidates: [ self actions ];
		itemName: [ :member | member name asString ];
    	itemIcon: [ :item | item icon ];
		wantsToDisplayOnEmptyQuery: true


