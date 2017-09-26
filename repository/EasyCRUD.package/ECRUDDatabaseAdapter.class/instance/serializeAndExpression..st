queries generation
serializeAndExpression: anECRUDAnd
	^ String streamContents: [ :stream |
		self serializeBinaryExpression: anECRUDAnd withOperator: ' AND ' on: stream ]