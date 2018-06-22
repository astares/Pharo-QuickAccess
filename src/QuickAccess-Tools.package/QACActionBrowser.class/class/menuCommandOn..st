world menu
menuCommandOn: aBuilder 
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