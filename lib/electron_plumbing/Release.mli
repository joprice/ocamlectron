(** Release Infos *)

open Js_of_ocaml

class type release =
  object
    method name : Js.js_string Js.t Js.readonly_prop

    method sourceUrl : Js.js_string Js.t Js.readonly_prop

    method headersUrl : Js.js_string Js.t Js.readonly_prop

    method libUrl : Js.js_string Js.t Js.Optdef.t Js.readonly_prop

    method lts : Js.js_string Js.t Js.Optdef.t Js.readonly_prop
  end

type t = release Js.t
