Extension { #name : #QACAction }

{ #category : #'*QuickAccess-Tools' }
QACAction >> asMenuOn: aBuilder parent: aSymbol [
	|menuID|
	menuID := self id asString asSymbol.
	(aBuilder item: menuID)
		label: self name;
		action: [ self execute ];
		parent: aSymbol;
		icon: self icon.
]

{ #category : #'*QuickAccess-Tools-defaults' }
QACAction >> defaultIcon [

	^self iconProvider actionIcon
]

{ #category : #'*QuickAccess-Tools' }
QACAction >> gtInspectorActionsIn: composite [
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

]

{ #category : #'*QuickAccess-Tools-spotting' }
QACAction >> gtSpotterPreviewIn: aComposite [
	<spotterPreview: 1>
	^ aComposite pharoMethod
		title: [ self gtDisplayString ]; 
		display: [ :entity | entity expression ];
		smalltalkClass: [ nil ];	
		entity: self
]

{ #category : #'*QuickAccess-Tools-actions' }
QACAction >> openButton [

	SimpleButtonMorph new 
		color: Smalltalk ui theme buttonColor;
		label: self name;
		actionSelector: #value;
		target: [ self execute ];
		extent: 200@70;
		position: 100@100;
		openInWorld
		
]

{ #category : #'*QuickAccess-Tools-spotting' }
QACAction >> spotterActDefault [
	self execute
]
