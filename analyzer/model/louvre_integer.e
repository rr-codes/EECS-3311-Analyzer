note
	description: "Summary description for {LOUVRE_INTEGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LOUVRE_INTEGER
inherit
	LOUVRE_ATOMIC_OPERAND[INTEGER]

create
	make

feature
	type: LOUVRE_TYPE

feature {NONE} -- Initialization

	make(i: INTEGER)
			-- Initialization for `Current'.
		do
			value := i
			type := {LOUVRE_TYPE}.louvre_integer_type
		end

end
