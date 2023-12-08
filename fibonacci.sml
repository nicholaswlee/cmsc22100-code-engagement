structure Fibonacci: sig
    val fibonacci : unit -> (string * string * string) 
end = struct 


fun fibonacci () = 
    let 
        val funcspec = 
            FuncSpec.FuncSpec ("n >= 0, Fib(0) = 0 and Fib(1) = 1", "Fib(n) = Fib(n - 1) + Fib(n - 2)") (*F_pre, F_post*)
        (* Here we give funcspec a set of axioms: Fib(0) = 0, Fib(1) and For All k >= 0, Fib(k) = Fib(k - 1) + Fib(k - 2) *)
        val domainspec = 
            DomainSpec.DomainSpec ("linear arithmetic", "linear arithmetic") (*D_expr, D_cond*)
        val resourceconst = 
            ResourceConst.ResourceConst ("*(o);*(o)", "(int,2)", "()") (*R_flow, R_stack, R_comp*)
        val scaff = Scaffold.Scaff (funcspec, domainspec, resourceconst)
    in 
        Synthesis.synthesis (scaff, 999, DomainSpec.DomainProof "The theory supported by VS^3AX")
    end
end