"
Unit tests for QACActionFolder
"
Class {
	#name : #QACActionFolderTest,
	#superclass : #TestCase,
	#category : 'QuickAccess-Tests-Core-Base'
}

{ #category : #tests }
QACActionFolderTest >> testIsAFolder [

	self assert: QACActionFolder new isFolder 
]
