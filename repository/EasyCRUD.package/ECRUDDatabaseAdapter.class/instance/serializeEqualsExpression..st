queries generation
serializeEqualsExpression: anECRUDEquals
	^ String streamContents: [ :stream |
		self serializeBinaryExpression: anECRUDEquals withOperator: $= on: stream ]