type t =
  | SIGHUP
  | SIGINT
  | SIGQUIT
  | SIGILL
  | SIGABRT
  | SIGFPE
  | SIGKILL
  | SIGSEGV
  | SIGPIPE
  | SIGALRM
  | SIGTERM
  | SIGUSR1
  | SIGUSR2
  | SIGCHLD
  | SIGSTOP
  | SIGSTP
  | SIGTTIN
  | SIGTTOU
  | SIGVTALRM
  | SIGXCPU
  | SIGXFSZ
  | SIGWINCH
  | SIGBREAK
  | SIGBUS

let to_string = function
  | SIGHUP -> "SIGHUP"
  | SIGINT -> "SIGINT"
  | SIGQUIT -> "SIGQUIT"
  | SIGILL -> "SIGILL"
  | SIGABRT -> "SIGABRT"
  | SIGFPE -> "SIGFPE"
  | SIGKILL -> "SIGKILL"
  | SIGSEGV -> "SIGSEGV"
  | SIGPIPE -> "SIGPIPE"
  | SIGALRM -> "SIGALRM"
  | SIGTERM -> "SIGTERM"
  | SIGUSR1 -> "SIGUSR1"
  | SIGUSR2 -> "SIGUSR2"
  | SIGCHLD -> "SIGCHLD"
  | SIGSTOP -> "SIGSTOP"
  | SIGSTP -> "SIGSTP"
  | SIGTTIN -> "SIGTTIN"
  | SIGTTOU -> "SIGTTOU"
  | SIGVTALRM -> "SIGVTALRM"
  | SIGXCPU -> "SIGXCPU"
  | SIGXFSZ -> "SIGXFSZ "
  | SIGWINCH -> "SIGWINCH"
  | SIGBREAK -> "SIGBREAK"
  | SIGBUS -> "SIGBUS"
