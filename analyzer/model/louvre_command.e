note
	description: "Summary description for {LOUVRE_COMMAND}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LOUVRE_COMMAND
inherit
	LOUVRE_ROUTINE redefine out end

create
	make

feature -- Queries
	lclass: LOUVRE_CLASS
	parameters: ARRAY[TUPLE[name: STRING; type: STRING]]

	out: STRING
		do
			create Result.make_from_string("        " + "+ " + name)
			if parameters.count > 0 then
				Result := Result  + "(";

				across parameters as p loop
					Result := Result + p.item.type
					if p.cursor_index /= parameters.count then
						Result := Result + ", "
					end
				end

				Result := Result + ")"
			end
		end

feature {NONE} -- Initialization

	make(lclass_: LOUVRE_CLASS; fn: STRING; ps: ARRAY[TUPLE[pn: STRING; ft: STRING]])
			-- Initialization for `Current'.
		do
			lclass := lclass_
			name := fn
			parameters := ps

			create assignment_instructions.make(0)
		end

end
