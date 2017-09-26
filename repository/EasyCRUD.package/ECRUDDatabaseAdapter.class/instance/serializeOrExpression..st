queries generation
serializeOrExpression: anECRUDOr
	^ String streamContents: [ :stream |
		self serializeBinaryExpression: anECRUDOr withOperator: ' OR ' on: stream ]