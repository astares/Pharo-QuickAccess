private - accessing
iconLibrary
	iconLibrary ifNil: [ iconLibrary := QACIconLibrary new ].
	^iconLibrary 