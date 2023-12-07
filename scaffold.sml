structure Scaffold = struct

  datatype funcSpec = string * string
  datatype domainspec = string * string
  datatype resourceconst = string * string * string

  datatype scaffold = Scaffold of funcSpec * domainspec * resourceconst
				       
end
