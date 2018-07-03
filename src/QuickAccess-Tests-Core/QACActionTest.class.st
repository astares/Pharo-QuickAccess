"
Test for QACAction
"
Class {
	#name : #QACActionTest,
	#superclass : #TestCase,
	#category : 'QuickAccess-Tests-Core-Base'
}

{ #category : #tests }
QACActionTest >> testInstanceCreation [

	self assert: (QACAction new) name = 'Unnamed Action'
]

{ #category : #tests }
QACActionTest >> testIsNotAFolder [

	self deny: QACAction new isFolder 
]
