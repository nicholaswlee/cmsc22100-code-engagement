structure Exe: sig
    val exe : (string * string) -> string 
end = struct 

fun exe (pi, exe) = raise Fail "Not implemented"

end