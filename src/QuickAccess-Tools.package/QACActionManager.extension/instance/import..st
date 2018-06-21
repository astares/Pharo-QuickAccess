*QuickAccess-Tools-actions
import: filename
	self become: (STON fromString: filename readStream contents).
	self rootFolder actionItemsAndSubActionItems
		do:
			[ :each | each customIcon: (self iconLibrary iconWithID: each iconID) ]