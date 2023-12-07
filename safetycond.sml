structure SafetyCond : sig
    val safetycond : (TSL.tsl * FuncSpec.funcSpec) -> string 
end = struct 

fun safetycond (TSL.Sequence (TSL.While(_, _, _, _):: xs), _)= 
        "case 1: safety condition which checks if program terminates, it produces a valid result"
    | safetycond (TSL.Sequence([TSL.Choose(_, _), TSL.While(_, _, _, _)]), _) =
        "case 2: safety condition which checks if program terminates, it produces a valid result"
    | safetycond (TSL.Sequence([TSL.Choose(_, _), TSL.While(_, _, _, _), TSL.Sequence(_)]), _) = 
        "case 3: safety condition which checks if program terminates, it produces a valid result"
    | safetycond _ = raise Fail "safetycond: invalid input"
end