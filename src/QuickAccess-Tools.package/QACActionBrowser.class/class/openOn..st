interface opening
openOn: anActionManager
	<script: 'QACActionBrowser openOn: QACActionManager default'>

	|inspector|
	inspector := GTInspector new.
	inspector title: 'QuickAccess Browser'.
	inspector presentationFilter: (GTInspectorTagFilter new 
												defaultTag: #quickAccess;
												addAndSelectTag: #quickAccess).
	inspector openOn: anActionManager 