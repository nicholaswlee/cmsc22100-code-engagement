structure Synthesis: sig
    val synthesis : string -> string 
end = struct 

fun synthesis s = 
    let 
        val exp = Expand.expand "*(o);*(o)"
        val sc = "Safety Condition, "(**)
        pi = Solver.solver sc
        if Unsat.unsat(pi) then 
            return Fail "unable to create a satisfactory program"
        else Exe.exe (pi, exp)
    in 

    end 

end