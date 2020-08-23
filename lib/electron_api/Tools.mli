open Js_of_ocaml

val require : string -> 'a
(** Same of [require] from JavaScript *)

val relativize : string -> string
(** Relativize URL *)

val log : 'a -> 'a
(** Log data *)

val js_array_to_list : ('a -> 'b) -> 'a Js.js_array Js.t -> 'b list
(** Coerce JSArray to Caml List *)
