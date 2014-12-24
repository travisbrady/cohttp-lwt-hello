open Lwt
open Message_t

open Cohttp
open Cohttp_lwt_unix

let make_server () =
  let callback (ch,conn_id) req body =
    let m = {message = "Hello, World!"} in
    let s = Message_j.string_of_message m in
    Server.respond_string ~status:`OK ~body:s ()
  in
  let config = Server.make ~callback () in
  let ctx = Cohttp_lwt_unix_net.init () in
  let tcp_mode = `TCP (`Port 8081) in
  let t1 = Server.create ~ctx ~mode:tcp_mode config in
  t1

let startup = "IF U WERE KILLED TOMORROW, I WOULDNT GO 2 UR FUNERAL CUZ ID B N JAIL 4 KILLIN DA PERSON THAT KILLED U!
    ......__________________
    ...../_==o;;;;;;;;______[]
    .....), ---.(_(__) /
    ....// (..) ), ----
    ...//___//
    ..//___//
    WE TRUE HOMIES
    WE RIDE TOGETHER
    WE DIE TOGETHER"

let _ = 
    print_endline startup;
    Lwt_unix.run (make_server ())

