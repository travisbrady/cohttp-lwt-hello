open Lwt

open Cohttp
open Cohttp_lwt_unix

let make_server () =
  let callback (ch,conn_id) req body =
    Server.respond_string ~status:`OK ~body:"helloworld" ()
  in
  (*let config = Server.make ~callback ~conn_closed () in*)
  let config = Server.make ~callback () in
  let ctx = Cohttp_lwt_unix_net.init () in
  let tcp_mode = `TCP (`Port 8081) in
  let t1 = Server.create ~ctx ~mode:tcp_mode config in
  t1

let _ = Lwt_unix.run (make_server ())
