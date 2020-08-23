(** Data about CPU usage *)

open Js_of_ocaml

class type cpu_usage =
  object
    method percentCPUUsage : int Js.readonly_prop

    method idleWakeupsPerSecond : int Js.readonly_prop
  end

type t = cpu_usage Js.t
(** Main type *)
