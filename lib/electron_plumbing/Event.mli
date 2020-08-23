open Js_of_ocaml

class type event =
  object
    method _type : Js.js_string Js.t Js.readonly_prop

    method preventDefault : unit -> unit Js.meth
  end

type t = event Js.t
