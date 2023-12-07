structure Synthesis: sig
    val synthesis : string -> string 
end = struct 

fun synthesis s = 
    let 
        val exp = Expand.expand "*(o);*(o)"
        val sc = "Safety Condition, "(**)
        val pi = Solver.solver sc
        
    in 
        if Unsat.unsat pi then 
            raise Fail "unable to create a satisfactory program"
        else Exe.execute (pi, exp)
    end 

end