"
An icon library
"
Class {
	#name : #QACIconLibrary,
	#superclass : #Object,
	#instVars : [
		'customIcons'
	],
	#category : 'QuickAccess-Core-Utilities'
}

{ #category : #operating }
QACIconLibrary >> addCustomIcon: aCustomIcon [

	^customIcons at: aCustomIcon id put: aCustomIcon 
]

{ #category : #operating }
QACIconLibrary >> customIcons [

	^customIcons values
]

{ #category : #accessing }
QACIconLibrary >> iconWithID: anID [

	^customIcons at: anID ifAbsent: [ nil ]
]

{ #category : #initialization }
QACIconLibrary >> initialize [
	super initialize.
	customIcons := Dictionary new
	

]
