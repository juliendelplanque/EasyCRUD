accessing
fullName
	^ String streamContents: [ :stream |
		self printFullNameOn: stream ]