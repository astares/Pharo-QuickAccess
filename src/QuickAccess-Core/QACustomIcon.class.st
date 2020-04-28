"
A custom icon
"
Class {
	#name : #QACustomIcon,
	#superclass : #Object,
	#instVars : [
		'id',
		'contents',
		'cachedIcon'
	],
	#category : #'QuickAccess-Core-Utilities'
}

{ #category : #'instance creation' }
QACustomIcon class >> contents: aString [

	^(self new)
		contents: aString;
		yourself
]

{ #category : #accessing }
QACustomIcon >> cachedIcon [

	cachedIcon isNil ifTrue: [ cachedIcon := Form fromBinaryStream: self contents base64Decoded readStream ].
	^cachedIcon 						
						
]

{ #category : #accessing }
QACustomIcon >> contents [

	^contents
]

{ #category : #accessing }
QACustomIcon >> contents: aString [

	contents := aString.
	cachedIcon := nil
]

{ #category : #accessing }
QACustomIcon >> icon [

	^self cachedIcon
]

{ #category : #accessing }
QACustomIcon >> id [

	^id
]

{ #category : #initialization }
QACustomIcon >> initialize [
	super initialize.
	id := UUID new asString
]
