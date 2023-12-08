structure Synthesis: sig
    val synthesis : (Scaffold.scaff * int * DomainSpec.domainProof) -> (string * string *string)
end = struct 

fun synthesis (Scaffold.Scaff (f, d, ResourceConst.ResourceConst (r_flow, r_stack, r_comp)), n, d_proof )= 
    let 
        val exp = Expand.expand (n, d_proof, d, ResourceConst.ResourceConst (r_flow, r_stack, r_comp), r_flow)
        val sc = (SafetyCond.safetycond (exp, f)) ^ (WellFormCond.wellformcond exp) ^ (RankCond.rankcond exp)
        val pi = Solver.solver sc
        
    in 
        if Unsat.unsat pi then 
            raise Fail "unable to create a satisfactory program"
        else Exe.execute (pi, exp)
    end 

end