*QuickAccess-Tools
gtInspectorActionsIn: composite
	<gtInspectorPresentationOrder: 30>
	<gtInspectorTag: #basic>	 
	<gtInspectorTag: #quickAccess>
	 
 	composite pharoScript 
		title: [ 'Script Expression' translated ];
		display: [ self expression ]; 
		withLineNumbers: true;
		withAnnotation: true;
		onChangeOfPort: #text act: [:p | self expression: p text asString ];
		installDefaultSelectionActions;
	act: [:p | self openInPlayground ] icon: Smalltalk tools workspace taskbarIcon entitled: 'Playground...'; 		
	act: [:p | self execute ] icon: self iconProvider executeIcon entitled: 'Run' 
