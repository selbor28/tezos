(*****************************************************************************)
(*                                                                           *)
(* Open Source License                                                       *)
(* Copyright (c) 2018 Dynamic Ledger Solutions, Inc. <contact@tezos.com>     *)
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

let () =
  Alcotest_lwt.run
    "protocol_008_PtEdo2Zk"
    [
      ("transfer", Transfer.tests);
      ("origination", Origination.tests);
      ("activation", Activation.tests);
      ("revelation", Reveal.tests);
      ("endorsement", Endorsement.tests);
      ("double endorsement", Double_endorsement.tests);
      ("double baking", Double_baking.tests);
      ("seed", Seed.tests);
      ("baking", Baking.tests);
      ("delegation", Delegation.tests);
      ("rolls", Rolls.tests);
      ("combined", Combined_operations.tests);
      ("qty", Qty.tests);
      ("voting", Voting.tests);
      ("interpretation", Interpretation.tests);
      ("typechecking", Typechecking.tests);
      ("gas properties", Gas_properties.tests);
      ("fixed point computation", Fixed_point.tests);
      ("gas cost functions", Gas_costs.tests);
      ("lazy storage diff", Lazy_storage_diff.tests);
      ("sapling", Test_sapling.tests);
      ("helpers rpcs", Test_helpers_rpcs.tests);
      ("script deserialize gas", Script_gas.tests);
    ]
  |> Lwt_main.run
