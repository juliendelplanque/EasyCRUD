stream writing
writeValues: values on: aStream
	values
		do: [ :value | self writeValue: value on: aStream ]
		separatedBy: [ aStream << ',' ]