"
A baseline for QuickAccess Pharo tool 

https://github.com/astares/Pharo-QuickAccess
"
Class {
	#name : #BaselineOfQuickAccess,
	#superclass : #BaselineOf,
	#category : 'BaselineOfQuickAccess'
}

{ #category : #baseline }
BaselineOfQuickAccess >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec 
			package: #'QuickAccess-Core';
			package: #'QuickAccess-Tools' with: [
				spec requires: #(#'QuickAccess-Core' ). ];
			package: #'QuickAccess-Tests-Core' with: [
				spec requires: #(#'QuickAccess-Core' ). ].
		spec 
			group: 'Core' with: #(#'QuickAccess-Core' );
			group: 'Tools' with: #(#'QuickAccess-Tools' );
			group: 'Tests' with: #(#'QuickAccess-Tests-Core' );
			group: 'all' with: #('Core' 'Tools' 'Tests' );
			group: 'default' with: #('all' ). ].

]
