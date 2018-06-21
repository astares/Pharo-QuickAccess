accessing
default
	<script: 'self default inspect'>
	
	^ default ifNil: [ default := self basicNew initialize ]