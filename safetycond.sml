structure SafetyCond : sig
    val safetycond : TSL.tsl -> string 
end = struct 

fun safetycond TSL.Sequence(TSL.While(_, _, _, _)::TSL.Sequence(_, _)) = 
        "case 1: safety condition which checks if program terminates, it produces a valid result"
    | safetycond (TSL.Sequence(TSL.Choose(_, _)::TSL.While(_, _, _, _))) =
        "case 2: safety condition which checks if program terminates, it produces a valid result"
    | safetycond (TSL.Sequence(TSL.Choose(_, _)::TSL.While(_, _, _, _)::TSL.Sequence(_))) = 
        "case 3: safety condition which checks if program terminates, it produces a valid result"
end