structure WellFormCond: sig
    val wellformcond : TSL.tsl -> string 
end = struct 


fun wellformcond expr = "something that ensures we choose a branch in every conditional"

end