(** Versions allowed *)

open Js_of_ocaml

class type versions =
  object
    method chrome : Js.js_string Js.t Js.readonly_prop

    method electron : Js.js_string Js.t Js.readonly_prop
  end

type t = versions Js.t
