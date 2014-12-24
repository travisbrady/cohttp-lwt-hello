(* Auto-generated from "message.atd" *)


type message = Message_t.message = { message: string }

val write_message :
  Bi_outbuf.t -> message -> unit
  (** Output a JSON value of type {!message}. *)

val string_of_message :
  ?len:int -> message -> string
  (** Serialize a value of type {!message}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_message :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> message
  (** Input JSON data of type {!message}. *)

val message_of_string :
  string -> message
  (** Deserialize JSON data of type {!message}. *)

