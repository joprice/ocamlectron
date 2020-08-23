(** Describe a Size *)

open Js_of_ocaml

class type size =
  object
    method width : int Js.readonly_prop

    method height : int Js.readonly_prop
  end

type t = size Js.t
