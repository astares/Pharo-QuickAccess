"
A keymap category
"
Class {
	#name : #QACQuickAccessKeymapCategory,
	#superclass : #KMCategory,
	#category : 'QuickAccess-Tools-Shortcuts'
}

{ #category : #'class initialization' }
QACQuickAccessKeymapCategory class >> initialize [

	KMRepository default setAsGlobalCategory: self new
]

{ #category : #testing }
QACQuickAccessKeymapCategory class >> isGlobalCategory [
	^true
]

{ #category : #keymaps }
QACQuickAccessKeymapCategory >> keymapAddDesktop [
	<shortcut>
	^ KMKeymap
			shortcut: $q control ,$a control
			action: [
				QACQuickAccessSpotterModel open ]
]
