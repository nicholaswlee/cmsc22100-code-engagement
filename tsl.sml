structure TSL =  struct
    datatype tsl 
    = While of string * string * string * tsl 
    | Choose of string * string 
    | Sequence of tsl * tsl
end