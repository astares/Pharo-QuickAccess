"
A quick access action
"
Class {
	#name : #QACAction,
	#superclass : #QACActionItem,
	#instVars : [
		'expression'
	],
	#category : 'QuickAccess-Core-Base'
}

{ #category : #operating }
QACAction >> execute [
	|tail|
	tail := ' executed'.
	[ Smalltalk compiler evaluate: self expression ] 
		on: Error 
		do: [ tail := tail, ' with errors' ].
	UIManager inform: self name, tail.

]

{ #category : #accessing }
QACAction >> expression [
	^ expression
]

{ #category : #accessing }
QACAction >> expression: anObject [
	expression := anObject
]

{ #category : #initialization }
QACAction >> initialize [

	super initialize.		 
	name := 'Unnamed Action'.
	expression := ''

]

{ #category : #testing }
QACAction >> isAction [

	^true
]

{ #category : #operating }
QACAction >> openInPlayground [
	GTPlayground openContents: self expression 
]

{ #category : #printing }
QACAction >> printOn: aStream [

	self name printOn: aStream
]
