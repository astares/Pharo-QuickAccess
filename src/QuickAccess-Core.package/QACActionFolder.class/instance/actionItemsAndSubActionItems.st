accessing
actionItemsAndSubActionItems
	|items|
	items := self actions copy.  
	items add: self.
   self subfolders inject: items into: [:coll :folder | coll addAll: folder actionItemsAndSubActionItems. coll ].
	^items