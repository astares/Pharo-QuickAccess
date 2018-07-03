operating
execute
	|tail|
	tail := ' executed'.
	[ Smalltalk compiler evaluate: self expression ] 
		on: Error 
		do: [ tail := tail, ' with errors' ].
	UIManager inform: self name, tail.
