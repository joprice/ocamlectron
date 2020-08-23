(** Describe a position *)

open Js_of_ocaml

class type position =
  object
    method x : int Js.readonly_prop

    method y : int Js.readonly_prop
  end

type t = position Js.t
