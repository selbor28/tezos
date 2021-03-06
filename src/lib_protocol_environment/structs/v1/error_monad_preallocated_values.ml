(*****************************************************************************)
(*                                                                           *)
(* Open Source License                                                       *)
(* Copyright (c) 2021 Nomadic Labs, <contact@nomadic-labs.com>               *)
(*                                                                           *)
(* Permission is hereby granted, free of charge, to any person obtaining a   *)
(* copy of this software and associated documentation files (the "Software"),*)
(* to deal in the Software without restriction, including without limitation *)
(* the rights to use, copy, modify, merge, publish, distribute, sublicense,  *)
(* and/or sell copies of the Software, and to permit persons to whom the     *)
(* Software is furnished to do so, subject to the following conditions:      *)
(*                                                                           *)
(* The above copyright notice and this permission notice shall be included   *)
(* in all copies or substantial portions of the Software.                    *)
(*                                                                           *)
(* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR*)
(* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  *)
(* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL   *)
(* THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER*)
(* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING   *)
(* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER       *)
(* DEALINGS IN THE SOFTWARE.                                                 *)
(*                                                                           *)
(*****************************************************************************)

(* In the MR https://gitlab.com/tezos/tezos/-/merge_requests/3346, some of the
   pre-allocated values for the error monad are removed. The intent is to avoid
   giving two names to the same value where a single one gives more focus and
   clarity to the code.

   This module exports the old names (available in some legacy protocol
   environments) for backwards compatibility purpose. *)

let ok_unit = Tezos_lwt_result_stdlib.Lwtreslib.Bare.Monad.Result.return_unit

let ok_none = Tezos_lwt_result_stdlib.Lwtreslib.Bare.Monad.Result.return_none

let ok_some = Tezos_lwt_result_stdlib.Lwtreslib.Bare.Monad.Result.return_some

let ok_nil = Tezos_lwt_result_stdlib.Lwtreslib.Bare.Monad.Result.return_nil

let ok_true = Tezos_lwt_result_stdlib.Lwtreslib.Bare.Monad.Result.return_true

let ok_false = Tezos_lwt_result_stdlib.Lwtreslib.Bare.Monad.Result.return_false
