open Js_of_ocaml

module Promise = struct
  class type ['a] promise =
    object
      method _then : ('a -> 'b promise Js.t) -> 'b promise Js.t Js.meth
    end

  type 'a t = 'a promise Js.t
end

module Set = struct
  let constr = Js.Unsafe.global##._Set

  class type ['a] set =
    object
      method size : int Js.readonly_prop

      method add : 'a -> unit Js.meth

      method clear : unit -> unit Js.meth

      method delete : 'a -> unit Js.meth

      method has : 'a -> bool Js.t Js.meth

      method forEach :
        ('a -> 'a Js.Optdef.t -> 'a Js.t Js.t Js.Optdef.t -> unit) Js.callback ->
        unit Js.meth
    end

  type 'a t = 'a set Js.t

  let make objects =
    let array = new%js Js.array_empty in
    let () = List.iteri (Js.array_set array) objects in
    new%js constr array

  let iteri f set =
    let i = ref 0 in
    let callback elt _ _ =
      let () = f !i elt in
      incr i
    in
    set##forEach (Js.wrap_callback callback)
end

module Buffer = struct
  class type buffer =
    object

      (** To be done *)
    end

  type t = buffer Js.t
end

module Error = struct
  class type error =
    object
      method message : Js.js_string Js.t Js.readonly_prop

      method stack : Js.js_string Js.t Js.readonly_prop

      method code : Js.js_string Js.t Js.readonly_prop
    end

  type t = error Js.t
end
