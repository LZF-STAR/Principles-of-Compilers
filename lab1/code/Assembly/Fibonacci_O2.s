	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.file	"Fibonacci.cpp"
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
	sd	s1, 40(sp)                      # 8-byte Folded Spill
	sd	s2, 32(sp)                      # 8-byte Folded Spill
	sd	s3, 24(sp)                      # 8-byte Folded Spill
	sd	s4, 16(sp)                      # 8-byte Folded Spill
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
.LBB0_17:                               # Label of block must be emitted
	auipc	a0, %got_pcrel_hi(_ZSt3cin)
	ld	a0, %pcrel_lo(.LBB0_17)(a0)
	addi	a1, sp, 12
	call	_ZNSirsERi@plt
.LBB0_18:                               # Label of block must be emitted
	auipc	a0, %got_pcrel_hi(_ZSt4cout)
	ld	a0, %pcrel_lo(.LBB0_18)(a0)
	li	a1, 0
	call	_ZNSolsEi@plt
	mv	s0, a0
	ld	a0, 0(a0)
	ld	a0, -24(a0)
	add	a0, a0, s0
	ld	s1, 240(a0)
	beqz	s1, .LBB0_16
# %bb.1:
	lbu	a0, 56(s1)
	beqz	a0, .LBB0_3
# %bb.2:
	lbu	a1, 67(s1)
	j	.LBB0_4
.LBB0_3:
	mv	a0, s1
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@plt
	ld	a0, 0(s1)
	ld	a2, 48(a0)
	li	a1, 10
	mv	a0, s1
	jalr	a2
	mv	a1, a0
.LBB0_4:
	mv	a0, s0
	call	_ZNSo3putEc@plt
	call	_ZNSo5flushEv@plt
.LBB0_19:                               # Label of block must be emitted
	auipc	a0, %got_pcrel_hi(_ZSt4cout)
	ld	a0, %pcrel_lo(.LBB0_19)(a0)
	li	a1, 1
	call	_ZNSolsEi@plt
	mv	s0, a0
	ld	a0, 0(a0)
	ld	a0, -24(a0)
	add	a0, a0, s0
	ld	s1, 240(a0)
	beqz	s1, .LBB0_16
# %bb.5:
	lbu	a0, 56(s1)
	beqz	a0, .LBB0_7
# %bb.6:
	lbu	a1, 67(s1)
	j	.LBB0_8
.LBB0_7:
	mv	a0, s1
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@plt
	ld	a0, 0(s1)
	ld	a2, 48(a0)
	li	a1, 10
	mv	a0, s1
	jalr	a2
	mv	a1, a0
.LBB0_8:
	mv	a0, s0
	call	_ZNSo3putEc@plt
	call	_ZNSo5flushEv@plt
	lw	a0, 12(sp)
	li	a1, 2
	blt	a0, a1, .LBB0_15
# %bb.9:
	li	a0, 0
	li	s3, 1
	li	s4, 1
	j	.LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=1
	lbu	a1, 67(s0)
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	mv	a0, s1
	call	_ZNSo3putEc@plt
	call	_ZNSo5flushEv@plt
	lw	a1, 12(sp)
	addiw	s3, s3, 1
	mv	a0, s4
	mv	s4, s2
	bge	s3, a1, .LBB0_15
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	addw	s2, a0, s4
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
                                        # Label of block must be emitted
	auipc	a0, %got_pcrel_hi(_ZSt4cout)
	ld	a0, %pcrel_lo(.LBB0_20)(a0)
	mv	a1, s2
	call	_ZNSolsEi@plt
	mv	s1, a0
	ld	a0, 0(a0)
	ld	a0, -24(a0)
	add	a0, a0, s1
	ld	s0, 240(a0)
	beqz	s0, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	lbu	a0, 56(s0)
	bnez	a0, .LBB0_10
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	mv	a0, s0
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@plt
	ld	a0, 0(s0)
	ld	a2, 48(a0)
	li	a1, 10
	mv	a0, s0
	jalr	a2
	mv	a1, a0
	j	.LBB0_11
.LBB0_15:
	li	a0, 0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	ld	s1, 40(sp)                      # 8-byte Folded Reload
	ld	s2, 32(sp)                      # 8-byte Folded Reload
	ld	s3, 24(sp)                      # 8-byte Folded Reload
	ld	s4, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.LBB0_16:
	call	_ZSt16__throw_bad_castv@plt
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
.LBB1_1:                                # Label of block must be emitted
	auipc	s0, %pcrel_hi(_ZStL8__ioinit)
	addi	s0, s0, %pcrel_lo(.LBB1_1)
	mv	a0, s0
	call	_ZNSt8ios_base4InitC1Ev@plt
.LBB1_2:                                # Label of block must be emitted
	auipc	a0, %got_pcrel_hi(_ZNSt8ios_base4InitD1Ev)
	ld	a0, %pcrel_lo(.LBB1_2)(a0)
.LBB1_3:                                # Label of block must be emitted
	auipc	a2, %pcrel_hi(__dso_handle)
	addi	a2, a2, %pcrel_lo(.LBB1_3)
	mv	a1, s0
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	tail	__cxa_atexit@plt
.Lfunc_end1:
	.size	_GLOBAL__sub_I_Fibonacci.cpp, .Lfunc_end1-_GLOBAL__sub_I_Fibonacci.cpp
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
