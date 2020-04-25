"
A dialog to select icons
"
Class {
	#name : #QACIconSelectionDialog,
	#superclass : #ComposableModel,
	#instVars : [
		'iconList',
		'iconLibrary',
		'addIconButton',
		'iconReceiver',
		'updateOnAccept'
	],
	#category : 'QuickAccess-Tools-UI-Dialogs'
}

{ #category : #specs }
QACIconSelectionDialog class >> defaultSpec [
	<spec: #default>
	
	^ SpecLayout composed
		add: #addIconButton origin: 1@0 corner: 1@0 offsetOrigin: (self buttonWidth) negated @0 offsetCorner: 0@(self buttonHeight) ;	
		add: #iconList      origin: 0@0 corner: 1@1 offsetOrigin: 0@(self buttonHeight) offsetCorner: 0@0		
  
	yourself
]

{ #category : #examples }
QACIconSelectionDialog class >> example [
	<script>
	
	^self new openDialogWithSpec
]

{ #category : #'instance creation' }
QACIconSelectionDialog class >> openDialogOn: iconLibrary iconReceiver: iconReceiver [
	^(self new)
		iconLibrary: iconLibrary;
		iconReceiver: iconReceiver;
		openDialogWithSpec;
		yourself
		 
]

{ #category : #actions }
QACIconSelectionDialog >> addIcon [
	| icon file |	
	file := UITheme builder 
                            fileOpen: 'Choose a 16x16 image file' 
                            extensions: #('png' 'gif').
	file isNil ifTrue:[ ^self ].
 
	icon := QACustomIcon contents: (self base64ContentsOfFileNamed: file name).
	self iconLibrary addCustomIcon: icon.
	iconList roots: self iconLibrary customIcons 
]

{ #category : #'private - accessing' }
QACIconSelectionDialog >> addIconButton [
	^addIconButton
]

{ #category : #'private - accessing' }
QACIconSelectionDialog >> addIconButton: aButton [
	^aButton
]

{ #category : #'private - utilities' }
QACIconSelectionDialog >> base64ContentsOfFileNamed: aString [ 
	"Private - convenient method"
	
	| file base64Contents |
	file := FileStream readOnlyFileNamed: aString.
	base64Contents := (Base64MimeConverter mimeEncode: file binary) contents.
	file close.
	^ base64Contents
]

{ #category : #'private - testing' }
QACIconSelectionDialog >> hasIconReceiver [

	^iconReceiver notNil
]

{ #category : #'private - accessing' }
QACIconSelectionDialog >> iconLibrary [
	iconLibrary ifNil: [ iconLibrary := QACIconLibrary new ].
	^iconLibrary 
]

{ #category : #accessing }
QACIconSelectionDialog >> iconLibrary: anIconLibrary [

	iconLibrary := anIconLibrary.
	iconList roots: anIconLibrary customIcons  
]

{ #category : #'private - accessing' }
QACIconSelectionDialog >> iconList [

	^iconList
]

{ #category : #accessing }
QACIconSelectionDialog >> iconReceiver: anIconReceiver [
	"The receiver of the icon when applied".
	
	iconReceiver := anIconReceiver  
]

{ #category : #initialization }
QACIconSelectionDialog >> initializeWidgets [
	
	addIconButton := self newButton.
	addIconButton
		label: 'Add icon...';
		help: 'Add an icon to the library';
		action: [ self addIcon ].	
	
		
	iconList := self newTree.
	iconList
		beCheckList;
		multiSelection: false;
		removeOnlyLastSelected: true; 
		displayBlock: [ :item | '' ];
		iconBlock: [:each | each cachedIcon ];
		autoMultiSelection: false.
 
	
]

{ #category : #actions }
QACIconSelectionDialog >> onAccept [
	
	self iconList selectedItem ifNotNil: [:treeNode | iconReceiver customIcon: treeNode content ].
	updateOnAccept update
]

{ #category : #actions }
QACIconSelectionDialog >> onCancel [
	window value delete
]

{ #category : #actions }
QACIconSelectionDialog >> openDialogWithSpec [
	|dialog|
	dialog := super openDialogWithSpec.
	(self hasIconReceiver and: [ iconReceiver hasCustomIcon ])
		ifTrue: [ iconList selectedItem: iconReceiver customIcon. iconList selectionChanged  ].
	
	^dialog 
		okAction: [ self onAccept ];	
		cancelAction: [ self onCancel ];	 
		yourself
]

{ #category : #accessing }
QACIconSelectionDialog >> title [
	^'Icons'
]

{ #category : #accessing }
QACIconSelectionDialog >> updateOnAccept: anObject [

	updateOnAccept := anObject
]
