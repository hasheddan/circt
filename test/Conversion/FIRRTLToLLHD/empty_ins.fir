; RUN: firtool %s | circt-opt --convert-firrtl-to-llhd | FileCheck %s

circuit test_mod :
  module test_mod :
    input a: UInt<1>
    input b: UInt<1>

; CHECK-LABEL: llhd.entity @test_mod (
; CHECK-SAME: %[[PORT_A:.*]]: !llhd.sig<i1>,
; CHECK-SAME: %[[PORT_B:.*]]: !llhd.sig<i1>) -> () {
; CHECK-NEXT: }
