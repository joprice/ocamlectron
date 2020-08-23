(** Data about process 's memorymemory usage statistics about the 
    current process. Note that all statistics are reported in Kilobytes  
*)

open Js_of_ocaml

class type process_memory_info =
  object
    method workingSetSize : int Js.readonly_prop

    method peakWorkingSetSize : int Js.readonly_prop

    method privateBytes : int Js.readonly_prop

    method sharedBytes : int Js.readonly_prop
  end

type t = process_memory_info Js.t
