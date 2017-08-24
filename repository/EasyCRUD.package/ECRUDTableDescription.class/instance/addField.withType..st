adding
addField: fieldName withType: type
	fields add: (ECRUDFieldDescription new
						name: fieldName;
						type: type;
						yourself)