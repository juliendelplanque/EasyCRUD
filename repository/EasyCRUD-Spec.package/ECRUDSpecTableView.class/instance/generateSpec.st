as yet unclassified
generateSpec
	MultiColumnListModel new
		items: ((self tableDescription generateSelectLimit: 10 offset: 0) beExecutedBy: self databaseAdapter);
		displayBlock: [ :item | item collect: #asString ];
		openWithSpec