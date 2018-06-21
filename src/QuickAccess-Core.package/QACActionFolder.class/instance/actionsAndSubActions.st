accessing
actionsAndSubActions
	|actions|
	actions := self actions copy. 
   self subfolders inject: actions into: [:coll :folder | coll addAll: folder actionsAndSubActions. coll ].
	^actions