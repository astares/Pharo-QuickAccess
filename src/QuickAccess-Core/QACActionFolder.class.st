"
A folder to hold actions
"
Class {
	#name : #QACActionFolder,
	#superclass : #QACActionItem,
	#instVars : [
		'actionItems'
	],
	#category : 'QuickAccess-Core-Base'
}

{ #category : #accessing }
QACActionFolder >> actionItems [

	^actionItems
]

{ #category : #accessing }
QACActionFolder >> actionItemsAndSubActionItems [
	|items|
	items := self actions copy.  
	items add: self.
   self subfolders inject: items into: [:coll :folder | coll addAll: folder actionItemsAndSubActionItems. coll ].
	^items
]

{ #category : #accessing }
QACActionFolder >> actions [
	^(actionItems select: [:each | each isAction ]) asSortedCollection
]

{ #category : #accessing }
QACActionFolder >> actionsAndSubActions [
	|actions|
	actions := self actions copy. 
   self subfolders inject: actions into: [:coll :folder | coll addAll: folder actionsAndSubActions. coll ].
	^actions
]

{ #category : #operating }
QACActionFolder >> addActionItem: anActionItem [
 
	 self actionItems add: anActionItem 
]

{ #category : #initialization }
QACActionFolder >> initialize [
	super initialize.
	actionItems := SortedCollection new
]

{ #category : #testing }
QACActionFolder >> isFolder [

	^true
]

{ #category : #operating }
QACActionFolder >> onNewSubfolderIn: aQACActionFolder updating: aGLMListPresentation [ 
	
	QACActionManager default onNewSubfolderIn: self updating: aGLMListPresentation 
	
 
]

{ #category : #printing }
QACActionFolder >> printOn: aStream [

	self name printOn: aStream
]

{ #category : #accessing }
QACActionFolder >> subfolders [
	^(actionItems select: [:each | each isFolder ]) asSortedCollection
]
