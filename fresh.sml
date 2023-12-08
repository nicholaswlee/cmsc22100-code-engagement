structure Fresh = struct

  val t = ref 0
  val e = ref 0 
  val g = ref 0 
  val gi = ref 0 
  val si = ref 0

  fun vart () =
    let
      val n = !t
      val _ = (t := n+1)      
    in
      "FRESH T" ^ Int.toString n
    end
  fun vare () =
    let
      val n = !e
      val _ = (e := n+1)      
    in
      "FRESH E" ^ Int.toString n
    end

  fun varg () =
    let
      val n = !g
      val _ = (g := n+1)      
    in
      "FRESH G" ^ Int.toString n
    end

  fun vargi () =
    let
      val n = !gi
      val _ = (gi := n+1)      
    in
      "FRESH Gi" ^ Int.toString n
    end

  fun varsi () =
    let
      val n = !si
      val _ = (si := n+1)      
    in
      "FRESH Ei" ^ Int.toString n
    end


end
