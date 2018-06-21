specs
defaultSpec
	<spec: #default>
	
	^ SpecLayout composed
		add: #addIconButton origin: 1@0 corner: 1@0 offsetOrigin: (self buttonWidth) negated @0 offsetCorner: 0@(self buttonHeight) ;	
		add: #iconList      origin: 0@0 corner: 1@1 offsetOrigin: 0@(self buttonHeight) offsetCorner: 0@0		
  
	yourself