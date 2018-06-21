*QuickAccess-Tools-actions
openButton

	SimpleButtonMorph new 
		color: Smalltalk ui theme buttonColor;
		label: self name;
		actionSelector: #value;
		target: [ self execute ];
		extent: 200@70;
		position: 100@100;
		openInWorld
		