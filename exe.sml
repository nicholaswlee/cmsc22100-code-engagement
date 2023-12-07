structure Exe: sig
    val execute : (string * TSL.tsl) -> (string * string * string) 
end = struct 

fun execute (pi, exe) = 
    let 
        val outFile= TextIO.openOut "program.txt"
        val outText = "Fib(int n) {\n\tv1:=0;v1:=1;i1=0;\n\twhile^(Tau, Eta)(i1 <= n)\n\t\tv1:=v1+v2;swap(v1, v2);\n\t\ti1++;\n\treturn v1;\n}"
    in 
        TextIO.output(outFile, outText);
        TextIO.closeOut outFile;
        ("program.txt", "ranking function", "invariant")
    end 

end