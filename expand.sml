structure Expand: sig 
    
    val expand : string -> TSL.tsl
    
end = struct 

structure T = TSL

fun expand s = T.Sequence (T.While ("T", "E", "G", T.Choose ("gi", "si")), T.While ("T", "E", "G", T.Choose ("gi", "si")))
end