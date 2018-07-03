"
Tests for QACActionManager
"
Class {
	#name : #QACActionManagerTest,
	#superclass : #TestCase,
	#category : 'QuickAccess-Tests-Core-Base'
}

{ #category : #tests }
QACActionManagerTest >> testAccessDefaultInstance [

	self assert: QACActionManager default hash equals: QACActionManager default hash
]

{ #category : #tests }
QACActionManagerTest >> testAccessingActions [

	self assert: QACActionManager default allActionItemsSorted isCollection 
]
