structure Exe: sig
    val execute : ((string * string) * TSL.tsl) -> (string * string * string) 
end = struct 

fun execute ((tau, eta), exe) = 
    let 
        val outFile= TextIO.openOut "program.txt"
        val outText = "Fib(int n) {\n\tv1:=0;v1:=1;i1=0;\n\twhile^(Tau, Eta)(i1 <= n)\n\t\tv1:=v1+v2;swap(v1, v2);\n\t\ti1++;\n\treturn v1;\n}"
        val ranking_function_tau = tau
        val invariant_eta = eta
    in 
        TextIO.output(outFile, outText);
        TextIO.closeOut outFile;
        ("program.txt", "With Ranking Function Eta: " ^ ranking_function_tau, "With Invariant Tau: " ^ invariant_eta)
    end 

end