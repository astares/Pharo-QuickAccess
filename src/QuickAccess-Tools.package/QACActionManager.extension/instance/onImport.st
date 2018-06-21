*QuickAccess-Tools-actions
onImport
	| filename |
	filename := UITheme builder
		fileOpen: 'Choose a .qac file'
		extensions: #('qac').
	filename isNil
		ifTrue: [ ^ self ].
	(Smalltalk ui theme confirm: 'Really replace')
		ifTrue:
			[ self import: filename ]