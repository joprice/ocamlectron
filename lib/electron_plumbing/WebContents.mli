(** Render and control web pages. 

    - {{: https://electronjs.org/docs/api/web-contents } Documentation for [WebContents]}
*)

open Js_of_ocaml

class type web_contents =
  object
    inherit EventEmitter.emitter

    method loadURL : Js.js_string Js.t -> unit Js.meth

    method loadFile : Js.js_string Js.t -> unit Js.meth

    method downloadURL : Js.js_string Js.t -> unit Js.meth

    method getURL : unit -> Js.js_string Js.t Js.meth

    method getTitle : unit -> Js.js_string Js.t Js.meth

    method isDestroyed : unit -> bool Js.t Js.meth

    method focus : unit -> unit Js.meth

    method isFocused : unit -> bool Js.t Js.meth

    method isLoading : unit -> bool Js.t Js.meth

    method isLoadingMainFrame : unit -> bool Js.t Js.meth

    method isWaitingForResponse : unit -> bool Js.t Js.meth

    method stop : unit -> unit Js.meth

    method reload : unit -> unit Js.meth

    method reloadIgnoringCache : unit -> unit Js.meth

    method canGoBack : unit -> bool Js.t Js.meth

    method canGoForward : unit -> bool Js.t Js.meth

    method canGoToOffset : int -> bool Js.t Js.meth

    method clearHistory : unit -> unit Js.meth

    method goBack : unit -> unit Js.meth

    method goForward : unit -> unit Js.meth

    method goToIndex : int -> unit Js.meth

    method goToOffset : int -> unit Js.meth

    method isCrashed : unit -> bool Js.t Js.meth

    method setUserAgent : Js.js_string Js.t -> unit Js.meth

    method getUserAgent : unit -> Js.js_string Js.t Js.meth

    method insertCSS : Js.js_string Js.t -> unit Js.meth

    method setIgnoreMenuShortcuts : bool Js.t -> unit Js.meth

    method setAudioMuted : bool Js.t -> unit Js.meth

    method isAudioMuted : unit -> bool Js.t Js.meth

    method setZoomFactor : float -> unit Js.meth

    method getZoomFactor : (float -> unit) Js.callback -> unit Js.meth

    method setZoomLevel : int -> unit Js.meth

    method getZoomLevel : (int -> unit) Js.callback -> unit Js.meth

    method setVisualZoomLevelLimits : int -> int -> unit Js.meth

    method setLayoutZoomLevelLimits : int -> int -> unit Js.meth

    method undo : unit -> unit Js.meth

    method redo : unit -> unit Js.meth

    method cut : unit -> unit Js.meth

    method copy : unit -> unit Js.meth

    method copyImageAt : int -> int -> unit Js.meth

    method paste : unit -> unit Js.meth

    method pasteAndMatchStyle : unit -> unit Js.meth

    method delete : unit -> unit Js.meth

    method selectAll : unit -> unit Js.meth

    method unselect : unit -> unit Js.meth

    method replace : Js.js_string Js.t -> unit Js.meth

    method replaceMisspelling : Js.js_string Js.t -> unit Js.meth

    method insertText : Js.js_string Js.t -> unit Js.meth

    method stopFindInPage : Js.js_string Js.t -> unit Js.meth

    method hasServiceWorker : (bool Js.t -> unit) Js.callback -> unit Js.meth

    method unregisterServiceWorker :
      (bool Js.t -> unit) Js.callback -> unit Js.meth

    method getPrinters : unit -> PrinterInfo.t Js.js_array Js.t Js.meth

    method addWorkspace : Js.js_string Js.t -> unit Js.meth

    method removeWorkspace : Js.js_string Js.t -> unit Js.meth

    method openDevTools :
      < mode : Js.js_string Js.t Js.readonly_prop > Js.t Js.Optdef.t ->
      unit Js.meth

    method closeDevTools : unit -> unit Js.meth

    method isDevToolsOpened : unit -> bool Js.t Js.meth

    method isDevToolsFocused : unit -> bool Js.t Js.meth

    method toggleDevTools : unit -> unit Js.meth

    method inspectElement : int -> int -> unit Js.meth

    method inspectServiceWorker : unit -> unit Js.meth

    (* method send : Js.js_string Js.t -> 'a meth *)
    method disableDeviceEmulation : unit -> unit Js.meth

    method showDefinitionForSelection : unit -> unit Js.meth

    method isOffscreen : unit -> bool Js.t Js.meth

    method startPainting : unit -> unit Js.meth

    method stopPainting : unit -> unit Js.meth

    method isPainting : unit -> bool Js.t Js.meth

    method setFrameRate : int -> unit Js.meth

    method getFrameRate : unit -> int Js.meth

    method invalidate : unit -> unit Js.meth

    method getWebRTCIHandlingPolicy : unit -> Js.js_string Js.t Js.meth

    method setWebRTCIHandlingPolicy : Js.js_string Js.t -> unit Js.meth

    method getOSProcessId : unit -> int Js.meth

    method id : int Js.readonly_prop

    method setSize :
      < enableAutoSize : bool Js.t Js.Optdef.t Js.readonly_prop
      ; normal : Size.t Js.Optdef.t Js.readonly_prop
      ; min : Size.t Js.Optdef.t Js.readonly_prop
      ; max : Size.t Js.Optdef.t Js.readonly_prop >
      Js.t ->
      unit Js.meth

    method savePage :
      Js.js_string Js.t ->
      Js.js_string Js.t ->
      (Builtin.Error.t -> unit) Js.callback ->
      bool Js.t Js.meth

    (* method sendInputEvent :
       <
        _type : Js.js_string Js.t Js.readonly_prop
       ; modifiers : Js.js_string Js.t js_array t Js.readonly_prop
       > t
       -> unit meth *)
    method enableDeviceEmulation :
      < screenPosition : Js.js_string Js.t Js.readonly_prop
      ; screenSize : Size.t Js.readonly_prop
      ; deviceScaleFactor : int Js.readonly_prop
      ; viewSize : Size.t Js.readonly_prop
      ; viewPosition :
          < x : int Js.readonly_prop ; y : int Js.readonly_prop > Js.t
          Js.readonly_prop
      ; scale : float Js.readonly_prop >
      Js.t ->
      unit Js.meth

    method print :
      < silent : bool Js.t Js.Optdef.t Js.readonly_prop
      ; printBackground : bool Js.t Js.Optdef.t Js.readonly_prop
      ; deviceName : Js.js_string Js.t Js.Optdef.t Js.readonly_prop >
      Js.t ->
      (bool Js.t -> unit) Js.callback Js.Optdef.t ->
      unit Js.meth

    method printToPDF :
      < marginsType : int Js.Optdef.t Js.readonly_prop
      ; pageSize : Js.js_string Js.t Js.Optdef.t Js.readonly_prop
      ; printBackground : bool Js.t Js.Optdef.t Js.readonly_prop
      ; printSelectionOnly : bool Js.t Js.Optdef.t Js.readonly_prop
      ; landscape : bool Js.t Js.Optdef.t Js.readonly_prop >
      Js.t ->
      (Builtin.Error.t -> Builtin.Buffer.t -> unit) Js.callback ->
      unit Js.meth

    method printToPDF_formatted :
      < marginsType : int Js.Optdef.t Js.readonly_prop
      ; pageSize :
          < width : int Js.readonly_prop ; height : int Js.readonly_prop > Js.t
          Js.Optdef.t
          Js.readonly_prop
      ; printBackground : bool Js.t Js.Optdef.t Js.readonly_prop
      ; printSelectionOnly : bool Js.t Js.Optdef.t Js.readonly_prop
      ; landscape : bool Js.t Js.Optdef.t Js.readonly_prop >
      Js.t ->
      (Builtin.Error.t -> Builtin.Buffer.t -> unit) Js.callback ->
      unit Js.meth

    method findInPage :
      Js.js_string Js.t ->
      < forward : bool Js.t Js.Optdef.t Js.readonly_prop
      ; findNext : bool Js.t Js.Optdef.t Js.readonly_prop
      ; matchCase : bool Js.t Js.Optdef.t Js.readonly_prop
      ; wordStart : bool Js.t Js.Optdef.t Js.readonly_prop
      ; medialCapitalAsWordStart : bool Js.t Js.Optdef.t Js.readonly_prop >
      Js.t
      Js.Optdef.t ->
      int Js.meth

    method executeJavaScript :
      Js.js_string Js.t ->
      bool Js.t Js.Optdef.t ->
      ('a -> 'b) Js.callback Js.Optdef.t ->
      'c Builtin.Promise.t Js.meth
  end

type t = web_contents Js.t
(** Main type *)
