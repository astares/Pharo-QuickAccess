"
An action item
"
Class {
	#name : #QACActionItem,
	#superclass : #Object,
	#instVars : [
		'id',
		'name',
		'iconID',
		'customIcon'
	],
	#category : 'QuickAccess-Core-Base'
}

{ #category : #testing }
QACActionItem class >> isAbstract [

	^(self name = #QACActionItem)
]

{ #category : #'instance creation' }
QACActionItem class >> named: aName [

	^(self new) 
		name: aName;
		yourself
]

{ #category : #'instance creation' }
QACActionItem class >> new [
	self isAbstract ifTrue: [ self error: 'Do not instantiate abstract (super)class' ].	
	^ super new
]

{ #category : #comparing }
QACActionItem >> <= anotherItem [

	^self name asString <= anotherItem name asString
]

{ #category : #accessing }
QACActionItem >> customIcon [

	^customIcon
]

{ #category : #accessing }
QACActionItem >> customIcon: aCustomIcon [

	customIcon := aCustomIcon.
	aCustomIcon ifNotNil: [ iconID := aCustomIcon id ]

]

{ #category : #testing }
QACActionItem >> hasCustomIcon [

	^customIcon notNil 
]

{ #category : #accessing }
QACActionItem >> iconID [

	^iconID
]

{ #category : #'private - accessing' }
QACActionItem >> id [

	^id
]

{ #category : #initialization }
QACActionItem >> initialize [

	super initialize.	
	id := UUID new.	
	iconID := ''.
]

{ #category : #testing }
QACActionItem >> isAction [

	^false
]

{ #category : #testing }
QACActionItem >> isFolder [

	^false
]

{ #category : #accessing }
QACActionItem >> name [
	^ name
]

{ #category : #accessing }
QACActionItem >> name: anObject [
	name := anObject
]
