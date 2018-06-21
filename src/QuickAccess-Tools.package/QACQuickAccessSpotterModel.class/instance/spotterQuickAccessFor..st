spotting
spotterQuickAccessFor: aStep
	<spotterOrder: 10>
	
	^ aStep listProcessor 
		title: 'Quick Access';
		candidatesLimit: Float infinity;
		allCandidates: [ QACActionManager default allActionsSorted ];
		itemName: [:item | item name ];
		itemIcon: [:item | item icon ];
	   actLogic: [:item | item execute. aStep exit  ];
		matchSubstring