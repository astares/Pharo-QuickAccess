"
Manages image side quick actions
"
Class {
	#name : #QACActionManager,
	#superclass : #Object,
	#instVars : [
		'iconLibrary',
		'rootFolder'
	],
	#classInstVars : [
		'default'
	],
	#category : 'QuickAccess-Core-Base'
}

{ #category : #accessing }
QACActionManager class >> default [
	<script: 'self default inspect'>
	
	^ default ifNil: [ default := self basicNew initialize ]
]

{ #category : #accessing }
QACActionManager class >> default: aManager [
	
	^ default := aManager
]

{ #category : #'private ' }
QACActionManager class >> reset [
	"Resets the default instance"
	<script>
	
	default := nil.
	 
]

{ #category : #'private-accessing' }
QACActionManager >> allActionItemsSorted [

	^(self rootFolder actionItemsAndSubActionItems) sorted
]

{ #category : #'private-accessing' }
QACActionManager >> allActionsSorted [

	^(self rootFolder actionsAndSubActions) sorted
]

{ #category : #'private-accessing' }
QACActionManager >> folderClass [
	^QACActionFolder
]

{ #category : #accessing }
QACActionManager >> iconLibrary [

	^iconLibrary 
]

{ #category : #initialization }
QACActionManager >> initialize [
	super initialize.
	rootFolder := self folderClass new.
	iconLibrary := QACIconLibrary new
]

{ #category : #printing }
QACActionManager >> printOn: aStream [

	aStream nextPutAll: 'Action manager'
]

{ #category : #accessing }
QACActionManager >> rootFolder [
	^ rootFolder
]

{ #category : #accessing }
QACActionManager >> rootFolder: anObject [
	rootFolder := anObject
]
