*QuickAccess-Tools-spotting
gtSpotterPreviewIn: aComposite
	<spotterPreview: 1>
	^ aComposite pharoMethod
		title: [ self gtDisplayString ]; 
		display: [ :entity | entity expression ];
		smalltalkClass: [ nil ];	
		entity: self