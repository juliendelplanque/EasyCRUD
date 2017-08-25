private
executeQueryString: aString
	^ (driver execute: aString) rows collect: #values