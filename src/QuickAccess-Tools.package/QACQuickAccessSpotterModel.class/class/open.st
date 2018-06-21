instance creation
open
	<script>
	
	^GTSpotterMorph new
		extent: 500@500;
		doLayout;
		spotterModel: (GTSpotter on: self new);
		hidePreview;
		openCenteredInWorld