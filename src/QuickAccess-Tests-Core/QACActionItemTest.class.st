"
Tests for QACActionItem
"
Class {
	#name : #QACActionItemTest,
	#superclass : #TestCase,
	#category : 'QuickAccess-Tests-Core-Base'
}

{ #category : #tests }
QACActionItemTest >> testIsAbstractSuperclass [

	self assert: QACActionItem isAbstract
]

{ #category : #tests }
QACActionItemTest >> testNotAllowedToInstantiate [

	self should: [ QACActionItem new ] raise: Error
]
