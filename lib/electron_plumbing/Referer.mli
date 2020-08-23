open Js_of_ocaml

class type referer =
  object
    method url : Js.js_string Js.t Js.readonly_prop

    method policy : Js.js_string Js.t Js.readonly_prop
  end

type t = referer Js.t
