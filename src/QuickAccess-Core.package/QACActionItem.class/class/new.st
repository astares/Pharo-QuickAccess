instance creation
new
	self isAbstract ifTrue: [ self error: 'Do not instantiate abstract (super)class' ].	
	^ super new