structure Scaffold = struct

  datatype funcSpec = string
  datatype domainspec = string
  datatype resourceconst = string

  datatype scaffold = Scaffold of funcSpec * domainspec * resourceconst
				       
end
