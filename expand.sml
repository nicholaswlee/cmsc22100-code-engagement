structure Expand: sig 
    
    val expand : (int * DomainSpec.domainProof * DomainSpec.domainSpec * ResourceConst.resourceConst * string) -> TSL.tsl

end = struct 

structure T = TSL

fun expand s = T.Sequence [T.While (Fresh.vart (), Fresh.vare (), Fresh.varg (), T.Choose (Fresh.vargi (), Fresh.varsi ())), T.While (Fresh.vart (), Fresh.vare (), Fresh.varg (), T.Choose (Fresh.vargi (), Fresh.varsi ()))]
end