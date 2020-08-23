(** Built-in JavaScript 's object  *)

open Js_of_ocaml

module Promise : sig
  class type ['a] promise =
    object
      method _then : ('a -> 'b promise Js.t) -> 'b promise Js.t Js.meth
    end

  type 'a t = 'a promise Js.t
end

module Set : sig
  val constr : ('a Js.js_array -> 'a Js.t Js.t) Js.constr

  class type ['a] set =
    object
      method size : int Js.readonly_prop

      method add : 'a -> unit Js.meth

      method clear : unit -> unit Js.meth

      method delete : 'a -> unit Js.meth

      method forEach :
        ('a -> 'a Js.Optdef.t -> 'a Js.t Js.t Js.Optdef.t -> unit) Js.callback ->
        unit Js.meth

      method has : 'a -> bool Js.t Js.meth
    end

  type 'a t = 'a set Js.t

  val make : 'a list -> 'a t

  val iteri : (int -> 'a -> unit) -> 'a t -> unit
end

module Buffer : sig
  class type buffer =
    object

      (** To be done *)
    end

  type t = buffer Js.t
end

module Error : sig
  class type error =
    object
      method message : Js.js_string Js.t Js.readonly_prop

      method stack : Js.js_string Js.t Js.readonly_prop

      method code : Js.js_string Js.t Js.readonly_prop
    end

  type t = error Js.t
end
