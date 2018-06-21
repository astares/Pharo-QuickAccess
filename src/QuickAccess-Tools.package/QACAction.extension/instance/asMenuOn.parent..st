*QuickAccess-Tools
asMenuOn: aBuilder parent: aSymbol
	|menuID|
	menuID := self id asString asSymbol.
	(aBuilder item: menuID)
		label: self name;
		action: [ self execute ];
		parent: aSymbol;
		icon: self icon.