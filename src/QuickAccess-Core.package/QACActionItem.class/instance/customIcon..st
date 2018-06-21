accessing
customIcon: aCustomIcon

	customIcon := aCustomIcon.
	aCustomIcon ifNotNil: [ iconID := aCustomIcon id ]
