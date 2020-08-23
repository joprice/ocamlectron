open Js_of_ocaml

class type printer_info =
  object
    method name : Js.js_string Js.t Js.readonly_prop

    method description : Js.js_string Js.t Js.readonly_prop

    method status : int Js.readonly_prop

    method isDefault : bool Js.t Js.readonly_prop
  end

type t = printer_info Js.t
