cohttp-lwt-hello
================

Simplest possible hello world with Mirage's LWT-based [cohttp](https://github.com/mirage/ocaml-cohttp) library.
The intention here was to provide a shorter and more easily readable introduction to cohttp
than [test_net_lwt_server.ml](https://github.com/mirage/ocaml-cohttp/blob/master/lib_test/test_net_lwt_server.ml)

Compilation and Usage:
```bash
$ make
$ ./hello.native
```

Elsewhere:
```bash
$ curl "http://localhost:8081/"
helloworld
```
