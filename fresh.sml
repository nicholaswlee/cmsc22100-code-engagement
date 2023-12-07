structure Fresh = struct

  val c = ref 0

  fun vart () =
    let
      val n = !c
      val _ = (c := n+1)      
    in
      "FRESH T" ^ Int.toString n
    end
  fun vare () =
    let
      val n = !c
      val _ = (c := n+1)      
    in
      "FRESH E" ^ Int.toString n
    end

  fun varg () =
    let
      val n = !c
      val _ = (c := n+1)      
    in
      "FRESH G" ^ Int.toString n
    end

  fun vargi () =
    let
      val n = !c
      val _ = (c := n+1)      
    in
      "FRESH Gi" ^ Int.toString n
    end

  fun varei () =
    let
      val n = !c
      val _ = (c := n+1)      
    in
      "FRESH Ei" ^ Int.toString n
    end


end
