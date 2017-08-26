specs
defaultSpec
	<spec>
	^ SpecLayout composed
			newColumn: [:col |
				col
					add: #menu height: self toolbarHeight;
					add: #list ];
		yourself