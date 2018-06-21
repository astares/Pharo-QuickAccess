operating
execute
	|tail|
	tail := ' executed'.
	[ Compiler evaluate: self expression ] 
		on: Error 
		do: [ tail := tail, ' with errors' ].
	UIManager inform: self name, tail.