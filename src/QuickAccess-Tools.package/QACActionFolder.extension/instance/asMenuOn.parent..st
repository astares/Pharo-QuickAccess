*QuickAccess-Tools
asMenuOn: aBuilder parent: aSymbol
	|menuID|
	menuID := self id asString asSymbol.
	(aBuilder item: menuID)
		label: self name;
		parent: aSymbol;
		icon: self icon.
	
	self subfolders do: [:each |
		each asMenuOn: aBuilder parent: menuID ].
	self subfolders notEmpty ifTrue: [ aBuilder withSeparatorAfter ].	
	
	self actions do: [:each |
		each asMenuOn: aBuilder parent: menuID ].
