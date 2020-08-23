(** Electron object for Main process *)

open Js_of_ocaml
open Js

class type electron =
  object
    method app : App.t Js.readonly_prop

    method _BrowserWindow : BrowserWindow.singleton t Js.readonly_prop

    method _BrowserWindow_fromOpts : BrowserWindow.constr Js.readonly_prop
  end

type t = electron Js.t
