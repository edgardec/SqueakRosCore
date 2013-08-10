| obj |
obj := Dictionary new.
ProtoObject
		allSubclassesDoGently: [:cl |  (cl name endsWith: 'class' ) ifFalse:[
			obj at: cl name put: cl category]].
obj saveOnFileNamed: 'OrganizerCuis4dot2'