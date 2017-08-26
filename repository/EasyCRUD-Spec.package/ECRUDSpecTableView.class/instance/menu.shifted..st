private
menu: menuHolder shifted: shifted
	self easyCrud tableActions do: [ :action |
		menuHolder
			add: action name
			target: [ action execute. self refreshList ]
			selector: #value ].
	menuHolder addLine.
		
	self list selectedIndex > 1
		ifFalse: [ ^ menuHolder ].
		
	self easyCrud rowActions do: [ :action |
		menuHolder
			add: action name
			target: [ action row: list selectedItem; execute. self refreshList ]
			selector: #value ].
	^ menuHolder