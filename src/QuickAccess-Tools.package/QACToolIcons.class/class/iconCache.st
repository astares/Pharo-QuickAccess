private - accessing
iconCache
	<script: 'self iconCache inspect'>
	
	^ IconCache ifNil: [ IconCache := Dictionary new ]