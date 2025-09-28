	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.file	"Fibonacci.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	1                               # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
.LBB0_1:                                # Label of block must be emitted
	auipc	a0, %pcrel_hi(_ZStL8__ioinit)
	addi	a0, a0, %pcrel_lo(.LBB0_1)
	sd	a0, -24(s0)                     # 8-byte Folded Spill
	call	_ZNSt8ios_base4InitC1Ev@plt
	ld	a1, -24(s0)                     # 8-byte Folded Reload
.LBB0_2:                                # Label of block must be emitted
	auipc	a0, %got_pcrel_hi(_ZNSt8ios_base4InitD1Ev)
	ld	a0, %pcrel_lo(.LBB0_2)(a0)
.LBB0_3:                                # Label of block must be emitted
	auipc	a2, %pcrel_hi(__dso_handle)
	addi	a2, a2, %pcrel_lo(.LBB0_3)
	call	__cxa_atexit@plt
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	li	a0, 0
	sw	a0, -20(s0)
	sw	a0, -24(s0)
	li	a0, 1
	sw	a0, -28(s0)
	sw	a0, -32(s0)
.LBB1_4:                                # Label of block must be emitted
	auipc	a0, %got_pcrel_hi(_ZSt3cin)
	ld	a0, %pcrel_lo(.LBB1_4)(a0)
	addi	a1, s0, -40
	call	_ZNSirsERi@plt
	lw	a1, -24(s0)
.LBB1_5:                                # Label of block must be emitted
	auipc	a0, %got_pcrel_hi(_ZSt4cout)
	ld	a0, %pcrel_lo(.LBB1_5)(a0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	call	_ZNSolsEi@plt
.LBB1_6:                                # Label of block must be emitted
	auipc	a1, %got_pcrel_hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	ld	a1, %pcrel_lo(.LBB1_6)(a1)
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	call	_ZNSolsEPFRSoS_E@plt
                                        # kill: def $x11 killed $x10
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	lw	a1, -28(s0)
	call	_ZNSolsEi@plt
	ld	a1, -48(s0)                     # 8-byte Folded Reload
	call	_ZNSolsEPFRSoS_E@plt
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -32(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB1_3
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -28(s0)
	sw	a0, -36(s0)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	addw	a0, a0, a1
	sw	a0, -28(s0)
	lw	a1, -28(s0)
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
                                        # Label of block must be emitted
	auipc	a0, %got_pcrel_hi(_ZSt4cout)
	ld	a0, %pcrel_lo(.LBB1_7)(a0)
	call	_ZNSolsEi@plt
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
                                        # Label of block must be emitted
	auipc	a1, %got_pcrel_hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	ld	a1, %pcrel_lo(.LBB1_8)(a1)
	call	_ZNSolsEPFRSoS_E@plt
	lw	a0, -36(s0)
	sw	a0, -24(s0)
	lw	a0, -32(s0)
	addiw	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB1_1
.LBB1_3:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	1                               # -- Begin function _GLOBAL__sub_I_Fibonacci.cpp
	.type	_GLOBAL__sub_I_Fibonacci.cpp,@function
_GLOBAL__sub_I_Fibonacci.cpp:           # @_GLOBAL__sub_I_Fibonacci.cpp
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	call	__cxx_global_var_init
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	_GLOBAL__sub_I_Fibonacci.cpp, .Lfunc_end2-_GLOBAL__sub_I_Fibonacci.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.section	.sbss,"aw",@nobits
_ZStL8__ioinit:
	.zero	1
	.size	_ZStL8__ioinit, 1

	.hidden	__dso_handle
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_Fibonacci.cpp
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _ZNSirsERi
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym _GLOBAL__sub_I_Fibonacci.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt3cin
	.addrsig_sym _ZSt4cout
