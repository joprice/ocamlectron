(** Accessors for IO data *)

open Js_of_ocaml

class type io_counters =
  object
    method readOperationCount : int Js.readonly_prop

    method writeOperationCount : int Js.readonly_prop

    method otherOperationCount : int Js.readonly_prop

    method readTransferCount : int Js.readonly_prop

    method writeTransferCount : int Js.readonly_prop

    method otherTransferCount : int Js.readonly_prop
  end

type t = io_counters Js.t
(** Main type *)
