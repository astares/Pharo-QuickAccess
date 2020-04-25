"
An action browser
"
Class {
	#name : #QACActionBrowser,
	#superclass : #Object,
	#category : 'QuickAccess-Tools-UI-Browsers'
}

{ #category : #'world menu' }
QACActionBrowser class >> menuCommandOn: aBuilder [ 
	<worldMenu> 
	(aBuilder item: #'Quick Access')
		parent: #'Tools';
		help: 'Quick Access';
		order: 3.0; 
		icon: QACToolIcons actionManagerIcon. 
	
	(aBuilder item: #'Quick Access Manager')
		help: 'Quick Access Action manager';
		parent: #'Quick Access';
		action: [self open ]; 
		icon: QACToolIcons actionManagerIcon.
	
	QACActionManager default rootFolder subfolders notEmpty 
		ifTrue: [ aBuilder withSeparatorAfter ].
	QACActionManager default rootFolder subfolders do: [:each |
		each asMenuOn: aBuilder parent: #'Quick Access' ]		 
]

{ #category : #'interface opening' }
QACActionBrowser class >> open [
	<script>
	
	self openOn: QACActionManager default
]

{ #category : #'interface opening' }
QACActionBrowser class >> openOn: anActionManager [
	<script: 'QACActionBrowser openOn: QACActionManager default'>

	|inspector|
	inspector := GTInspector new.
	inspector title: 'QuickAccess Browser'.
	inspector presentationFilter: (GTInspectorTagFilter new 
												defaultTag: #quickAccess;
												addAndSelectTag: #quickAccess).
	inspector openOn: anActionManager 
]
