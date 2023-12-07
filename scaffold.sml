structure Scaffold = struct

  datatype funcSpec = FuncSpec of string * string
  datatype domainspec = DomainSpec of string * string
  datatype resourceconst = ResourceConst of string * string * string

  datatype input = Scaff of funcSpec * domainspec * resourceconst

end
