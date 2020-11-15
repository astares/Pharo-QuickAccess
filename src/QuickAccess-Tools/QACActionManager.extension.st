Extension { #name : #QACActionManager }

{ #category : #'*QuickAccess-Tools' }
QACActionManager >> gtInspectorSubfolderHierarchyIn: aComposite [
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
]

{ #category : #'*QuickAccess-Tools' }
QACActionManager >> iconProvider [

	^QACToolIcons 
]

{ #category : #'*QuickAccess-Tools-actions' }
QACActionManager >> import: filename [
	self become: (STON fromString: filename readStream contents).
	self rootFolder actionItemsAndSubActionItems
		do:
			[ :each | each customIcon: (self iconLibrary iconWithID: each iconID) ].
	Smalltalk at: #MenubarMorph ifPresent: #reset

]

{ #category : #'*QuickAccess-Tools-actions' }
QACActionManager >> onExport [
	| file s |	
   file := UIManager default 
						chooseForSaveFileReference: 'Export as .qac file' extensions: #('qac') path: ''.
   file isNil ifTrue:[ ^self ].
	s := file writeStream.
	s nextPutAll: (STON toStringPretty: self).
	s close.
]

{ #category : #'*QuickAccess-Tools-actions' }
QACActionManager >> onImport [
	| filename |
	filename := UIManager default 
		chooseExistingFileReference: 'Choose a .qac file'
		extensions: #('qac')
		path: ''.
		 
	filename isNil
		ifTrue: [ ^ self ].
	(Smalltalk ui theme confirm: 'Really replace')
		ifTrue:
			[ self import: filename ]
]

{ #category : #'*QuickAccess-Tools-actions' }
QACActionManager >> onNewSubfolderIn: folder updating: aPresentation [
	|name|
	name := UIManager default request: 'Name' initialAnswer: 'Unnamed folder'.
	name ifNil: [ ^self ].
	
	folder addActionItem: (QACActionFolder named: name).
	aPresentation pane browser update.


]
