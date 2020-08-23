(** Memory Usage *)

open Js_of_ocaml

class type memory_usage =
  object
    method rss : int Js.readonly_prop

    method heapTotal : int Js.readonly_prop

    method heapUsed : int Js.readonly_prop

    method _external : int Js.readonly_prop
  end

type t = memory_usage Js.t
