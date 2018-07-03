Extension { #name : #QACActionItem }

{ #category : #'*QuickAccess-Tools-defaults' }
QACActionItem >> defaultIcon [

	^self subclassResponsibility 
]

{ #category : #'*QuickAccess-Tools' }
QACActionItem >> gtDisplayOn: aStream [

	self name asString printOn: aStream
]

{ #category : #'*QuickAccess-Tools' }
QACActionItem >> gtDisplayString [

	^self name asString
]

{ #category : #'*QuickAccess-Tools' }
QACActionItem >> icon [

	^customIcon ifNil: [ self defaultIcon ] ifNotNil: [ customIcon icon ]
	
]

{ #category : #'*QuickAccess-Tools' }
QACActionItem >> iconProvider [

	^QACToolIcons 
]

{ #category : #'*QuickAccess-Tools-actions' }
QACActionItem >> renameUpdating: aPresentation [
	|newName|
	newName := UIManager default request: 'Name' initialAnswer: self name.
	newName ifNil: [ ^self ].
	
	self name: newName.
	aPresentation update.


]

{ #category : #'*QuickAccess-Tools-actions' }
QACActionItem >> setIconUpdating: p [
	|dialog iconLibrary|
	iconLibrary := p pane browser entity iconLibrary. 
	dialog := QACIconSelectionDialog openDialogOn: iconLibrary iconReceiver: p selection.
	dialog updateOnAccept: p. "give the presentation as it is otherwise hard to bind spec to gt"
	 
]

{ #category : #'*QuickAccess-Tools-serialization' }
QACActionItem class >> stonAllInstVarNames [ 

	^super stonAllInstVarNames asOrderedCollection remove: #customIcon; yourself
]
