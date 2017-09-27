adding
addRowFromData: anArrayOfData
	self addRow: (ECRUDRow new
						data: anArrayOfData;
						yourself)