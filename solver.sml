structure Solver: sig
    val solver : string -> (string * string)
end = struct 

fun solver sc = 
    let 
        val ranking_function_phi = "x - s"
        val invariant_tau = "v1 = Fib(i1) && v2 = Fib(i2)"
    in 
        (ranking_function_phi, invariant_tau)
    end 

end