(** The process object is a global that provides information about, 
    and control over, the current Node.js process.

    You can find more information on this page :

    - {{: https://nodejs.org/api/process.html }  NodeJS : documentation for [process] } 

    - {{: https://electronjs.org/docs/api/process }  ElectronJS : documentation for [process] } 
*)

open Js_of_ocaml

class type process =
  object
    method abort : unit -> unit Js.meth

    method allowedNodeEnvironmentFlags :
      Js.js_string Js.t Builtin.Set.t Js.readonly_prop

    method arch : Js.js_string Js.t Js.readonly_prop

    method argv : Js.js_string Js.t Js.js_array Js.t Js.readonly_prop

    method argv0 : Js.js_string Js.t Js.readonly_prop

    method chdir : Js.js_string Js.t -> unit Js.meth

    method cwd : unit -> Js.js_string Js.t Js.meth

    method connected : bool Js.t Js.readonly_prop

    method debugPort : int Js.prop

    method execArgv : Js.js_string Js.t Js.js_array Js.t Js.readonly_prop

    method execPath : Js.js_string Js.t Js.readonly_prop

    method exitCode : int Js.prop

    method exit : int Js.Optdef.t -> unit Js.meth

    method getuid : unit -> int Js.meth

    method kill : int -> Js.js_string Js.t Js.Optdef.t -> unit Js.meth

    method memoryUsage : unit -> MemoryUsage.t Js.meth

    method platform : Js.js_string Js.t Js.readonly_prop

    method pid : int Js.readonly_prop

    method ppid : int Js.readonly_prop

    method release : Release.t Js.readonly_prop

    method defaultApp : bool Js.Optdef.t Js.readonly_prop

    method mas : bool Js.Optdef.t Js.readonly_prop

    method windowsStore : bool Js.Optdef.t Js.readonly_prop

    method noAsar : bool Js.t Js.prop

    method noDeprecation : bool Js.t Js.prop

    method resourcesPath : Js.js_string Js.t Js.readonly_prop

    method throwDeprecation : bool Js.t Js.prop

    method traceDeprecation : bool Js.t Js.prop

    method traceProcessWarnings : bool Js.t Js.prop

    method _type : Js.js_string Js.t Js.readonly_prop

    method versions : Versions.t Js.readonly_prop

    method crash : unit -> unit Js.meth

    method getCPUUsage : unit -> CPUUsage.t Js.meth

    method getIOCounters : unit -> IOCounters.t Js.meth

    method getProcessMemoryInfo : unit -> ProcessMemoryInfo.t Js.meth

    method getSystemMemoryInfo : unit -> SystemMemoryInfo.t Js.meth

    method hang : unit -> unit Js.meth

    method setFdLimit : int -> unit Js.meth
  end

type t = process Js.t
(** Main type *)
