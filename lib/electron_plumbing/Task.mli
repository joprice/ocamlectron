open Js_of_ocaml

class type task =
  object
    method program : Js.js_string Js.t Js.readonly_prop

    method arguments : Js.js_string Js.t Js.readonly_prop

    method title : Js.js_string Js.t Js.readonly_prop

    method description : Js.js_string Js.t Js.readonly_prop

    method iconPath : Js.js_string Js.t Js.readonly_prop

    method iconIndex : int Js.readonly_prop
  end

type t = task Js.t
