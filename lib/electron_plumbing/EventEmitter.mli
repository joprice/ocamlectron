open Js_of_ocaml

class type emitter =
  object
    method emit_0 : Js.js_string Js.t -> unit Js.meth

    method emit_1 : Js.js_string Js.t -> 'a -> unit Js.meth

    method emit_2 : Js.js_string Js.t -> 'a -> 'b -> unit Js.meth

    method emit_3 : Js.js_string Js.t -> 'a -> 'b -> 'c -> unit Js.meth

    method getMaxListeners : unit -> int Js.meth

    method on : Js.js_string Js.t -> 'a Js.callback -> unit Js.meth

    method once : Js.js_string Js.t -> 'a Js.callback -> unit Js.meth

    method off : Js.js_string Js.t -> 'a Js.callback -> unit Js.meth

    method removeListener : Js.js_string Js.t -> 'a Js.callback -> unit Js.meth

    method addListener : Js.js_string Js.t -> 'a Js.callback -> unit Js.meth
  end
