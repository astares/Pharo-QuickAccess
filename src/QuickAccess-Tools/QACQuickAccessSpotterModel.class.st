"
A quick access spotter model
"
Class {
	#name : #QACQuickAccessSpotterModel,
	#superclass : #Object,
	#category : 'QuickAccess-Tools-Spotter'
}

{ #category : #'instance creation' }
QACQuickAccessSpotterModel class >> open [
	<script>
	
	^GTSpotterMorph new
		extent: 500@500;
		doLayout;
		spotterModel: (GTSpotter on: self new);
		hidePreview;
		openCenteredInWorld
]

{ #category : #printing }
QACQuickAccessSpotterModel >> printOn: aStream [
	"Print the receiver on a stream"
	
	aStream nextPutAll: 'Quick Access'
]

{ #category : #spotting }
QACQuickAccessSpotterModel >> spotterFoldersFor: aStep [
	<spotterOrder: 20>
	
	^ aStep listProcessor 
		title: 'Root Folders';
		candidatesLimit: Float infinity;
		allCandidates: [ QACActionManager default rootFolder subfolders ];
		itemName: [:item | item name ];
		itemIcon: [:item | item icon ];
		matchSubstring
]

{ #category : #spotting }
QACQuickAccessSpotterModel >> spotterQuickAccessFor: aStep [
	<spotterOrder: 10>
	
	^ aStep listProcessor 
		title: 'Quick Access';
		candidatesLimit: Float infinity;
		allCandidates: [ QACActionManager default allActionsSorted ];
		itemName: [:item | item name ];
		itemIcon: [:item | item icon ];
	   actLogic: [:item | item execute. aStep exit  ];
		matchSubstring
]
