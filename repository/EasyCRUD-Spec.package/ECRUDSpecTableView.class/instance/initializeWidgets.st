initialization
initializeWidgets
	menu := MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'File';
						icon: Smalltalk ui icons openIcon ].
					].
	menu applyTo: self.
	list := self newMultiColumnList.
	list
		items: #();
		displayBlock: [ :item | item collect: #asString ];
		menu: [ :menuHolder :shifted | self menu: menuHolder shifted: shifted ]