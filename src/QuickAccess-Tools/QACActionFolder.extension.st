Extension { #name : #QACActionFolder }

{ #category : #'*QuickAccess-Tools' }
QACActionFolder >> asMenuOn: aBuilder parent: aSymbol [
	|menuID|
	menuID := self id asString asSymbol.
	(aBuilder item: menuID)
		label: self name;
		parent: aSymbol;
		icon: self icon.
	
	self subfolders do: [:each |
		each asMenuOn: aBuilder parent: menuID ].
	self subfolders notEmpty ifTrue: [ aBuilder withSeparatorAfter ].	
	
	self actions do: [:each |
		each asMenuOn: aBuilder parent: menuID ].

]

{ #category : #'*QuickAccess-Tools-defaults' }
QACActionFolder >> defaultIcon [

	^self actions isEmpty 
		ifTrue: [ self iconProvider actionFolderIcon ]
		ifFalse: [ self iconProvider actionFolderWithActionsIcon ] 
		
]

{ #category : #'*QuickAccess-Tools' }
QACActionFolder >> gtInspectorActionsIn: composite [
	<gtInspectorPresentationOrder: 30>
	<gtInspectorTag: #basic>	 
	<gtInspectorTag: #quickAccess>
	
 	composite list
		title: ['Actions'];
		display: [ self actions ];
		format: [:each | each name asString ];
		icon: [:item | item icon ];
		filterOn: [ :text :each | each name includesSubstring: text caseSensitive: false ];
		
	act: [:p | self onNewActionIn: self updating: p. ] icon: self iconProvider actionNewIcon entitled: 'New Action...';
	selectionAct: [:p | p selection execute ] icon: self iconProvider executeIcon entitled: 'Run';		
	with: [ :presentation | presentation selectionActions last withSeparatorAfter];	
	selectionAct: [:p | p selection openInPlayground ] icon: Smalltalk tools workspace taskbarIcon entitled: 'Playground...';				
	with: [ :presentation | presentation selectionActions last withSeparatorAfter];			
	selectionAct: [:p | p selection renameUpdating: p. ] icon: self iconProvider actionFolderIcon entitled: 'Rename ...';
	selectionAct: [:p | p selection setIconUpdating: p. ] entitled: 'Set Icon ...';	
	with: [ :presentation | presentation selectionActions last withSeparatorAfter];			
	selectionAct: [:p | p selection openButton ] entitled: 'Access button'
	 
]

{ #category : #'*QuickAccess-Tools' }
QACActionFolder >> gtInspectorSubfoldersIn: composite [
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
]

{ #category : #'*QuickAccess-Tools-actions' }
QACActionFolder >> onNewActionIn: folder updating: p [

	| actionName |
	actionName := UIManager default request: 'Name' initialAnswer: 'Unnamed action'.
	actionName ifNil: [ ^self ].
	
	folder addActionItem: (QACAction named: actionName).
	p pane browser update.

]

{ #category : #'*QuickAccess-Tools-spotting' }
QACActionFolder >> spotterActDefault [
	
]

{ #category : #'*QuickAccess-Tools-spotting' }
QACActionFolder >> spotterActionsFor: aStep [
	<spotterOrder: 1>
	
	aStep listProcessor
		title: 'Actions in folder ', self name asString;
		allCandidates: [ self actions ];
		itemName: [ :member | member name asString ];
    	itemIcon: [ :item | item icon ];
		wantsToDisplayOnEmptyQuery: true



]

{ #category : #'*QuickAccess-Tools-spotting' }
QACActionFolder >> spotterSubfoldersFor: aStep [
	<spotterOrder: 2>
	
	aStep listProcessor
		title: ['Subfolders'];
		allCandidates: [ self subfolders ];
		itemName: [ :member | member name asString ];
    	itemIcon: [ :item | item icon ];
		wantsToDisplayOnEmptyQuery: true



]
