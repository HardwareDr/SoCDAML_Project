riscv32-unknown-elf-objdump -Mmarch=rv32imcxgap9 -d /home/soc_fs23_06/soumyob/pulp-sdk/tests/fast/BUILD/PULP/GCC_RISCV//test/test

/home/soc_fs23_06/soumyob/pulp-sdk/tests/fast/BUILD/PULP/GCC_RISCV//test/test:     file format elf32-littleriscv


Disassembly of section .vectors:

1c009400 <__irq_vector_base>:
1c009400:	08c0006f          	j	1c00948c <pos_illegal_instr>
1c009404:	08c0006f          	j	1c009490 <pos_no_irq_handler>
1c009408:	0880006f          	j	1c009490 <pos_no_irq_handler>
1c00940c:	0840006f          	j	1c009490 <pos_no_irq_handler>
1c009410:	0800006f          	j	1c009490 <pos_no_irq_handler>
1c009414:	07c0006f          	j	1c009490 <pos_no_irq_handler>
1c009418:	0780006f          	j	1c009490 <pos_no_irq_handler>
1c00941c:	0740006f          	j	1c009490 <pos_no_irq_handler>
1c009420:	0700006f          	j	1c009490 <pos_no_irq_handler>
1c009424:	06c0006f          	j	1c009490 <pos_no_irq_handler>
1c009428:	0680006f          	j	1c009490 <pos_no_irq_handler>
1c00942c:	0640006f          	j	1c009490 <pos_no_irq_handler>
1c009430:	0600006f          	j	1c009490 <pos_no_irq_handler>
1c009434:	05c0006f          	j	1c009490 <pos_no_irq_handler>
1c009438:	0580006f          	j	1c009490 <pos_no_irq_handler>
1c00943c:	0540006f          	j	1c009490 <pos_no_irq_handler>
1c009440:	0500006f          	j	1c009490 <pos_no_irq_handler>
1c009444:	04c0006f          	j	1c009490 <pos_no_irq_handler>
1c009448:	0480006f          	j	1c009490 <pos_no_irq_handler>
1c00944c:	0440006f          	j	1c009490 <pos_no_irq_handler>
1c009450:	0400006f          	j	1c009490 <pos_no_irq_handler>
1c009454:	03c0006f          	j	1c009490 <pos_no_irq_handler>
1c009458:	0380006f          	j	1c009490 <pos_no_irq_handler>
1c00945c:	0340006f          	j	1c009490 <pos_no_irq_handler>
1c009460:	0300006f          	j	1c009490 <pos_no_irq_handler>
1c009464:	02c0006f          	j	1c009490 <pos_no_irq_handler>
1c009468:	0280006f          	j	1c009490 <pos_no_irq_handler>
1c00946c:	0240006f          	j	1c009490 <pos_no_irq_handler>
1c009470:	0200006f          	j	1c009490 <pos_no_irq_handler>
1c009474:	01c0006f          	j	1c009490 <pos_no_irq_handler>
1c009478:	0180006f          	j	1c009490 <pos_no_irq_handler>
1c00947c:	0140006f          	j	1c009490 <pos_no_irq_handler>

1c009480 <_start>:
1c009480:	00002517          	auipc	a0,0x2
1c009484:	bfe50513          	addi	a0,a0,-1026 # 1c00b07e <pos_init_entry>
1c009488:	00050067          	jr	a0

1c00948c <pos_illegal_instr>:
1c00948c:	0000006f          	j	1c00948c <pos_illegal_instr>

1c009490 <pos_no_irq_handler>:
1c009490:	30200073          	mret

1c009494 <pos_semihosting_call>:
1c009494:	00100073          	ebreak
1c009498:	00008067          	ret

Disassembly of section .text:

1c00949c <__udivdi3>:
1c00949c:	87b2                	mv	a5,a2
1c00949e:	8736                	mv	a4,a3
1c0094a0:	88aa                	mv	a7,a0
1c0094a2:	882e                	mv	a6,a1
1c0094a4:	1e069d63          	bnez	a3,1c00969e <__udivdi3+0x202>
1c0094a8:	1c001337          	lui	t1,0x1c001
1c0094ac:	8e830313          	addi	t1,t1,-1816 # 1c0008e8 <__clz_tab>
1c0094b0:	0ac5fd63          	bgeu	a1,a2,1c00956a <__udivdi3+0xce>
1c0094b4:	6741                	lui	a4,0x10
1c0094b6:	0ae67363          	bgeu	a2,a4,1c00955c <__udivdi3+0xc0>
1c0094ba:	0ff00693          	li	a3,255
1c0094be:	00c6b6b3          	sltu	a3,a3,a2
1c0094c2:	068e                	slli	a3,a3,0x3
1c0094c4:	00d65733          	srl	a4,a2,a3
1c0094c8:	933a                	add	t1,t1,a4
1c0094ca:	00034703          	lbu	a4,0(t1)
1c0094ce:	02000313          	li	t1,32
1c0094d2:	96ba                	add	a3,a3,a4
1c0094d4:	40d30333          	sub	t1,t1,a3
1c0094d8:	00030c63          	beqz	t1,1c0094f0 <__udivdi3+0x54>
1c0094dc:	00659733          	sll	a4,a1,t1
1c0094e0:	00d556b3          	srl	a3,a0,a3
1c0094e4:	006617b3          	sll	a5,a2,t1
1c0094e8:	00e6e833          	or	a6,a3,a4
1c0094ec:	006518b3          	sll	a7,a0,t1
1c0094f0:	0107d513          	srli	a0,a5,0x10
1c0094f4:	02a85733          	divu	a4,a6,a0
1c0094f8:	1007d5b3          	p.exthz	a1,a5
1c0094fc:	0108d693          	srli	a3,a7,0x10
1c009500:	02a87633          	remu	a2,a6,a0
1c009504:	02e58833          	mul	a6,a1,a4
1c009508:	0642                	slli	a2,a2,0x10
1c00950a:	8ed1                	or	a3,a3,a2
1c00950c:	863a                	mv	a2,a4
1c00950e:	0106fc63          	bgeu	a3,a6,1c009526 <__udivdi3+0x8a>
1c009512:	96be                	add	a3,a3,a5
1c009514:	fff70613          	addi	a2,a4,-1 # ffff <__l1_heap_size+0x1b>
1c009518:	00f6e763          	bltu	a3,a5,1c009526 <__udivdi3+0x8a>
1c00951c:	0106f563          	bgeu	a3,a6,1c009526 <__udivdi3+0x8a>
1c009520:	ffe70613          	addi	a2,a4,-2
1c009524:	96be                	add	a3,a3,a5
1c009526:	410686b3          	sub	a3,a3,a6
1c00952a:	02a6f833          	remu	a6,a3,a0
1c00952e:	02a6d6b3          	divu	a3,a3,a0
1c009532:	df0828b3          	p.insert	a7,a6,15,16
1c009536:	02d58733          	mul	a4,a1,a3
1c00953a:	8536                	mv	a0,a3
1c00953c:	00e8fb63          	bgeu	a7,a4,1c009552 <__udivdi3+0xb6>
1c009540:	98be                	add	a7,a7,a5
1c009542:	fff68513          	addi	a0,a3,-1
1c009546:	00f8e663          	bltu	a7,a5,1c009552 <__udivdi3+0xb6>
1c00954a:	00e8f463          	bgeu	a7,a4,1c009552 <__udivdi3+0xb6>
1c00954e:	ffe68513          	addi	a0,a3,-2
1c009552:	01061793          	slli	a5,a2,0x10
1c009556:	8fc9                	or	a5,a5,a0
1c009558:	4801                	li	a6,0
1c00955a:	a06d                	j	1c009604 <__udivdi3+0x168>
1c00955c:	01000737          	lui	a4,0x1000
1c009560:	46c1                	li	a3,16
1c009562:	f6e661e3          	bltu	a2,a4,1c0094c4 <__udivdi3+0x28>
1c009566:	46e1                	li	a3,24
1c009568:	bfb1                	j	1c0094c4 <__udivdi3+0x28>
1c00956a:	e601                	bnez	a2,1c009572 <__udivdi3+0xd6>
1c00956c:	4685                	li	a3,1
1c00956e:	02c6d7b3          	divu	a5,a3,a2
1c009572:	66c1                	lui	a3,0x10
1c009574:	08d7fb63          	bgeu	a5,a3,1c00960a <__udivdi3+0x16e>
1c009578:	0ff00693          	li	a3,255
1c00957c:	00f6f363          	bgeu	a3,a5,1c009582 <__udivdi3+0xe6>
1c009580:	4721                	li	a4,8
1c009582:	00e7d6b3          	srl	a3,a5,a4
1c009586:	9336                	add	t1,t1,a3
1c009588:	00034683          	lbu	a3,0(t1)
1c00958c:	02000613          	li	a2,32
1c009590:	96ba                	add	a3,a3,a4
1c009592:	8e15                	sub	a2,a2,a3
1c009594:	e251                	bnez	a2,1c009618 <__udivdi3+0x17c>
1c009596:	40f58733          	sub	a4,a1,a5
1c00959a:	4805                	li	a6,1
1c00959c:	0107d513          	srli	a0,a5,0x10
1c0095a0:	1007d5b3          	p.exthz	a1,a5
1c0095a4:	0108d693          	srli	a3,a7,0x10
1c0095a8:	02a77633          	remu	a2,a4,a0
1c0095ac:	02a75733          	divu	a4,a4,a0
1c0095b0:	0642                	slli	a2,a2,0x10
1c0095b2:	8ed1                	or	a3,a3,a2
1c0095b4:	02e58333          	mul	t1,a1,a4
1c0095b8:	863a                	mv	a2,a4
1c0095ba:	0066fc63          	bgeu	a3,t1,1c0095d2 <__udivdi3+0x136>
1c0095be:	96be                	add	a3,a3,a5
1c0095c0:	fff70613          	addi	a2,a4,-1 # ffffff <__l1_heap_size+0xff001b>
1c0095c4:	00f6e763          	bltu	a3,a5,1c0095d2 <__udivdi3+0x136>
1c0095c8:	0066f563          	bgeu	a3,t1,1c0095d2 <__udivdi3+0x136>
1c0095cc:	ffe70613          	addi	a2,a4,-2
1c0095d0:	96be                	add	a3,a3,a5
1c0095d2:	406686b3          	sub	a3,a3,t1
1c0095d6:	02a6f333          	remu	t1,a3,a0
1c0095da:	02a6d6b3          	divu	a3,a3,a0
1c0095de:	df0328b3          	p.insert	a7,t1,15,16
1c0095e2:	02d58733          	mul	a4,a1,a3
1c0095e6:	8536                	mv	a0,a3
1c0095e8:	00e8fb63          	bgeu	a7,a4,1c0095fe <__udivdi3+0x162>
1c0095ec:	98be                	add	a7,a7,a5
1c0095ee:	fff68513          	addi	a0,a3,-1 # ffff <__l1_heap_size+0x1b>
1c0095f2:	00f8e663          	bltu	a7,a5,1c0095fe <__udivdi3+0x162>
1c0095f6:	00e8f463          	bgeu	a7,a4,1c0095fe <__udivdi3+0x162>
1c0095fa:	ffe68513          	addi	a0,a3,-2
1c0095fe:	01061793          	slli	a5,a2,0x10
1c009602:	8fc9                	or	a5,a5,a0
1c009604:	853e                	mv	a0,a5
1c009606:	85c2                	mv	a1,a6
1c009608:	8082                	ret
1c00960a:	010006b7          	lui	a3,0x1000
1c00960e:	4741                	li	a4,16
1c009610:	f6d7e9e3          	bltu	a5,a3,1c009582 <__udivdi3+0xe6>
1c009614:	4761                	li	a4,24
1c009616:	b7b5                	j	1c009582 <__udivdi3+0xe6>
1c009618:	00c797b3          	sll	a5,a5,a2
1c00961c:	00d5d333          	srl	t1,a1,a3
1c009620:	0107de13          	srli	t3,a5,0x10
1c009624:	00c59733          	sll	a4,a1,a2
1c009628:	00c518b3          	sll	a7,a0,a2
1c00962c:	00d555b3          	srl	a1,a0,a3
1c009630:	03c35533          	divu	a0,t1,t3
1c009634:	8dd9                	or	a1,a1,a4
1c009636:	1007d733          	p.exthz	a4,a5
1c00963a:	0105d693          	srli	a3,a1,0x10
1c00963e:	03c37633          	remu	a2,t1,t3
1c009642:	882a                	mv	a6,a0
1c009644:	02a70333          	mul	t1,a4,a0
1c009648:	0642                	slli	a2,a2,0x10
1c00964a:	8ed1                	or	a3,a3,a2
1c00964c:	0066fc63          	bgeu	a3,t1,1c009664 <__udivdi3+0x1c8>
1c009650:	96be                	add	a3,a3,a5
1c009652:	fff50813          	addi	a6,a0,-1
1c009656:	00f6e763          	bltu	a3,a5,1c009664 <__udivdi3+0x1c8>
1c00965a:	0066f563          	bgeu	a3,t1,1c009664 <__udivdi3+0x1c8>
1c00965e:	ffe50813          	addi	a6,a0,-2
1c009662:	96be                	add	a3,a3,a5
1c009664:	406686b3          	sub	a3,a3,t1
1c009668:	03c6f633          	remu	a2,a3,t3
1c00966c:	03c6d6b3          	divu	a3,a3,t3
1c009670:	df0625b3          	p.insert	a1,a2,15,16
1c009674:	02d70733          	mul	a4,a4,a3
1c009678:	8636                	mv	a2,a3
1c00967a:	00e5fc63          	bgeu	a1,a4,1c009692 <__udivdi3+0x1f6>
1c00967e:	95be                	add	a1,a1,a5
1c009680:	fff68613          	addi	a2,a3,-1 # ffffff <__l1_heap_size+0xff001b>
1c009684:	00f5e763          	bltu	a1,a5,1c009692 <__udivdi3+0x1f6>
1c009688:	00e5f563          	bgeu	a1,a4,1c009692 <__udivdi3+0x1f6>
1c00968c:	ffe68613          	addi	a2,a3,-2
1c009690:	95be                	add	a1,a1,a5
1c009692:	0842                	slli	a6,a6,0x10
1c009694:	40e58733          	sub	a4,a1,a4
1c009698:	00c86833          	or	a6,a6,a2
1c00969c:	b701                	j	1c00959c <__udivdi3+0x100>
1c00969e:	12d5ea63          	bltu	a1,a3,1c0097d2 <__udivdi3+0x336>
1c0096a2:	67c1                	lui	a5,0x10
1c0096a4:	02f6fd63          	bgeu	a3,a5,1c0096de <__udivdi3+0x242>
1c0096a8:	0ff00793          	li	a5,255
1c0096ac:	00d7b8b3          	sltu	a7,a5,a3
1c0096b0:	088e                	slli	a7,a7,0x3
1c0096b2:	1c001737          	lui	a4,0x1c001
1c0096b6:	0116d7b3          	srl	a5,a3,a7
1c0096ba:	8e870713          	addi	a4,a4,-1816 # 1c0008e8 <__clz_tab>
1c0096be:	97ba                	add	a5,a5,a4
1c0096c0:	0007c783          	lbu	a5,0(a5) # 10000 <__l1_heap_size+0x1c>
1c0096c4:	02000813          	li	a6,32
1c0096c8:	97c6                	add	a5,a5,a7
1c0096ca:	40f80833          	sub	a6,a6,a5
1c0096ce:	00081f63          	bnez	a6,1c0096ec <__udivdi3+0x250>
1c0096d2:	4785                	li	a5,1
1c0096d4:	f2b6e8e3          	bltu	a3,a1,1c009604 <__udivdi3+0x168>
1c0096d8:	04a637b3          	p.sletu	a5,a2,a0
1c0096dc:	b725                	j	1c009604 <__udivdi3+0x168>
1c0096de:	010007b7          	lui	a5,0x1000
1c0096e2:	48c1                	li	a7,16
1c0096e4:	fcf6e7e3          	bltu	a3,a5,1c0096b2 <__udivdi3+0x216>
1c0096e8:	48e1                	li	a7,24
1c0096ea:	b7e1                	j	1c0096b2 <__udivdi3+0x216>
1c0096ec:	00f658b3          	srl	a7,a2,a5
1c0096f0:	010696b3          	sll	a3,a3,a6
1c0096f4:	00d8e6b3          	or	a3,a7,a3
1c0096f8:	00f5d333          	srl	t1,a1,a5
1c0096fc:	0106de13          	srli	t3,a3,0x10
1c009700:	00f55733          	srl	a4,a0,a5
1c009704:	03c377b3          	remu	a5,t1,t3
1c009708:	1006d8b3          	p.exthz	a7,a3
1c00970c:	010595b3          	sll	a1,a1,a6
1c009710:	8f4d                	or	a4,a4,a1
1c009712:	01075593          	srli	a1,a4,0x10
1c009716:	01061633          	sll	a2,a2,a6
1c00971a:	03c35333          	divu	t1,t1,t3
1c00971e:	07c2                	slli	a5,a5,0x10
1c009720:	8ddd                	or	a1,a1,a5
1c009722:	02688eb3          	mul	t4,a7,t1
1c009726:	879a                	mv	a5,t1
1c009728:	01d5fc63          	bgeu	a1,t4,1c009740 <__udivdi3+0x2a4>
1c00972c:	95b6                	add	a1,a1,a3
1c00972e:	fff30793          	addi	a5,t1,-1
1c009732:	00d5e763          	bltu	a1,a3,1c009740 <__udivdi3+0x2a4>
1c009736:	01d5f563          	bgeu	a1,t4,1c009740 <__udivdi3+0x2a4>
1c00973a:	ffe30793          	addi	a5,t1,-2
1c00973e:	95b6                	add	a1,a1,a3
1c009740:	41d585b3          	sub	a1,a1,t4
1c009744:	03c5f333          	remu	t1,a1,t3
1c009748:	03c5d5b3          	divu	a1,a1,t3
1c00974c:	df032733          	p.insert	a4,t1,15,16
1c009750:	02b888b3          	mul	a7,a7,a1
1c009754:	832e                	mv	t1,a1
1c009756:	01177c63          	bgeu	a4,a7,1c00976e <__udivdi3+0x2d2>
1c00975a:	9736                	add	a4,a4,a3
1c00975c:	fff58313          	addi	t1,a1,-1
1c009760:	00d76763          	bltu	a4,a3,1c00976e <__udivdi3+0x2d2>
1c009764:	01177563          	bgeu	a4,a7,1c00976e <__udivdi3+0x2d2>
1c009768:	ffe58313          	addi	t1,a1,-2
1c00976c:	9736                	add	a4,a4,a3
1c00976e:	07c2                	slli	a5,a5,0x10
1c009770:	6e41                	lui	t3,0x10
1c009772:	0067e7b3          	or	a5,a5,t1
1c009776:	fffe0593          	addi	a1,t3,-1 # ffff <__l1_heap_size+0x1b>
1c00977a:	00b7f6b3          	and	a3,a5,a1
1c00977e:	41170733          	sub	a4,a4,a7
1c009782:	8df1                	and	a1,a1,a2
1c009784:	0107d893          	srli	a7,a5,0x10
1c009788:	02b68333          	mul	t1,a3,a1
1c00978c:	8241                	srli	a2,a2,0x10
1c00978e:	02b885b3          	mul	a1,a7,a1
1c009792:	8eae                	mv	t4,a1
1c009794:	42c68eb3          	p.mac	t4,a3,a2
1c009798:	01035693          	srli	a3,t1,0x10
1c00979c:	96f6                	add	a3,a3,t4
1c00979e:	02c888b3          	mul	a7,a7,a2
1c0097a2:	00b6f363          	bgeu	a3,a1,1c0097a8 <__udivdi3+0x30c>
1c0097a6:	98f2                	add	a7,a7,t3
1c0097a8:	0106d613          	srli	a2,a3,0x10
1c0097ac:	98b2                	add	a7,a7,a2
1c0097ae:	03176063          	bltu	a4,a7,1c0097ce <__udivdi3+0x332>
1c0097b2:	db1713e3          	bne	a4,a7,1c009558 <__udivdi3+0xbc>
1c0097b6:	6741                	lui	a4,0x10
1c0097b8:	177d                	addi	a4,a4,-1
1c0097ba:	8ef9                	and	a3,a3,a4
1c0097bc:	06c2                	slli	a3,a3,0x10
1c0097be:	00e37333          	and	t1,t1,a4
1c0097c2:	01051533          	sll	a0,a0,a6
1c0097c6:	969a                	add	a3,a3,t1
1c0097c8:	4801                	li	a6,0
1c0097ca:	e2d57de3          	bgeu	a0,a3,1c009604 <__udivdi3+0x168>
1c0097ce:	17fd                	addi	a5,a5,-1
1c0097d0:	b361                	j	1c009558 <__udivdi3+0xbc>
1c0097d2:	4801                	li	a6,0
1c0097d4:	4781                	li	a5,0
1c0097d6:	b53d                	j	1c009604 <__udivdi3+0x168>

1c0097d8 <__umoddi3>:
1c0097d8:	88b2                	mv	a7,a2
1c0097da:	8736                	mv	a4,a3
1c0097dc:	87aa                	mv	a5,a0
1c0097de:	882e                	mv	a6,a1
1c0097e0:	1a069963          	bnez	a3,1c009992 <__umoddi3+0x1ba>
1c0097e4:	1c0016b7          	lui	a3,0x1c001
1c0097e8:	8e868693          	addi	a3,a3,-1816 # 1c0008e8 <__clz_tab>
1c0097ec:	0ac5f463          	bgeu	a1,a2,1c009894 <__umoddi3+0xbc>
1c0097f0:	6341                	lui	t1,0x10
1c0097f2:	08667a63          	bgeu	a2,t1,1c009886 <__umoddi3+0xae>
1c0097f6:	0ff00313          	li	t1,255
1c0097fa:	00c37363          	bgeu	t1,a2,1c009800 <__umoddi3+0x28>
1c0097fe:	4721                	li	a4,8
1c009800:	00e65333          	srl	t1,a2,a4
1c009804:	969a                	add	a3,a3,t1
1c009806:	0006c683          	lbu	a3,0(a3)
1c00980a:	02000313          	li	t1,32
1c00980e:	9736                	add	a4,a4,a3
1c009810:	40e30333          	sub	t1,t1,a4
1c009814:	00030c63          	beqz	t1,1c00982c <__umoddi3+0x54>
1c009818:	006595b3          	sll	a1,a1,t1
1c00981c:	00e55733          	srl	a4,a0,a4
1c009820:	006618b3          	sll	a7,a2,t1
1c009824:	00b76833          	or	a6,a4,a1
1c009828:	006517b3          	sll	a5,a0,t1
1c00982c:	0108d613          	srli	a2,a7,0x10
1c009830:	02c87733          	remu	a4,a6,a2
1c009834:	1008d533          	p.exthz	a0,a7
1c009838:	0107d693          	srli	a3,a5,0x10
1c00983c:	02c85833          	divu	a6,a6,a2
1c009840:	0742                	slli	a4,a4,0x10
1c009842:	8ed9                	or	a3,a3,a4
1c009844:	03050833          	mul	a6,a0,a6
1c009848:	0106f863          	bgeu	a3,a6,1c009858 <__umoddi3+0x80>
1c00984c:	96c6                	add	a3,a3,a7
1c00984e:	0116e563          	bltu	a3,a7,1c009858 <__umoddi3+0x80>
1c009852:	0106f363          	bgeu	a3,a6,1c009858 <__umoddi3+0x80>
1c009856:	96c6                	add	a3,a3,a7
1c009858:	410686b3          	sub	a3,a3,a6
1c00985c:	02c6f733          	remu	a4,a3,a2
1c009860:	02c6d6b3          	divu	a3,a3,a2
1c009864:	df0727b3          	p.insert	a5,a4,15,16
1c009868:	02d506b3          	mul	a3,a0,a3
1c00986c:	00d7f863          	bgeu	a5,a3,1c00987c <__umoddi3+0xa4>
1c009870:	97c6                	add	a5,a5,a7
1c009872:	0117e563          	bltu	a5,a7,1c00987c <__umoddi3+0xa4>
1c009876:	00d7f363          	bgeu	a5,a3,1c00987c <__umoddi3+0xa4>
1c00987a:	97c6                	add	a5,a5,a7
1c00987c:	8f95                	sub	a5,a5,a3
1c00987e:	0067d533          	srl	a0,a5,t1
1c009882:	4581                	li	a1,0
1c009884:	8082                	ret
1c009886:	01000337          	lui	t1,0x1000
1c00988a:	4741                	li	a4,16
1c00988c:	f6666ae3          	bltu	a2,t1,1c009800 <__umoddi3+0x28>
1c009890:	4761                	li	a4,24
1c009892:	b7bd                	j	1c009800 <__umoddi3+0x28>
1c009894:	e601                	bnez	a2,1c00989c <__umoddi3+0xc4>
1c009896:	4605                	li	a2,1
1c009898:	031658b3          	divu	a7,a2,a7
1c00989c:	6641                	lui	a2,0x10
1c00989e:	06c8ff63          	bgeu	a7,a2,1c00991c <__umoddi3+0x144>
1c0098a2:	0ff00613          	li	a2,255
1c0098a6:	01167363          	bgeu	a2,a7,1c0098ac <__umoddi3+0xd4>
1c0098aa:	4721                	li	a4,8
1c0098ac:	00e8d633          	srl	a2,a7,a4
1c0098b0:	96b2                	add	a3,a3,a2
1c0098b2:	0006c603          	lbu	a2,0(a3)
1c0098b6:	02000313          	li	t1,32
1c0098ba:	963a                	add	a2,a2,a4
1c0098bc:	40c30333          	sub	t1,t1,a2
1c0098c0:	06031563          	bnez	t1,1c00992a <__umoddi3+0x152>
1c0098c4:	411585b3          	sub	a1,a1,a7
1c0098c8:	0108d713          	srli	a4,a7,0x10
1c0098cc:	1008d533          	p.exthz	a0,a7
1c0098d0:	0107d613          	srli	a2,a5,0x10
1c0098d4:	02e5f6b3          	remu	a3,a1,a4
1c0098d8:	02e5d5b3          	divu	a1,a1,a4
1c0098dc:	06c2                	slli	a3,a3,0x10
1c0098de:	8ed1                	or	a3,a3,a2
1c0098e0:	02b505b3          	mul	a1,a0,a1
1c0098e4:	00b6f863          	bgeu	a3,a1,1c0098f4 <__umoddi3+0x11c>
1c0098e8:	96c6                	add	a3,a3,a7
1c0098ea:	0116e563          	bltu	a3,a7,1c0098f4 <__umoddi3+0x11c>
1c0098ee:	00b6f363          	bgeu	a3,a1,1c0098f4 <__umoddi3+0x11c>
1c0098f2:	96c6                	add	a3,a3,a7
1c0098f4:	40b685b3          	sub	a1,a3,a1
1c0098f8:	02e5f6b3          	remu	a3,a1,a4
1c0098fc:	02e5d5b3          	divu	a1,a1,a4
1c009900:	df06a7b3          	p.insert	a5,a3,15,16
1c009904:	02b505b3          	mul	a1,a0,a1
1c009908:	00b7f863          	bgeu	a5,a1,1c009918 <__umoddi3+0x140>
1c00990c:	97c6                	add	a5,a5,a7
1c00990e:	0117e563          	bltu	a5,a7,1c009918 <__umoddi3+0x140>
1c009912:	00b7f363          	bgeu	a5,a1,1c009918 <__umoddi3+0x140>
1c009916:	97c6                	add	a5,a5,a7
1c009918:	8f8d                	sub	a5,a5,a1
1c00991a:	b795                	j	1c00987e <__umoddi3+0xa6>
1c00991c:	01000637          	lui	a2,0x1000
1c009920:	4741                	li	a4,16
1c009922:	f8c8e5e3          	bltu	a7,a2,1c0098ac <__umoddi3+0xd4>
1c009926:	4761                	li	a4,24
1c009928:	b751                	j	1c0098ac <__umoddi3+0xd4>
1c00992a:	006898b3          	sll	a7,a7,t1
1c00992e:	00c5d733          	srl	a4,a1,a2
1c009932:	006517b3          	sll	a5,a0,t1
1c009936:	00c55633          	srl	a2,a0,a2
1c00993a:	006595b3          	sll	a1,a1,t1
1c00993e:	0108d513          	srli	a0,a7,0x10
1c009942:	8dd1                	or	a1,a1,a2
1c009944:	02a77633          	remu	a2,a4,a0
1c009948:	1008d833          	p.exthz	a6,a7
1c00994c:	0105d693          	srli	a3,a1,0x10
1c009950:	02a75733          	divu	a4,a4,a0
1c009954:	0642                	slli	a2,a2,0x10
1c009956:	8ed1                	or	a3,a3,a2
1c009958:	02e80733          	mul	a4,a6,a4
1c00995c:	00e6f863          	bgeu	a3,a4,1c00996c <__umoddi3+0x194>
1c009960:	96c6                	add	a3,a3,a7
1c009962:	0116e563          	bltu	a3,a7,1c00996c <__umoddi3+0x194>
1c009966:	00e6f363          	bgeu	a3,a4,1c00996c <__umoddi3+0x194>
1c00996a:	96c6                	add	a3,a3,a7
1c00996c:	8e99                	sub	a3,a3,a4
1c00996e:	02a6f733          	remu	a4,a3,a0
1c009972:	02a6d6b3          	divu	a3,a3,a0
1c009976:	df0725b3          	p.insert	a1,a4,15,16
1c00997a:	02d806b3          	mul	a3,a6,a3
1c00997e:	00d5f863          	bgeu	a1,a3,1c00998e <__umoddi3+0x1b6>
1c009982:	95c6                	add	a1,a1,a7
1c009984:	0115e563          	bltu	a1,a7,1c00998e <__umoddi3+0x1b6>
1c009988:	00d5f363          	bgeu	a1,a3,1c00998e <__umoddi3+0x1b6>
1c00998c:	95c6                	add	a1,a1,a7
1c00998e:	8d95                	sub	a1,a1,a3
1c009990:	bf25                	j	1c0098c8 <__umoddi3+0xf0>
1c009992:	eed5e9e3          	bltu	a1,a3,1c009884 <__umoddi3+0xac>
1c009996:	6741                	lui	a4,0x10
1c009998:	04e6f563          	bgeu	a3,a4,1c0099e2 <__umoddi3+0x20a>
1c00999c:	0ff00e93          	li	t4,255
1c0099a0:	00deb733          	sltu	a4,t4,a3
1c0099a4:	070e                	slli	a4,a4,0x3
1c0099a6:	1c001337          	lui	t1,0x1c001
1c0099aa:	00e6d8b3          	srl	a7,a3,a4
1c0099ae:	8e830313          	addi	t1,t1,-1816 # 1c0008e8 <__clz_tab>
1c0099b2:	989a                	add	a7,a7,t1
1c0099b4:	0008ce83          	lbu	t4,0(a7)
1c0099b8:	02000e13          	li	t3,32
1c0099bc:	9eba                	add	t4,t4,a4
1c0099be:	41de0e33          	sub	t3,t3,t4
1c0099c2:	020e1763          	bnez	t3,1c0099f0 <__umoddi3+0x218>
1c0099c6:	00b6e463          	bltu	a3,a1,1c0099ce <__umoddi3+0x1f6>
1c0099ca:	00c56963          	bltu	a0,a2,1c0099dc <__umoddi3+0x204>
1c0099ce:	40c507b3          	sub	a5,a0,a2
1c0099d2:	8d95                	sub	a1,a1,a3
1c0099d4:	00f53533          	sltu	a0,a0,a5
1c0099d8:	40a58833          	sub	a6,a1,a0
1c0099dc:	853e                	mv	a0,a5
1c0099de:	85c2                	mv	a1,a6
1c0099e0:	b555                	j	1c009884 <__umoddi3+0xac>
1c0099e2:	010008b7          	lui	a7,0x1000
1c0099e6:	4741                	li	a4,16
1c0099e8:	fb16efe3          	bltu	a3,a7,1c0099a6 <__umoddi3+0x1ce>
1c0099ec:	4761                	li	a4,24
1c0099ee:	bf65                	j	1c0099a6 <__umoddi3+0x1ce>
1c0099f0:	01d65733          	srl	a4,a2,t4
1c0099f4:	01c696b3          	sll	a3,a3,t3
1c0099f8:	8ed9                	or	a3,a3,a4
1c0099fa:	01d5d7b3          	srl	a5,a1,t4
1c0099fe:	0106d813          	srli	a6,a3,0x10
1c009a02:	0307f333          	remu	t1,a5,a6
1c009a06:	1006d733          	p.exthz	a4,a3
1c009a0a:	01d558b3          	srl	a7,a0,t4
1c009a0e:	01c595b3          	sll	a1,a1,t3
1c009a12:	00b8e5b3          	or	a1,a7,a1
1c009a16:	0105d893          	srli	a7,a1,0x10
1c009a1a:	01c61633          	sll	a2,a2,t3
1c009a1e:	01c51533          	sll	a0,a0,t3
1c009a22:	0307d7b3          	divu	a5,a5,a6
1c009a26:	0342                	slli	t1,t1,0x10
1c009a28:	011368b3          	or	a7,t1,a7
1c009a2c:	02f70f33          	mul	t5,a4,a5
1c009a30:	833e                	mv	t1,a5
1c009a32:	01e8fc63          	bgeu	a7,t5,1c009a4a <__umoddi3+0x272>
1c009a36:	98b6                	add	a7,a7,a3
1c009a38:	fff78313          	addi	t1,a5,-1 # ffffff <__l1_heap_size+0xff001b>
1c009a3c:	00d8e763          	bltu	a7,a3,1c009a4a <__umoddi3+0x272>
1c009a40:	01e8f563          	bgeu	a7,t5,1c009a4a <__umoddi3+0x272>
1c009a44:	ffe78313          	addi	t1,a5,-2
1c009a48:	98b6                	add	a7,a7,a3
1c009a4a:	41e888b3          	sub	a7,a7,t5
1c009a4e:	0308f7b3          	remu	a5,a7,a6
1c009a52:	0308d8b3          	divu	a7,a7,a6
1c009a56:	df07a5b3          	p.insert	a1,a5,15,16
1c009a5a:	03170733          	mul	a4,a4,a7
1c009a5e:	87c6                	mv	a5,a7
1c009a60:	00e5fc63          	bgeu	a1,a4,1c009a78 <__umoddi3+0x2a0>
1c009a64:	95b6                	add	a1,a1,a3
1c009a66:	fff88793          	addi	a5,a7,-1 # ffffff <__l1_heap_size+0xff001b>
1c009a6a:	00d5e763          	bltu	a1,a3,1c009a78 <__umoddi3+0x2a0>
1c009a6e:	00e5f563          	bgeu	a1,a4,1c009a78 <__umoddi3+0x2a0>
1c009a72:	ffe88793          	addi	a5,a7,-2
1c009a76:	95b6                	add	a1,a1,a3
1c009a78:	0342                	slli	t1,t1,0x10
1c009a7a:	6f41                	lui	t5,0x10
1c009a7c:	00f36333          	or	t1,t1,a5
1c009a80:	ffff0793          	addi	a5,t5,-1 # ffff <__l1_heap_size+0x1b>
1c009a84:	00f37833          	and	a6,t1,a5
1c009a88:	01035313          	srli	t1,t1,0x10
1c009a8c:	8ff1                	and	a5,a5,a2
1c009a8e:	02f808b3          	mul	a7,a6,a5
1c009a92:	8d99                	sub	a1,a1,a4
1c009a94:	01065713          	srli	a4,a2,0x10
1c009a98:	02f307b3          	mul	a5,t1,a5
1c009a9c:	8fbe                	mv	t6,a5
1c009a9e:	42e80fb3          	p.mac	t6,a6,a4
1c009aa2:	0108d813          	srli	a6,a7,0x10
1c009aa6:	987e                	add	a6,a6,t6
1c009aa8:	02e30333          	mul	t1,t1,a4
1c009aac:	00f87363          	bgeu	a6,a5,1c009ab2 <__umoddi3+0x2da>
1c009ab0:	937a                	add	t1,t1,t5
1c009ab2:	01085713          	srli	a4,a6,0x10
1c009ab6:	933a                	add	t1,t1,a4
1c009ab8:	6741                	lui	a4,0x10
1c009aba:	177d                	addi	a4,a4,-1
1c009abc:	00e87833          	and	a6,a6,a4
1c009ac0:	0842                	slli	a6,a6,0x10
1c009ac2:	00e8f733          	and	a4,a7,a4
1c009ac6:	9742                	add	a4,a4,a6
1c009ac8:	0065e663          	bltu	a1,t1,1c009ad4 <__umoddi3+0x2fc>
1c009acc:	00659d63          	bne	a1,t1,1c009ae6 <__umoddi3+0x30e>
1c009ad0:	00e57b63          	bgeu	a0,a4,1c009ae6 <__umoddi3+0x30e>
1c009ad4:	40c70633          	sub	a2,a4,a2
1c009ad8:	00c73733          	sltu	a4,a4,a2
1c009adc:	40d30333          	sub	t1,t1,a3
1c009ae0:	40e30333          	sub	t1,t1,a4
1c009ae4:	8732                	mv	a4,a2
1c009ae6:	40e50733          	sub	a4,a0,a4
1c009aea:	00e53533          	sltu	a0,a0,a4
1c009aee:	406585b3          	sub	a1,a1,t1
1c009af2:	8d89                	sub	a1,a1,a0
1c009af4:	01d597b3          	sll	a5,a1,t4
1c009af8:	01c75733          	srl	a4,a4,t3
1c009afc:	00e7e533          	or	a0,a5,a4
1c009b00:	01c5d5b3          	srl	a1,a1,t3
1c009b04:	b341                	j	1c009884 <__umoddi3+0xac>

1c009b06 <__extendsfdf2>:
1c009b06:	002027f3          	csrr	a5,frm
1c009b0a:	cf751633          	p.extractu	a2,a0,7,23
1c009b0e:	00160713          	addi	a4,a2,1 # 1000001 <__l1_heap_size+0xff001d>
1c009b12:	ee873733          	p.bclr	a4,a4,23,8
1c009b16:	4685                	li	a3,1
1c009b18:	ec0517b3          	p.extractu	a5,a0,22,0
1c009b1c:	817d                	srli	a0,a0,0x1f
1c009b1e:	00e6d963          	bge	a3,a4,1c009b30 <__extendsfdf2+0x2a>
1c009b22:	0037d713          	srli	a4,a5,0x3
1c009b26:	38060613          	addi	a2,a2,896
1c009b2a:	07f6                	slli	a5,a5,0x1d
1c009b2c:	4681                	li	a3,0
1c009b2e:	a899                	j	1c009b84 <__extendsfdf2+0x7e>
1c009b30:	ee05                	bnez	a2,1c009b68 <__extendsfdf2+0x62>
1c009b32:	c7ad                	beqz	a5,1c009b9c <__extendsfdf2+0x96>
1c009b34:	477d                	li	a4,31
1c009b36:	100796b3          	p.fl1	a3,a5
1c009b3a:	40d706b3          	sub	a3,a4,a3
1c009b3e:	4729                	li	a4,10
1c009b40:	00d74e63          	blt	a4,a3,1c009b5c <__extendsfdf2+0x56>
1c009b44:	472d                	li	a4,11
1c009b46:	8f15                	sub	a4,a4,a3
1c009b48:	01568613          	addi	a2,a3,21
1c009b4c:	00e7d733          	srl	a4,a5,a4
1c009b50:	00c797b3          	sll	a5,a5,a2
1c009b54:	38900613          	li	a2,905
1c009b58:	8e15                	sub	a2,a2,a3
1c009b5a:	bfc9                	j	1c009b2c <__extendsfdf2+0x26>
1c009b5c:	ff568713          	addi	a4,a3,-11
1c009b60:	00e79733          	sll	a4,a5,a4
1c009b64:	4781                	li	a5,0
1c009b66:	b7fd                	j	1c009b54 <__extendsfdf2+0x4e>
1c009b68:	cf8d                	beqz	a5,1c009ba2 <__extendsfdf2+0x9c>
1c009b6a:	004006b7          	lui	a3,0x400
1c009b6e:	8efd                	and	a3,a3,a5
1c009b70:	0037d713          	srli	a4,a5,0x3
1c009b74:	0016b693          	seqz	a3,a3
1c009b78:	0692                	slli	a3,a3,0x4
1c009b7a:	c1374733          	p.bset	a4,a4,0,19
1c009b7e:	07f6                	slli	a5,a5,0x1d
1c009b80:	7ff00613          	li	a2,2047
1c009b84:	4581                	li	a1,0
1c009b86:	e60725b3          	p.insert	a1,a4,19,0
1c009b8a:	d54625b3          	p.insert	a1,a2,10,20
1c009b8e:	c1f525b3          	p.insert	a1,a0,0,31
1c009b92:	853e                	mv	a0,a5
1c009b94:	c299                	beqz	a3,1c009b9a <__extendsfdf2+0x94>
1c009b96:	0016a073          	csrs	fflags,a3
1c009b9a:	8082                	ret
1c009b9c:	4701                	li	a4,0
1c009b9e:	4601                	li	a2,0
1c009ba0:	b771                	j	1c009b2c <__extendsfdf2+0x26>
1c009ba2:	4701                	li	a4,0
1c009ba4:	7ff00613          	li	a2,2047
1c009ba8:	b751                	j	1c009b2c <__extendsfdf2+0x26>

1c009baa <cpu_perf_get>:
1c009baa:	10e52763          	p.beqimm	a0,14,1c009cb8 <cpu_perf_get+0x10e>
1c009bae:	47b9                	li	a5,14
1c009bb0:	04a7ee63          	bltu	a5,a0,1c009c0c <cpu_perf_get+0x62>
1c009bb4:	0e652063          	p.beqimm	a0,6,1c009c94 <cpu_perf_get+0xea>
1c009bb8:	4799                	li	a5,6
1c009bba:	02a7e463          	bltu	a5,a0,1c009be2 <cpu_perf_get+0x38>
1c009bbe:	0c252263          	p.beqimm	a0,2,1c009c82 <cpu_perf_get+0xd8>
1c009bc2:	4789                	li	a5,2
1c009bc4:	00a7e763          	bltu	a5,a0,1c009bd2 <cpu_perf_get+0x28>
1c009bc8:	c55d                	beqz	a0,1c009c76 <cpu_perf_get+0xcc>
1c009bca:	0a152963          	p.beqimm	a0,1,1c009c7c <cpu_perf_get+0xd2>
1c009bce:	4501                	li	a0,0
1c009bd0:	8082                	ret
1c009bd2:	0a452e63          	p.beqimm	a0,4,1c009c8e <cpu_perf_get+0xe4>
1c009bd6:	4791                	li	a5,4
1c009bd8:	0aa7f863          	bgeu	a5,a0,1c009c88 <cpu_perf_get+0xde>
1c009bdc:	78502573          	csrr	a0,0x785
1c009be0:	8082                	ret
1c009be2:	0ca52263          	p.beqimm	a0,10,1c009ca6 <cpu_perf_get+0xfc>
1c009be6:	47a9                	li	a5,10
1c009be8:	00a7ea63          	bltu	a5,a0,1c009bfc <cpu_perf_get+0x52>
1c009bec:	0a852a63          	p.beqimm	a0,8,1c009ca0 <cpu_perf_get+0xf6>
1c009bf0:	47a1                	li	a5,8
1c009bf2:	0aa7f463          	bgeu	a5,a0,1c009c9a <cpu_perf_get+0xf0>
1c009bf6:	78902573          	csrr	a0,0x789
1c009bfa:	8082                	ret
1c009bfc:	0ac52b63          	p.beqimm	a0,12,1c009cb2 <cpu_perf_get+0x108>
1c009c00:	47b1                	li	a5,12
1c009c02:	0aa7f563          	bgeu	a5,a0,1c009cac <cpu_perf_get+0x102>
1c009c06:	78d02573          	csrr	a0,0x78d
1c009c0a:	8082                	ret
1c009c0c:	47dd                	li	a5,23
1c009c0e:	0cf50763          	beq	a0,a5,1c009cdc <cpu_perf_get+0x132>
1c009c12:	02a7ea63          	bltu	a5,a0,1c009c46 <cpu_perf_get+0x9c>
1c009c16:	47cd                	li	a5,19
1c009c18:	0af50963          	beq	a0,a5,1c009cca <cpu_perf_get+0x120>
1c009c1c:	00a7ed63          	bltu	a5,a0,1c009c36 <cpu_perf_get+0x8c>
1c009c20:	47c1                	li	a5,16
1c009c22:	0af50163          	beq	a0,a5,1c009cc4 <cpu_perf_get+0x11a>
1c009c26:	08f56c63          	bltu	a0,a5,1c009cbe <cpu_perf_get+0x114>
1c009c2a:	47c9                	li	a5,18
1c009c2c:	faf511e3          	bne	a0,a5,1c009bce <cpu_perf_get+0x24>
1c009c30:	79202573          	csrr	a0,0x792
1c009c34:	8082                	ret
1c009c36:	47d5                	li	a5,21
1c009c38:	08f50f63          	beq	a0,a5,1c009cd6 <cpu_perf_get+0x12c>
1c009c3c:	08a7fa63          	bgeu	a5,a0,1c009cd0 <cpu_perf_get+0x126>
1c009c40:	79602573          	csrr	a0,0x796
1c009c44:	8082                	ret
1c009c46:	47ed                	li	a5,27
1c009c48:	0af50363          	beq	a0,a5,1c009cee <cpu_perf_get+0x144>
1c009c4c:	00a7ea63          	bltu	a5,a0,1c009c60 <cpu_perf_get+0xb6>
1c009c50:	47e5                	li	a5,25
1c009c52:	08f50b63          	beq	a0,a5,1c009ce8 <cpu_perf_get+0x13e>
1c009c56:	08a7f663          	bgeu	a5,a0,1c009ce2 <cpu_perf_get+0x138>
1c009c5a:	79a02573          	csrr	a0,0x79a
1c009c5e:	8082                	ret
1c009c60:	47f5                	li	a5,29
1c009c62:	08f50c63          	beq	a0,a5,1c009cfa <cpu_perf_get+0x150>
1c009c66:	08f56763          	bltu	a0,a5,1c009cf4 <cpu_perf_get+0x14a>
1c009c6a:	47f9                	li	a5,30
1c009c6c:	f6f511e3          	bne	a0,a5,1c009bce <cpu_perf_get+0x24>
1c009c70:	79e02573          	csrr	a0,0x79e
1c009c74:	8082                	ret
1c009c76:	78002573          	csrr	a0,0x780
1c009c7a:	8082                	ret
1c009c7c:	78102573          	csrr	a0,0x781
1c009c80:	8082                	ret
1c009c82:	78202573          	csrr	a0,0x782
1c009c86:	8082                	ret
1c009c88:	78302573          	csrr	a0,0x783
1c009c8c:	8082                	ret
1c009c8e:	78402573          	csrr	a0,0x784
1c009c92:	8082                	ret
1c009c94:	78602573          	csrr	a0,0x786
1c009c98:	8082                	ret
1c009c9a:	78702573          	csrr	a0,0x787
1c009c9e:	8082                	ret
1c009ca0:	78802573          	csrr	a0,0x788
1c009ca4:	8082                	ret
1c009ca6:	78a02573          	csrr	a0,0x78a
1c009caa:	8082                	ret
1c009cac:	78b02573          	csrr	a0,0x78b
1c009cb0:	8082                	ret
1c009cb2:	78c02573          	csrr	a0,0x78c
1c009cb6:	8082                	ret
1c009cb8:	78e02573          	csrr	a0,0x78e
1c009cbc:	8082                	ret
1c009cbe:	78f02573          	csrr	a0,0x78f
1c009cc2:	8082                	ret
1c009cc4:	79002573          	csrr	a0,0x790
1c009cc8:	8082                	ret
1c009cca:	79302573          	csrr	a0,0x793
1c009cce:	8082                	ret
1c009cd0:	79402573          	csrr	a0,0x794
1c009cd4:	8082                	ret
1c009cd6:	79502573          	csrr	a0,0x795
1c009cda:	8082                	ret
1c009cdc:	79702573          	csrr	a0,0x797
1c009ce0:	8082                	ret
1c009ce2:	79802573          	csrr	a0,0x798
1c009ce6:	8082                	ret
1c009ce8:	79902573          	csrr	a0,0x799
1c009cec:	8082                	ret
1c009cee:	79b02573          	csrr	a0,0x79b
1c009cf2:	8082                	ret
1c009cf4:	79c02573          	csrr	a0,0x79c
1c009cf8:	8082                	ret
1c009cfa:	79d02573          	csrr	a0,0x79d
1c009cfe:	8082                	ret

1c009d00 <init_image_feature>:
1c009d00:	1c0105b7          	lui	a1,0x1c010
1c009d04:	1c005637          	lui	a2,0x1c005
1c009d08:	1c0016b7          	lui	a3,0x1c001
1c009d0c:	4781                	li	a5,0
1c009d0e:	15058593          	addi	a1,a1,336 # 1c010150 <Image_L1>
1c009d12:	2dc60613          	addi	a2,a2,732 # 1c0052dc <image>
1c009d16:	2dc68693          	addi	a3,a3,732 # 1c0012dc <feature>
1c009d1a:	0808507b          	lp.setupi	x0,128,1c009d3a <init_image_feature+0x3a>
1c009d1e:	00b78333          	add	t1,a5,a1
1c009d22:	00c788b3          	add	a7,a5,a2
1c009d26:	00d78833          	add	a6,a5,a3
1c009d2a:	080350fb          	lp.setupi	x1,128,1c009d36 <init_image_feature+0x36>
1c009d2e:	00134e0b          	p.lbu	t3,1(t1!)
1c009d32:	000800ab          	p.sb	zero,1(a6!)
1c009d36:	01c880ab          	p.sb	t3,1(a7!)
1c009d3a:	08078793          	addi	a5,a5,128
1c009d3e:	8082                	ret

1c009d40 <is_feature_9_16>:
1c009d40:	7119                	addi	sp,sp,-128
1c009d42:	1c001837          	lui	a6,0x1c001
1c009d46:	86880813          	addi	a6,a6,-1944 # 1c000868 <__DTOR_END__>
1c009d4a:	888a                	mv	a7,sp
1c009d4c:	0089d0fb          	lp.setupi	x1,8,1c009d72 <is_feature_9_16+0x32>
1c009d50:	00082283          	lw	t0,0(a6)
1c009d54:	00482f83          	lw	t6,4(a6)
1c009d58:	00882f03          	lw	t5,8(a6)
1c009d5c:	00c82e83          	lw	t4,12(a6)
1c009d60:	0058a023          	sw	t0,0(a7)
1c009d64:	01f8a223          	sw	t6,4(a7)
1c009d68:	01e8a423          	sw	t5,8(a7)
1c009d6c:	01d8a623          	sw	t4,12(a7)
1c009d70:	0841                	addi	a6,a6,16
1c009d72:	08c1                	addi	a7,a7,16
1c009d74:	00761813          	slli	a6,a2,0x7
1c009d78:	982a                	add	a6,a6,a0
1c009d7a:	982e                	add	a6,a6,a1
1c009d7c:	00084803          	lbu	a6,0(a6)
1c009d80:	888a                	mv	a7,sp
1c009d82:	4e01                	li	t3,0
1c009d84:	01078fb3          	add	t6,a5,a6
1c009d88:	4301                	li	t1,0
1c009d8a:	40f807b3          	sub	a5,a6,a5
1c009d8e:	4f41                	li	t5,16
1c009d90:	01df40fb          	lp.setup	x1,t5,1c009dca <is_feature_9_16+0x8a>
1c009d94:	0008a803          	lw	a6,0(a7)
1c009d98:	01058eb3          	add	t4,a1,a6
1c009d9c:	020ec663          	bltz	t4,1c009dc8 <is_feature_9_16+0x88>
1c009da0:	02ded463          	bge	t4,a3,1c009dc8 <is_feature_9_16+0x88>
1c009da4:	0048a803          	lw	a6,4(a7)
1c009da8:	9832                	add	a6,a6,a2
1c009daa:	00084f63          	bltz	a6,1c009dc8 <is_feature_9_16+0x88>
1c009dae:	00e85d63          	bge	a6,a4,1c009dc8 <is_feature_9_16+0x88>
1c009db2:	081e                	slli	a6,a6,0x7
1c009db4:	982a                	add	a6,a6,a0
1c009db6:	9876                	add	a6,a6,t4
1c009db8:	00084803          	lbu	a6,0(a6)
1c009dbc:	010fdb63          	bge	t6,a6,1c009dd2 <is_feature_9_16+0x92>
1c009dc0:	0305                	addi	t1,t1,1
1c009dc2:	02932163          	p.beqimm	t1,9,1c009de4 <is_feature_9_16+0xa4>
1c009dc6:	4e01                	li	t3,0
1c009dc8:	08a1                	addi	a7,a7,8
1c009dca:	0001                	nop
1c009dcc:	4501                	li	a0,0
1c009dce:	6109                	addi	sp,sp,128
1c009dd0:	8082                	ret
1c009dd2:	00f85763          	bge	a6,a5,1c009de0 <is_feature_9_16+0xa0>
1c009dd6:	0e05                	addi	t3,t3,1
1c009dd8:	009e2663          	p.beqimm	t3,9,1c009de4 <is_feature_9_16+0xa4>
1c009ddc:	4301                	li	t1,0
1c009dde:	b7ed                	j	1c009dc8 <is_feature_9_16+0x88>
1c009de0:	4e01                	li	t3,0
1c009de2:	bfed                	j	1c009ddc <is_feature_9_16+0x9c>
1c009de4:	4505                	li	a0,1
1c009de6:	b7e5                	j	1c009dce <is_feature_9_16+0x8e>

1c009de8 <test_kickoff>:
1c009de8:	7139                	addi	sp,sp,-64
1c009dea:	de06                	sw	ra,60(sp)
1c009dec:	dc22                	sw	s0,56(sp)
1c009dee:	da26                	sw	s1,52(sp)
1c009df0:	d84a                	sw	s2,48(sp)
1c009df2:	d64e                	sw	s3,44(sp)
1c009df4:	d452                	sw	s4,40(sp)
1c009df6:	d256                	sw	s5,36(sp)
1c009df8:	d05a                	sw	s6,32(sp)
1c009dfa:	ce5e                	sw	s7,28(sp)
1c009dfc:	cc62                	sw	s8,24(sp)
1c009dfe:	3709                	jal	1c009d00 <init_image_feature>
1c009e00:	000207b7          	lui	a5,0x20
1c009e04:	0789                	addi	a5,a5,2
1c009e06:	cc079073          	csrw	0xcc0,a5
1c009e0a:	f14027f3          	csrr	a5,mhartid
1c009e0e:	477d                	li	a4,31
1c009e10:	f1402473          	csrr	s0,mhartid
1c009e14:	ca5797b3          	p.extractu	a5,a5,5,5
1c009e18:	10e79063          	bne	a5,a4,1c009f18 <test_kickoff+0x130>
1c009e1c:	4785                	li	a5,1
1c009e1e:	1a10b737          	lui	a4,0x1a10b
1c009e22:	02f72023          	sw	a5,32(a4) # 1a10b020 <__l1_end+0xa10b004>
1c009e26:	4781                	li	a5,0
1c009e28:	79f79073          	csrw	0x79f,a5
1c009e2c:	477d                	li	a4,31
1c009e2e:	ca5417b3          	p.extractu	a5,s0,5,5
1c009e32:	0ee79b63          	bne	a5,a4,1c009f28 <test_kickoff+0x140>
1c009e36:	4785                	li	a5,1
1c009e38:	1a10b737          	lui	a4,0x1a10b
1c009e3c:	00f72c23          	sw	a5,24(a4) # 1a10b018 <__l1_end+0xa10affc>
1c009e40:	478d                	li	a5,3
1c009e42:	cc179073          	csrw	0xcc1,a5
1c009e46:	1c0017b7          	lui	a5,0x1c001
1c009e4a:	2d07cb83          	lbu	s7,720(a5) # 1c0012d0 <threshold>
1c009e4e:	1c001ab7          	lui	s5,0x1c001
1c009e52:	4901                	li	s2,0
1c009e54:	2dca8a93          	addi	s5,s5,732 # 1c0012dc <feature>
1c009e58:	1c005c37          	lui	s8,0x1c005
1c009e5c:	1c001b37          	lui	s6,0x1c001
1c009e60:	00791993          	slli	s3,s2,0x7
1c009e64:	99d6                	add	s3,s3,s5
1c009e66:	4481                	li	s1,0
1c009e68:	87de                	mv	a5,s7
1c009e6a:	08000713          	li	a4,128
1c009e6e:	85a6                	mv	a1,s1
1c009e70:	08000693          	li	a3,128
1c009e74:	864a                	mv	a2,s2
1c009e76:	2dcc0513          	addi	a0,s8,732 # 1c0052dc <image>
1c009e7a:	35d9                	jal	1c009d40 <is_feature_9_16>
1c009e7c:	87aa                	mv	a5,a0
1c009e7e:	2d8b0713          	addi	a4,s6,728 # 1c0012d8 <total_features>
1c009e82:	00f980ab          	p.sb	a5,1(s3!)
1c009e86:	431c                	lw	a5,0(a4)
1c009e88:	ee853533          	p.bclr	a0,a0,23,8
1c009e8c:	0485                	addi	s1,s1,1
1c009e8e:	953e                	add	a0,a0,a5
1c009e90:	c308                	sw	a0,0(a4)
1c009e92:	08000793          	li	a5,128
1c009e96:	2d8b0a13          	addi	s4,s6,728
1c009e9a:	fcf497e3          	bne	s1,a5,1c009e68 <test_kickoff+0x80>
1c009e9e:	0905                	addi	s2,s2,1
1c009ea0:	fc9910e3          	bne	s2,s1,1c009e60 <test_kickoff+0x78>
1c009ea4:	ca5417b3          	p.extractu	a5,s0,5,5
1c009ea8:	477d                	li	a4,31
1c009eaa:	08e79763          	bne	a5,a4,1c009f38 <test_kickoff+0x150>
1c009eae:	1a10b7b7          	lui	a5,0x1a10b
1c009eb2:	0007a023          	sw	zero,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c009eb6:	4781                	li	a5,0
1c009eb8:	cc179073          	csrw	0xcc1,a5
1c009ebc:	4505                	li	a0,1
1c009ebe:	31f5                	jal	1c009baa <cpu_perf_get>
1c009ec0:	ca541433          	p.extractu	s0,s0,5,5
1c009ec4:	47fd                	li	a5,31
1c009ec6:	84aa                	mv	s1,a0
1c009ec8:	1a10b637          	lui	a2,0x1a10b
1c009ecc:	00f40663          	beq	s0,a5,1c009ed8 <test_kickoff+0xf0>
1c009ed0:	10200637          	lui	a2,0x10200
1c009ed4:	40060613          	addi	a2,a2,1024 # 10200400 <__l1_end+0x2003e4>
1c009ed8:	00862603          	lw	a2,8(a2)
1c009edc:	d0167553          	fcvt.s.wu	a0,a2
1c009ee0:	d014f7d3          	fcvt.s.wu	a5,s1
1c009ee4:	c632                	sw	a2,12(sp)
1c009ee6:	18f57553          	fdiv.s	a0,a0,a5
1c009eea:	3931                	jal	1c009b06 <__extendsfdf2>
1c009eec:	4632                	lw	a2,12(sp)
1c009eee:	872a                	mv	a4,a0
1c009ef0:	1c001537          	lui	a0,0x1c001
1c009ef4:	87ae                	mv	a5,a1
1c009ef6:	9e850513          	addi	a0,a0,-1560 # 1c0009e8 <__clz_tab+0x100>
1c009efa:	85a6                	mv	a1,s1
1c009efc:	2421                	jal	1c00a104 <printf>
1c009efe:	000a2583          	lw	a1,0(s4)
1c009f02:	1c001537          	lui	a0,0x1c001
1c009f06:	a2050513          	addi	a0,a0,-1504 # 1c000a20 <__clz_tab+0x138>
1c009f0a:	2aed                	jal	1c00a104 <printf>
1c009f0c:	1c0097b7          	lui	a5,0x1c009
1c009f10:	4501                	li	a0,0
1c009f12:	2c07ae23          	sw	zero,732(a5) # 1c0092dc <pos_kernel_pmsis_exit_value>
1c009f16:	2a7d                	jal	1c00a0d4 <exit>
1c009f18:	102007b7          	lui	a5,0x10200
1c009f1c:	4705                	li	a4,1
1c009f1e:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c009f22:	02e7a023          	sw	a4,32(a5)
1c009f26:	b701                	j	1c009e26 <test_kickoff+0x3e>
1c009f28:	102007b7          	lui	a5,0x10200
1c009f2c:	4705                	li	a4,1
1c009f2e:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c009f32:	00e7ac23          	sw	a4,24(a5)
1c009f36:	b729                	j	1c009e40 <test_kickoff+0x58>
1c009f38:	102007b7          	lui	a5,0x10200
1c009f3c:	40078793          	addi	a5,a5,1024 # 10200400 <__l1_end+0x2003e4>
1c009f40:	bf8d                	j	1c009eb2 <test_kickoff+0xca>

1c009f42 <main>:
1c009f42:	1141                	addi	sp,sp,-16
1c009f44:	c606                	sw	ra,12(sp)
1c009f46:	354d                	jal	1c009de8 <test_kickoff>

1c009f48 <pos_fll_set_freq>:
1c009f48:	100596b3          	p.fl1	a3,a1
1c009f4c:	47f5                	li	a5,29
1c009f4e:	872a                	mv	a4,a0
1c009f50:	82d7b7db          	p.subun	a5,a5,a3,1
1c009f54:	4505                	li	a0,1
1c009f56:	04f567b3          	p.max	a5,a0,a5
1c009f5a:	fff78693          	addi	a3,a5,-1
1c009f5e:	00f595b3          	sll	a1,a1,a5
1c009f62:	00d51533          	sll	a0,a0,a3
1c009f66:	dc05b6b3          	p.bclr	a3,a1,14,0
1c009f6a:	c0f6a55b          	p.addunr	a0,a3,a5
1c009f6e:	00400693          	li	a3,4
1c009f72:	00271613          	slli	a2,a4,0x2
1c009f76:	00a6e623          	p.sw	a0,a2(a3)
1c009f7a:	96ba                	add	a3,a3,a4
1c009f7c:	00c6c683          	lbu	a3,12(a3)
1c009f80:	ce99                	beqz	a3,1c009f9e <pos_fll_set_freq+0x56>
1c009f82:	0712                	slli	a4,a4,0x4
1c009f84:	0711                	addi	a4,a4,4
1c009f86:	1a100637          	lui	a2,0x1a100
1c009f8a:	20e67683          	p.lw	a3,a4(a2)
1c009f8e:	81bd                	srli	a1,a1,0xf
1c009f90:	de05a6b3          	p.insert	a3,a1,15,0
1c009f94:	0785                	addi	a5,a5,1
1c009f96:	c7a7a6b3          	p.insert	a3,a5,3,26
1c009f9a:	00d66723          	p.sw	a3,a4(a2)
1c009f9e:	8082                	ret

1c009fa0 <pos_fll_init>:
1c009fa0:	1141                	addi	sp,sp,-16
1c009fa2:	00451613          	slli	a2,a0,0x4
1c009fa6:	c04a                	sw	s2,0(sp)
1c009fa8:	00460813          	addi	a6,a2,4 # 1a100004 <__l1_end+0xa0fffe8>
1c009fac:	892a                	mv	s2,a0
1c009fae:	1a1006b7          	lui	a3,0x1a100
1c009fb2:	c606                	sw	ra,12(sp)
1c009fb4:	c422                	sw	s0,8(sp)
1c009fb6:	c226                	sw	s1,4(sp)
1c009fb8:	2106f703          	p.lw	a4,a6(a3)
1c009fbc:	87ba                	mv	a5,a4
1c009fbe:	04074163          	bltz	a4,1c00a000 <pos_fll_init+0x60>
1c009fc2:	00860893          	addi	a7,a2,8
1c009fc6:	2116f503          	p.lw	a0,a7(a3)
1c009fca:	4599                	li	a1,6
1c009fcc:	caa5a533          	p.insert	a0,a1,5,10
1c009fd0:	05000593          	li	a1,80
1c009fd4:	d705a533          	p.insert	a0,a1,11,16
1c009fd8:	1a1005b7          	lui	a1,0x1a100
1c009fdc:	00a5e8a3          	p.sw	a0,a7(a1)
1c009fe0:	0631                	addi	a2,a2,12
1c009fe2:	20c6f683          	p.lw	a3,a2(a3)
1c009fe6:	14c00513          	li	a0,332
1c009fea:	d30526b3          	p.insert	a3,a0,9,16
1c009fee:	00d5e623          	p.sw	a3,a2(a1)
1c009ff2:	4685                	li	a3,1
1c009ff4:	c1e6a7b3          	p.insert	a5,a3,0,30
1c009ff8:	c1f6a7b3          	p.insert	a5,a3,0,31
1c009ffc:	00f5e823          	p.sw	a5,a6(a1)
1c00a000:	00400693          	li	a3,4
1c00a004:	00291613          	slli	a2,s2,0x2
1c00a008:	96b2                	add	a3,a3,a2
1c00a00a:	4284                	lw	s1,0(a3)
1c00a00c:	00400413          	li	s0,4
1c00a010:	c085                	beqz	s1,1c00a030 <pos_fll_init+0x90>
1c00a012:	85a6                	mv	a1,s1
1c00a014:	854a                	mv	a0,s2
1c00a016:	3f0d                	jal	1c009f48 <pos_fll_set_freq>
1c00a018:	01240533          	add	a0,s0,s2
1c00a01c:	4785                	li	a5,1
1c00a01e:	00f50623          	sb	a5,12(a0)
1c00a022:	40b2                	lw	ra,12(sp)
1c00a024:	4422                	lw	s0,8(sp)
1c00a026:	8526                	mv	a0,s1
1c00a028:	4902                	lw	s2,0(sp)
1c00a02a:	4492                	lw	s1,4(sp)
1c00a02c:	0141                	addi	sp,sp,16
1c00a02e:	8082                	ret
1c00a030:	10075733          	p.exthz	a4,a4
1c00a034:	c7a797b3          	p.extractu	a5,a5,3,26
1c00a038:	073e                	slli	a4,a4,0xf
1c00a03a:	17fd                	addi	a5,a5,-1
1c00a03c:	00f754b3          	srl	s1,a4,a5
1c00a040:	c284                	sw	s1,0(a3)
1c00a042:	bfd9                	j	1c00a018 <pos_fll_init+0x78>

1c00a044 <pos_fll_constructor>:
1c00a044:	00400793          	li	a5,4
1c00a048:	0007a023          	sw	zero,0(a5)
1c00a04c:	0007a223          	sw	zero,4(a5)
1c00a050:	0007a423          	sw	zero,8(a5)
1c00a054:	00079623          	sh	zero,12(a5)
1c00a058:	00078723          	sb	zero,14(a5)
1c00a05c:	8082                	ret

1c00a05e <pos_soc_init>:
1c00a05e:	1141                	addi	sp,sp,-16
1c00a060:	c606                	sw	ra,12(sp)
1c00a062:	c422                	sw	s0,8(sp)
1c00a064:	37c5                	jal	1c00a044 <pos_fll_constructor>
1c00a066:	4501                	li	a0,0
1c00a068:	3f25                	jal	1c009fa0 <pos_fll_init>
1c00a06a:	00a02a23          	sw	a0,20(zero) # 14 <pos_freq_domains>
1c00a06e:	4505                	li	a0,1
1c00a070:	3f05                	jal	1c009fa0 <pos_fll_init>
1c00a072:	01400413          	li	s0,20
1c00a076:	c408                	sw	a0,8(s0)
1c00a078:	4509                	li	a0,2
1c00a07a:	371d                	jal	1c009fa0 <pos_fll_init>
1c00a07c:	c048                	sw	a0,4(s0)
1c00a07e:	40b2                	lw	ra,12(sp)
1c00a080:	4422                	lw	s0,8(sp)
1c00a082:	0141                	addi	sp,sp,16
1c00a084:	8082                	ret

1c00a086 <pos_libc_putc_stdout>:
1c00a086:	f14027f3          	csrr	a5,mhartid
1c00a08a:	f1402773          	csrr	a4,mhartid
1c00a08e:	1a10f6b7          	lui	a3,0x1a10f
1c00a092:	ca5797b3          	p.extractu	a5,a5,5,5
1c00a096:	070e                	slli	a4,a4,0x3
1c00a098:	079e                	slli	a5,a5,0x7
1c00a09a:	ee873733          	p.bclr	a4,a4,23,8
1c00a09e:	97b6                	add	a5,a5,a3
1c00a0a0:	00a767a3          	p.sw	a0,a5(a4)
1c00a0a4:	8082                	ret

1c00a0a6 <strchr>:
1c00a0a6:	0ff5f593          	andi	a1,a1,255
1c00a0aa:	00054703          	lbu	a4,0(a0)
1c00a0ae:	87aa                	mv	a5,a0
1c00a0b0:	0505                	addi	a0,a0,1
1c00a0b2:	00b70563          	beq	a4,a1,1c00a0bc <strchr+0x16>
1c00a0b6:	fb75                	bnez	a4,1c00a0aa <strchr+0x4>
1c00a0b8:	c191                	beqz	a1,1c00a0bc <strchr+0x16>
1c00a0ba:	4781                	li	a5,0
1c00a0bc:	853e                	mv	a0,a5
1c00a0be:	8082                	ret

1c00a0c0 <pos_libc_fputc_locked>:
1c00a0c0:	1141                	addi	sp,sp,-16
1c00a0c2:	0ff57513          	andi	a0,a0,255
1c00a0c6:	c606                	sw	ra,12(sp)
1c00a0c8:	3f7d                	jal	1c00a086 <pos_libc_putc_stdout>
1c00a0ca:	40b2                	lw	ra,12(sp)
1c00a0cc:	4501                	li	a0,0
1c00a0ce:	0141                	addi	sp,sp,16
1c00a0d0:	8082                	ret

1c00a0d2 <pos_libc_prf_locked>:
1c00a0d2:	a259                	j	1c00a258 <pos_libc_prf>

1c00a0d4 <exit>:
1c00a0d4:	1101                	addi	sp,sp,-32
1c00a0d6:	c62a                	sw	a0,12(sp)
1c00a0d8:	ce06                	sw	ra,28(sp)
1c00a0da:	455000ef          	jal	ra,1c00ad2e <pos_init_stop>
1c00a0de:	4532                	lw	a0,12(sp)
1c00a0e0:	1a1047b7          	lui	a5,0x1a104
1c00a0e4:	c1f54533          	p.bset	a0,a0,0,31
1c00a0e8:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_end+0xa104084>
1c00a0ec:	1a10a7b7          	lui	a5,0x1a10a
1c00a0f0:	577d                	li	a4,-1
1c00a0f2:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c00a0f6:	10500073          	wfi
1c00a0fa:	bff5                	j	1c00a0f6 <exit+0x22>

1c00a0fc <pos_io_start>:
1c00a0fc:	4501                	li	a0,0
1c00a0fe:	8082                	ret

1c00a100 <pos_io_stop>:
1c00a100:	4501                	li	a0,0
1c00a102:	8082                	ret

1c00a104 <printf>:
1c00a104:	7139                	addi	sp,sp,-64
1c00a106:	d432                	sw	a2,40(sp)
1c00a108:	862a                	mv	a2,a0
1c00a10a:	1c00a537          	lui	a0,0x1c00a
1c00a10e:	d22e                	sw	a1,36(sp)
1c00a110:	d636                	sw	a3,44(sp)
1c00a112:	4589                	li	a1,2
1c00a114:	1054                	addi	a3,sp,36
1c00a116:	0c050513          	addi	a0,a0,192 # 1c00a0c0 <pos_libc_fputc_locked>
1c00a11a:	ce06                	sw	ra,28(sp)
1c00a11c:	d83a                	sw	a4,48(sp)
1c00a11e:	da3e                	sw	a5,52(sp)
1c00a120:	dc42                	sw	a6,56(sp)
1c00a122:	de46                	sw	a7,60(sp)
1c00a124:	c636                	sw	a3,12(sp)
1c00a126:	3775                	jal	1c00a0d2 <pos_libc_prf_locked>
1c00a128:	40f2                	lw	ra,28(sp)
1c00a12a:	6121                	addi	sp,sp,64
1c00a12c:	8082                	ret

1c00a12e <_to_x>:
1c00a12e:	7179                	addi	sp,sp,-48
1c00a130:	d422                	sw	s0,40(sp)
1c00a132:	d226                	sw	s1,36(sp)
1c00a134:	ce4e                	sw	s3,28(sp)
1c00a136:	cc52                	sw	s4,24(sp)
1c00a138:	ca56                	sw	s5,20(sp)
1c00a13a:	c85a                	sw	s6,16(sp)
1c00a13c:	d606                	sw	ra,44(sp)
1c00a13e:	d04a                	sw	s2,32(sp)
1c00a140:	c65e                	sw	s7,12(sp)
1c00a142:	84aa                	mv	s1,a0
1c00a144:	89ae                	mv	s3,a1
1c00a146:	8a32                	mv	s4,a2
1c00a148:	8ab6                	mv	s5,a3
1c00a14a:	842a                	mv	s0,a0
1c00a14c:	4b25                	li	s6,9
1c00a14e:	8656                	mv	a2,s5
1c00a150:	4681                	li	a3,0
1c00a152:	854e                	mv	a0,s3
1c00a154:	85d2                	mv	a1,s4
1c00a156:	e82ff0ef          	jal	ra,1c0097d8 <__umoddi3>
1c00a15a:	85d2                	mv	a1,s4
1c00a15c:	892a                	mv	s2,a0
1c00a15e:	8656                	mv	a2,s5
1c00a160:	854e                	mv	a0,s3
1c00a162:	4681                	li	a3,0
1c00a164:	b38ff0ef          	jal	ra,1c00949c <__udivdi3>
1c00a168:	89aa                	mv	s3,a0
1c00a16a:	8a2e                	mv	s4,a1
1c00a16c:	02700713          	li	a4,39
1c00a170:	012b6363          	bltu	s6,s2,1c00a176 <_to_x+0x48>
1c00a174:	4701                	li	a4,0
1c00a176:	03090913          	addi	s2,s2,48
1c00a17a:	974a                	add	a4,a4,s2
1c00a17c:	00e40023          	sb	a4,0(s0)
1c00a180:	8dc9                	or	a1,a1,a0
1c00a182:	00140793          	addi	a5,s0,1
1c00a186:	e195                	bnez	a1,1c00a1aa <_to_x+0x7c>
1c00a188:	00078023          	sb	zero,0(a5)
1c00a18c:	40978533          	sub	a0,a5,s1
1c00a190:	0084ef63          	bltu	s1,s0,1c00a1ae <_to_x+0x80>
1c00a194:	50b2                	lw	ra,44(sp)
1c00a196:	5422                	lw	s0,40(sp)
1c00a198:	5492                	lw	s1,36(sp)
1c00a19a:	5902                	lw	s2,32(sp)
1c00a19c:	49f2                	lw	s3,28(sp)
1c00a19e:	4a62                	lw	s4,24(sp)
1c00a1a0:	4ad2                	lw	s5,20(sp)
1c00a1a2:	4b42                	lw	s6,16(sp)
1c00a1a4:	4bb2                	lw	s7,12(sp)
1c00a1a6:	6145                	addi	sp,sp,48
1c00a1a8:	8082                	ret
1c00a1aa:	843e                	mv	s0,a5
1c00a1ac:	b74d                	j	1c00a14e <_to_x+0x20>
1c00a1ae:	0004c703          	lbu	a4,0(s1)
1c00a1b2:	00044783          	lbu	a5,0(s0)
1c00a1b6:	fee40fab          	p.sb	a4,-1(s0!)
1c00a1ba:	00f480ab          	p.sb	a5,1(s1!)
1c00a1be:	bfc9                	j	1c00a190 <_to_x+0x62>

1c00a1c0 <_rlrshift>:
1c00a1c0:	411c                	lw	a5,0(a0)
1c00a1c2:	4154                	lw	a3,4(a0)
1c00a1c4:	fc17b733          	p.bclr	a4,a5,30,1
1c00a1c8:	01f69613          	slli	a2,a3,0x1f
1c00a1cc:	8385                	srli	a5,a5,0x1
1c00a1ce:	8fd1                	or	a5,a5,a2
1c00a1d0:	97ba                	add	a5,a5,a4
1c00a1d2:	8285                	srli	a3,a3,0x1
1c00a1d4:	00e7b733          	sltu	a4,a5,a4
1c00a1d8:	9736                	add	a4,a4,a3
1c00a1da:	c11c                	sw	a5,0(a0)
1c00a1dc:	c158                	sw	a4,4(a0)
1c00a1de:	8082                	ret

1c00a1e0 <_ldiv5>:
1c00a1e0:	4118                	lw	a4,0(a0)
1c00a1e2:	4154                	lw	a3,4(a0)
1c00a1e4:	4615                	li	a2,5
1c00a1e6:	00270793          	addi	a5,a4,2
1c00a1ea:	00e7b733          	sltu	a4,a5,a4
1c00a1ee:	9736                	add	a4,a4,a3
1c00a1f0:	02c755b3          	divu	a1,a4,a2
1c00a1f4:	42b61733          	p.msu	a4,a2,a1
1c00a1f8:	01d71693          	slli	a3,a4,0x1d
1c00a1fc:	0037d713          	srli	a4,a5,0x3
1c00a200:	8f55                	or	a4,a4,a3
1c00a202:	02c75733          	divu	a4,a4,a2
1c00a206:	01d75693          	srli	a3,a4,0x1d
1c00a20a:	070e                	slli	a4,a4,0x3
1c00a20c:	42e617b3          	p.msu	a5,a2,a4
1c00a210:	95b6                	add	a1,a1,a3
1c00a212:	02c7d7b3          	divu	a5,a5,a2
1c00a216:	973e                	add	a4,a4,a5
1c00a218:	00f737b3          	sltu	a5,a4,a5
1c00a21c:	97ae                	add	a5,a5,a1
1c00a21e:	c118                	sw	a4,0(a0)
1c00a220:	c15c                	sw	a5,4(a0)
1c00a222:	8082                	ret

1c00a224 <_get_digit>:
1c00a224:	419c                	lw	a5,0(a1)
1c00a226:	03000713          	li	a4,48
1c00a22a:	02f05563          	blez	a5,1c00a254 <_get_digit+0x30>
1c00a22e:	17fd                	addi	a5,a5,-1
1c00a230:	c19c                	sw	a5,0(a1)
1c00a232:	411c                	lw	a5,0(a0)
1c00a234:	4729                	li	a4,10
1c00a236:	4150                	lw	a2,4(a0)
1c00a238:	02f706b3          	mul	a3,a4,a5
1c00a23c:	02f737b3          	mulhu	a5,a4,a5
1c00a240:	c114                	sw	a3,0(a0)
1c00a242:	42c707b3          	p.mac	a5,a4,a2
1c00a246:	01c7d713          	srli	a4,a5,0x1c
1c00a24a:	c7c7b7b3          	p.bclr	a5,a5,3,28
1c00a24e:	03070713          	addi	a4,a4,48
1c00a252:	c15c                	sw	a5,4(a0)
1c00a254:	853a                	mv	a0,a4
1c00a256:	8082                	ret

1c00a258 <pos_libc_prf>:
1c00a258:	7135                	addi	sp,sp,-160
1c00a25a:	c94a                	sw	s2,144(sp)
1c00a25c:	c74e                	sw	s3,140(sp)
1c00a25e:	c15a                	sw	s6,128(sp)
1c00a260:	dede                	sw	s7,124(sp)
1c00a262:	cf06                	sw	ra,156(sp)
1c00a264:	cd22                	sw	s0,152(sp)
1c00a266:	cb26                	sw	s1,148(sp)
1c00a268:	c552                	sw	s4,136(sp)
1c00a26a:	c356                	sw	s5,132(sp)
1c00a26c:	dce2                	sw	s8,120(sp)
1c00a26e:	dae6                	sw	s9,116(sp)
1c00a270:	d8ea                	sw	s10,112(sp)
1c00a272:	d6ee                	sw	s11,108(sp)
1c00a274:	8b2a                	mv	s6,a0
1c00a276:	8bae                	mv	s7,a1
1c00a278:	8936                	mv	s2,a3
1c00a27a:	4981                	li	s3,0
1c00a27c:	00064503          	lbu	a0,0(a2)
1c00a280:	00160c13          	addi	s8,a2,1
1c00a284:	c911                	beqz	a0,1c00a298 <pos_libc_prf+0x40>
1c00a286:	02500793          	li	a5,37
1c00a28a:	14f50363          	beq	a0,a5,1c00a3d0 <pos_libc_prf+0x178>
1c00a28e:	85de                	mv	a1,s7
1c00a290:	9b02                	jalr	s6
1c00a292:	13f535e3          	p.bneimm	a0,-1,1c00abbc <pos_libc_prf+0x964>
1c00a296:	59fd                	li	s3,-1
1c00a298:	40fa                	lw	ra,156(sp)
1c00a29a:	446a                	lw	s0,152(sp)
1c00a29c:	854e                	mv	a0,s3
1c00a29e:	44da                	lw	s1,148(sp)
1c00a2a0:	494a                	lw	s2,144(sp)
1c00a2a2:	49ba                	lw	s3,140(sp)
1c00a2a4:	4a2a                	lw	s4,136(sp)
1c00a2a6:	4a9a                	lw	s5,132(sp)
1c00a2a8:	4b0a                	lw	s6,128(sp)
1c00a2aa:	5bf6                	lw	s7,124(sp)
1c00a2ac:	5c66                	lw	s8,120(sp)
1c00a2ae:	5cd6                	lw	s9,116(sp)
1c00a2b0:	5d46                	lw	s10,112(sp)
1c00a2b2:	5db6                	lw	s11,108(sp)
1c00a2b4:	610d                	addi	sp,sp,160
1c00a2b6:	8082                	ret
1c00a2b8:	108d8463          	beq	s11,s0,1c00a3c0 <pos_libc_prf+0x168>
1c00a2bc:	0fb46663          	bltu	s0,s11,1c00a3a8 <pos_libc_prf+0x150>
1c00a2c0:	fc0d8ce3          	beqz	s11,1c00a298 <pos_libc_prf+0x40>
1c00a2c4:	0ecd8b63          	beq	s11,a2,1c00a3ba <pos_libc_prf+0x162>
1c00a2c8:	8c52                	mv	s8,s4
1c00a2ca:	000c4d83          	lbu	s11,0(s8)
1c00a2ce:	1c001737          	lui	a4,0x1c001
1c00a2d2:	a3470513          	addi	a0,a4,-1484 # 1c000a34 <__clz_tab+0x14c>
1c00a2d6:	85ee                	mv	a1,s11
1c00a2d8:	c232                	sw	a2,4(sp)
1c00a2da:	33f1                	jal	1c00a0a6 <strchr>
1c00a2dc:	001c0a13          	addi	s4,s8,1
1c00a2e0:	4612                	lw	a2,4(sp)
1c00a2e2:	f979                	bnez	a0,1c00a2b8 <pos_libc_prf+0x60>
1c00a2e4:	02a00713          	li	a4,42
1c00a2e8:	10ed9463          	bne	s11,a4,1c00a3f0 <pos_libc_prf+0x198>
1c00a2ec:	00092c83          	lw	s9,0(s2)
1c00a2f0:	00490713          	addi	a4,s2,4
1c00a2f4:	000cd663          	bgez	s9,1c00a300 <pos_libc_prf+0xa8>
1c00a2f8:	4785                	li	a5,1
1c00a2fa:	41900cb3          	neg	s9,s9
1c00a2fe:	cc3e                	sw	a5,24(sp)
1c00a300:	000a4d83          	lbu	s11,0(s4)
1c00a304:	893a                	mv	s2,a4
1c00a306:	002c0a13          	addi	s4,s8,2
1c00a30a:	02e00713          	li	a4,46
1c00a30e:	547d                	li	s0,-1
1c00a310:	00ed9f63          	bne	s11,a4,1c00a32e <pos_libc_prf+0xd6>
1c00a314:	000a4703          	lbu	a4,0(s4)
1c00a318:	02a00793          	li	a5,42
1c00a31c:	10f71d63          	bne	a4,a5,1c00a436 <pos_libc_prf+0x1de>
1c00a320:	00092403          	lw	s0,0(s2)
1c00a324:	0a05                	addi	s4,s4,1
1c00a326:	0911                	addi	s2,s2,4
1c00a328:	000a4d83          	lbu	s11,0(s4)
1c00a32c:	0a05                	addi	s4,s4,1
1c00a32e:	1c001737          	lui	a4,0x1c001
1c00a332:	85ee                	mv	a1,s11
1c00a334:	a3c70513          	addi	a0,a4,-1476 # 1c000a3c <__clz_tab+0x154>
1c00a338:	84ee                	mv	s1,s11
1c00a33a:	33b5                	jal	1c00a0a6 <strchr>
1c00a33c:	10050e63          	beqz	a0,1c00a458 <pos_libc_prf+0x200>
1c00a340:	06c00693          	li	a3,108
1c00a344:	001a0c13          	addi	s8,s4,1
1c00a348:	000a4d83          	lbu	s11,0(s4)
1c00a34c:	0ed49963          	bne	s1,a3,1c00a43e <pos_libc_prf+0x1e6>
1c00a350:	009d9863          	bne	s11,s1,1c00a360 <pos_libc_prf+0x108>
1c00a354:	001a4d83          	lbu	s11,1(s4)
1c00a358:	002a0c13          	addi	s8,s4,2
1c00a35c:	04c00493          	li	s1,76
1c00a360:	06700693          	li	a3,103
1c00a364:	17b6e263          	bltu	a3,s11,1c00a4c8 <pos_libc_prf+0x270>
1c00a368:	06500693          	li	a3,101
1c00a36c:	32ddfb63          	bgeu	s11,a3,1c00a6a2 <pos_libc_prf+0x44a>
1c00a370:	04700693          	li	a3,71
1c00a374:	0fb6e563          	bltu	a3,s11,1c00a45e <pos_libc_prf+0x206>
1c00a378:	04500713          	li	a4,69
1c00a37c:	32edf363          	bgeu	s11,a4,1c00a6a2 <pos_libc_prf+0x44a>
1c00a380:	f00d8ce3          	beqz	s11,1c00a298 <pos_libc_prf+0x40>
1c00a384:	02500713          	li	a4,37
1c00a388:	02ed85e3          	beq	s11,a4,1c00abb2 <pos_libc_prf+0x95a>
1c00a38c:	85de                	mv	a1,s7
1c00a38e:	02500513          	li	a0,37
1c00a392:	9b02                	jalr	s6
1c00a394:	f1f521e3          	p.beqimm	a0,-1,1c00a296 <pos_libc_prf+0x3e>
1c00a398:	85de                	mv	a1,s7
1c00a39a:	856e                	mv	a0,s11
1c00a39c:	9b02                	jalr	s6
1c00a39e:	eff52ce3          	p.beqimm	a0,-1,1c00a296 <pos_libc_prf+0x3e>
1c00a3a2:	0989                	addi	s3,s3,2
1c00a3a4:	01b0006f          	j	1c00abbe <pos_libc_prf+0x966>
1c00a3a8:	039d8163          	beq	s11,s9,1c00a3ca <pos_libc_prf+0x172>
1c00a3ac:	009d8c63          	beq	s11,s1,1c00a3c4 <pos_libc_prf+0x16c>
1c00a3b0:	f1ad9ce3          	bne	s11,s10,1c00a2c8 <pos_libc_prf+0x70>
1c00a3b4:	4705                	li	a4,1
1c00a3b6:	c63a                	sw	a4,12(sp)
1c00a3b8:	bf01                	j	1c00a2c8 <pos_libc_prf+0x70>
1c00a3ba:	4785                	li	a5,1
1c00a3bc:	c83e                	sw	a5,16(sp)
1c00a3be:	b729                	j	1c00a2c8 <pos_libc_prf+0x70>
1c00a3c0:	4a85                	li	s5,1
1c00a3c2:	b719                	j	1c00a2c8 <pos_libc_prf+0x70>
1c00a3c4:	4705                	li	a4,1
1c00a3c6:	ce3a                	sw	a4,28(sp)
1c00a3c8:	b701                	j	1c00a2c8 <pos_libc_prf+0x70>
1c00a3ca:	4785                	li	a5,1
1c00a3cc:	cc3e                	sw	a5,24(sp)
1c00a3ce:	bded                	j	1c00a2c8 <pos_libc_prf+0x70>
1c00a3d0:	ce02                	sw	zero,28(sp)
1c00a3d2:	c802                	sw	zero,16(sp)
1c00a3d4:	c602                	sw	zero,12(sp)
1c00a3d6:	cc02                	sw	zero,24(sp)
1c00a3d8:	4a81                	li	s5,0
1c00a3da:	02300413          	li	s0,35
1c00a3de:	02d00c93          	li	s9,45
1c00a3e2:	03000493          	li	s1,48
1c00a3e6:	02b00d13          	li	s10,43
1c00a3ea:	02000613          	li	a2,32
1c00a3ee:	bdf1                	j	1c00a2ca <pos_libc_prf+0x72>
1c00a3f0:	fd0d8713          	addi	a4,s11,-48
1c00a3f4:	46a5                	li	a3,9
1c00a3f6:	4c81                	li	s9,0
1c00a3f8:	f0e6e9e3          	bltu	a3,a4,1c00a30a <pos_libc_prf+0xb2>
1c00a3fc:	4725                	li	a4,9
1c00a3fe:	4629                	li	a2,10
1c00a400:	8a62                	mv	s4,s8
1c00a402:	001a4d8b          	p.lbu	s11,1(s4!)
1c00a406:	fd0d8693          	addi	a3,s11,-48
1c00a40a:	f0d760e3          	bltu	a4,a3,1c00a30a <pos_libc_prf+0xb2>
1c00a40e:	87ee                	mv	a5,s11
1c00a410:	42cc87b3          	p.mac	a5,s9,a2
1c00a414:	8c52                	mv	s8,s4
1c00a416:	fd078c93          	addi	s9,a5,-48
1c00a41a:	b7dd                	j	1c00a400 <pos_libc_prf+0x1a8>
1c00a41c:	42b407b3          	p.mac	a5,s0,a1
1c00a420:	8a3a                	mv	s4,a4
1c00a422:	fd078413          	addi	s0,a5,-48
1c00a426:	8752                	mv	a4,s4
1c00a428:	0017478b          	p.lbu	a5,1(a4!)
1c00a42c:	fd078613          	addi	a2,a5,-48
1c00a430:	fec6f6e3          	bgeu	a3,a2,1c00a41c <pos_libc_prf+0x1c4>
1c00a434:	bdd5                	j	1c00a328 <pos_libc_prf+0xd0>
1c00a436:	4401                	li	s0,0
1c00a438:	46a5                	li	a3,9
1c00a43a:	45a9                	li	a1,10
1c00a43c:	b7ed                	j	1c00a426 <pos_libc_prf+0x1ce>
1c00a43e:	06800693          	li	a3,104
1c00a442:	f0d49fe3          	bne	s1,a3,1c00a360 <pos_libc_prf+0x108>
1c00a446:	f09d9de3          	bne	s11,s1,1c00a360 <pos_libc_prf+0x108>
1c00a44a:	002a0c13          	addi	s8,s4,2
1c00a44e:	001a4d83          	lbu	s11,1(s4)
1c00a452:	04800493          	li	s1,72
1c00a456:	b729                	j	1c00a360 <pos_libc_prf+0x108>
1c00a458:	8c52                	mv	s8,s4
1c00a45a:	4481                	li	s1,0
1c00a45c:	b711                	j	1c00a360 <pos_libc_prf+0x108>
1c00a45e:	06300693          	li	a3,99
1c00a462:	12dd8963          	beq	s11,a3,1c00a594 <pos_libc_prf+0x33c>
1c00a466:	09b6e163          	bltu	a3,s11,1c00a4e8 <pos_libc_prf+0x290>
1c00a46a:	05800693          	li	a3,88
1c00a46e:	f0dd9fe3          	bne	s11,a3,1c00a38c <pos_libc_prf+0x134>
1c00a472:	06c00693          	li	a3,108
1c00a476:	6ad48b63          	beq	s1,a3,1c00ab2c <pos_libc_prf+0x8d4>
1c00a47a:	07a00693          	li	a3,122
1c00a47e:	6ad48763          	beq	s1,a3,1c00ab2c <pos_libc_prf+0x8d4>
1c00a482:	04c00693          	li	a3,76
1c00a486:	6ad49363          	bne	s1,a3,1c00ab2c <pos_libc_prf+0x8d4>
1c00a48a:	091d                	addi	s2,s2,7
1c00a48c:	c4093933          	p.bclr	s2,s2,2,0
1c00a490:	00092583          	lw	a1,0(s2)
1c00a494:	00492603          	lw	a2,4(s2)
1c00a498:	00890a13          	addi	s4,s2,8
1c00a49c:	06f00713          	li	a4,111
1c00a4a0:	00c4                	addi	s1,sp,68
1c00a4a2:	6aed9563          	bne	s11,a4,1c00ab4c <pos_libc_prf+0x8f4>
1c00a4a6:	680a8963          	beqz	s5,1c00ab38 <pos_libc_prf+0x8e0>
1c00a4aa:	03000793          	li	a5,48
1c00a4ae:	04f10223          	sb	a5,68(sp)
1c00a4b2:	00c5e7b3          	or	a5,a1,a2
1c00a4b6:	04510513          	addi	a0,sp,69
1c00a4ba:	68079063          	bnez	a5,1c00ab3a <pos_libc_prf+0x8e2>
1c00a4be:	040102a3          	sb	zero,69(sp)
1c00a4c2:	4901                	li	s2,0
1c00a4c4:	4d85                	li	s11,1
1c00a4c6:	a061                	j	1c00a54e <pos_libc_prf+0x2f6>
1c00a4c8:	07000693          	li	a3,112
1c00a4cc:	62dd8763          	beq	s11,a3,1c00aafa <pos_libc_prf+0x8a2>
1c00a4d0:	09b6e563          	bltu	a3,s11,1c00a55a <pos_libc_prf+0x302>
1c00a4d4:	06e00693          	li	a3,110
1c00a4d8:	5cdd8c63          	beq	s11,a3,1c00aab0 <pos_libc_prf+0x858>
1c00a4dc:	f9b6ebe3          	bltu	a3,s11,1c00a472 <pos_libc_prf+0x21a>
1c00a4e0:	06900693          	li	a3,105
1c00a4e4:	eadd94e3          	bne	s11,a3,1c00a38c <pos_libc_prf+0x134>
1c00a4e8:	06c00793          	li	a5,108
1c00a4ec:	18f48463          	beq	s1,a5,1c00a674 <pos_libc_prf+0x41c>
1c00a4f0:	07a00793          	li	a5,122
1c00a4f4:	18f48063          	beq	s1,a5,1c00a674 <pos_libc_prf+0x41c>
1c00a4f8:	04c00793          	li	a5,76
1c00a4fc:	16f49c63          	bne	s1,a5,1c00a674 <pos_libc_prf+0x41c>
1c00a500:	091d                	addi	s2,s2,7
1c00a502:	c4093933          	p.bclr	s2,s2,2,0
1c00a506:	00092583          	lw	a1,0(s2)
1c00a50a:	00492a83          	lw	s5,4(s2)
1c00a50e:	00890a13          	addi	s4,s2,8
1c00a512:	04410d93          	addi	s11,sp,68
1c00a516:	160ad663          	bgez	s5,1c00a682 <pos_libc_prf+0x42a>
1c00a51a:	02d00793          	li	a5,45
1c00a51e:	40b005b3          	neg	a1,a1
1c00a522:	04f10223          	sb	a5,68(sp)
1c00a526:	41500633          	neg	a2,s5
1c00a52a:	00b037b3          	snez	a5,a1
1c00a52e:	8e1d                	sub	a2,a2,a5
1c00a530:	04510913          	addi	s2,sp,69
1c00a534:	854a                	mv	a0,s2
1c00a536:	46a9                	li	a3,10
1c00a538:	3edd                	jal	1c00a12e <_to_x>
1c00a53a:	47b2                	lw	a5,12(sp)
1c00a53c:	954a                	add	a0,a0,s2
1c00a53e:	41b50db3          	sub	s11,a0,s11
1c00a542:	4905                	li	s2,1
1c00a544:	e789                	bnez	a5,1c00a54e <pos_libc_prf+0x2f6>
1c00a546:	4742                	lw	a4,16(sp)
1c00a548:	e319                	bnez	a4,1c00a54e <pos_libc_prf+0x2f6>
1c00a54a:	01fad913          	srli	s2,s5,0x1f
1c00a54e:	04045c63          	bgez	s0,1c00a5a6 <pos_libc_prf+0x34e>
1c00a552:	4401                	li	s0,0
1c00a554:	4a81                	li	s5,0
1c00a556:	4681                	li	a3,0
1c00a558:	a401                	j	1c00a758 <pos_libc_prf+0x500>
1c00a55a:	07500693          	li	a3,117
1c00a55e:	f0dd8ae3          	beq	s11,a3,1c00a472 <pos_libc_prf+0x21a>
1c00a562:	07800693          	li	a3,120
1c00a566:	f0dd86e3          	beq	s11,a3,1c00a472 <pos_libc_prf+0x21a>
1c00a56a:	07300713          	li	a4,115
1c00a56e:	e0ed9fe3          	bne	s11,a4,1c00a38c <pos_libc_prf+0x134>
1c00a572:	00490a13          	addi	s4,s2,4
1c00a576:	00092783          	lw	a5,0(s2)
1c00a57a:	00045663          	bgez	s0,1c00a586 <pos_libc_prf+0x32e>
1c00a57e:	80000737          	lui	a4,0x80000
1c00a582:	fff74413          	not	s0,a4
1c00a586:	86be                	mv	a3,a5
1c00a588:	4d81                	li	s11,0
1c00a58a:	59b41b63          	bne	s0,s11,1c00ab20 <pos_libc_prf+0x8c8>
1c00a58e:	4901                	li	s2,0
1c00a590:	4401                	li	s0,0
1c00a592:	a819                	j	1c00a5a8 <pos_libc_prf+0x350>
1c00a594:	00092783          	lw	a5,0(s2)
1c00a598:	00490a13          	addi	s4,s2,4
1c00a59c:	4d85                	li	s11,1
1c00a59e:	04f10223          	sb	a5,68(sp)
1c00a5a2:	4901                	li	s2,0
1c00a5a4:	4401                	li	s0,0
1c00a5a6:	00dc                	addi	a5,sp,68
1c00a5a8:	41b40d33          	sub	s10,s0,s11
1c00a5ac:	9d4a                	add	s10,s10,s2
1c00a5ae:	4401                	li	s0,0
1c00a5b0:	4a81                	li	s5,0
1c00a5b2:	4681                	li	a3,0
1c00a5b4:	040d6d33          	p.max	s10,s10,zero
1c00a5b8:	4762                	lw	a4,24(sp)
1c00a5ba:	01bd0633          	add	a2,s10,s11
1c00a5be:	40cc8cb3          	sub	s9,s9,a2
1c00a5c2:	e701                	bnez	a4,1c00a5ca <pos_libc_prf+0x372>
1c00a5c4:	84e6                	mv	s1,s9
1c00a5c6:	61904b63          	bgtz	s9,1c00abdc <pos_libc_prf+0x984>
1c00a5ca:	012784b3          	add	s1,a5,s2
1c00a5ce:	60979d63          	bne	a5,s1,1c00abe8 <pos_libc_prf+0x990>
1c00a5d2:	84ea                	mv	s1,s10
1c00a5d4:	14fd                	addi	s1,s1,-1
1c00a5d6:	63f4b563          	p.bneimm	s1,-1,1c00ac00 <pos_libc_prf+0x9a8>
1c00a5da:	412d84b3          	sub	s1,s11,s2
1c00a5de:	8726                	mv	a4,s1
1c00a5e0:	c295                	beqz	a3,1c00a604 <pos_libc_prf+0x3ac>
1c00a5e2:	0007c503          	lbu	a0,0(a5)
1c00a5e6:	8dbe                	mv	s11,a5
1c00a5e8:	00978833          	add	a6,a5,s1
1c00a5ec:	4625                	li	a2,9
1c00a5ee:	fd050593          	addi	a1,a0,-48
1c00a5f2:	41b80733          	sub	a4,a6,s11
1c00a5f6:	62b67163          	bgeu	a2,a1,1c00ac18 <pos_libc_prf+0x9c0>
1c00a5fa:	8636                	mv	a2,a3
1c00a5fc:	62061c63          	bnez	a2,1c00ac34 <pos_libc_prf+0x9dc>
1c00a600:	8f15                	sub	a4,a4,a3
1c00a602:	87ee                	mv	a5,s11
1c00a604:	020a8e63          	beqz	s5,1c00a640 <pos_libc_prf+0x3e8>
1c00a608:	8dbe                	mv	s11,a5
1c00a60a:	00e78833          	add	a6,a5,a4
1c00a60e:	02e00613          	li	a2,46
1c00a612:	001dc68b          	p.lbu	a3,1(s11!)
1c00a616:	85de                	mv	a1,s7
1c00a618:	c232                	sw	a2,4(sp)
1c00a61a:	8536                	mv	a0,a3
1c00a61c:	c036                	sw	a3,0(sp)
1c00a61e:	c442                	sw	a6,8(sp)
1c00a620:	9b02                	jalr	s6
1c00a622:	4612                	lw	a2,4(sp)
1c00a624:	4682                	lw	a3,0(sp)
1c00a626:	4822                	lw	a6,8(sp)
1c00a628:	c7f527e3          	p.beqimm	a0,-1,1c00a296 <pos_libc_prf+0x3e>
1c00a62c:	41b80733          	sub	a4,a6,s11
1c00a630:	fec691e3          	bne	a3,a2,1c00a612 <pos_libc_prf+0x3ba>
1c00a634:	86d6                	mv	a3,s5
1c00a636:	60d04e63          	bgtz	a3,1c00ac52 <pos_libc_prf+0x9fa>
1c00a63a:	41570733          	sub	a4,a4,s5
1c00a63e:	87ee                	mv	a5,s11
1c00a640:	c415                	beqz	s0,1c00a66c <pos_libc_prf+0x414>
1c00a642:	0007c503          	lbu	a0,0(a5)
1c00a646:	8dbe                	mv	s11,a5
1c00a648:	973e                	add	a4,a4,a5
1c00a64a:	4625                	li	a2,9
1c00a64c:	02e00693          	li	a3,46
1c00a650:	fd050593          	addi	a1,a0,-48
1c00a654:	41b70ab3          	sub	s5,a4,s11
1c00a658:	60b67a63          	bgeu	a2,a1,1c00ac6c <pos_libc_prf+0xa14>
1c00a65c:	60d50863          	beq	a0,a3,1c00ac6c <pos_libc_prf+0xa14>
1c00a660:	8722                	mv	a4,s0
1c00a662:	62e04363          	bgtz	a4,1c00ac88 <pos_libc_prf+0xa30>
1c00a666:	408a8733          	sub	a4,s5,s0
1c00a66a:	87ee                	mv	a5,s11
1c00a66c:	843e                	mv	s0,a5
1c00a66e:	00e78ab3          	add	s5,a5,a4
1c00a672:	ad25                	j	1c00acaa <pos_libc_prf+0xa52>
1c00a674:	00092583          	lw	a1,0(s2)
1c00a678:	00490a13          	addi	s4,s2,4
1c00a67c:	41f5da93          	srai	s5,a1,0x1f
1c00a680:	bd49                	j	1c00a512 <pos_libc_prf+0x2ba>
1c00a682:	47b2                	lw	a5,12(sp)
1c00a684:	c799                	beqz	a5,1c00a692 <pos_libc_prf+0x43a>
1c00a686:	02b00793          	li	a5,43
1c00a68a:	04f10223          	sb	a5,68(sp)
1c00a68e:	8656                	mv	a2,s5
1c00a690:	b545                	j	1c00a530 <pos_libc_prf+0x2d8>
1c00a692:	4742                	lw	a4,16(sp)
1c00a694:	c701                	beqz	a4,1c00a69c <pos_libc_prf+0x444>
1c00a696:	02000793          	li	a5,32
1c00a69a:	bfc5                	j	1c00a68a <pos_libc_prf+0x432>
1c00a69c:	8656                	mv	a2,s5
1c00a69e:	896e                	mv	s2,s11
1c00a6a0:	bd51                	j	1c00a534 <pos_libc_prf+0x2dc>
1c00a6a2:	091d                	addi	s2,s2,7
1c00a6a4:	c4093933          	p.bclr	s2,s2,2,0
1c00a6a8:	00092583          	lw	a1,0(s2)
1c00a6ac:	00492683          	lw	a3,4(s2)
1c00a6b0:	800007b7          	lui	a5,0x80000
1c00a6b4:	0155d613          	srli	a2,a1,0x15
1c00a6b8:	00b69713          	slli	a4,a3,0xb
1c00a6bc:	8f51                	or	a4,a4,a2
1c00a6be:	fff7c793          	not	a5,a5
1c00a6c2:	05ae                	slli	a1,a1,0xb
1c00a6c4:	8f7d                	and	a4,a4,a5
1c00a6c6:	00890a13          	addi	s4,s2,8
1c00a6ca:	d82e                	sw	a1,48(sp)
1c00a6cc:	0146d913          	srli	s2,a3,0x14
1c00a6d0:	da3a                	sw	a4,52(sp)
1c00a6d2:	e8b93933          	p.bclr	s2,s2,20,11
1c00a6d6:	0806d863          	bgez	a3,1c00a766 <pos_libc_prf+0x50e>
1c00a6da:	02d00693          	li	a3,45
1c00a6de:	04d10223          	sb	a3,68(sp)
1c00a6e2:	04510493          	addi	s1,sp,69
1c00a6e6:	7ff00693          	li	a3,2047
1c00a6ea:	0cd91363          	bne	s2,a3,1c00a7b0 <pos_libc_prf+0x558>
1c00a6ee:	8f4d                	or	a4,a4,a1
1c00a6f0:	fbfd8793          	addi	a5,s11,-65
1c00a6f4:	00348513          	addi	a0,s1,3
1c00a6f8:	eb49                	bnez	a4,1c00a78a <pos_libc_prf+0x532>
1c00a6fa:	4765                	li	a4,25
1c00a6fc:	06f76f63          	bltu	a4,a5,1c00a77a <pos_libc_prf+0x522>
1c00a700:	6795                	lui	a5,0x5
1c00a702:	e4978793          	addi	a5,a5,-439 # 4e49 <pos_soc_event_callback+0x4a01>
1c00a706:	00f49023          	sh	a5,0(s1)
1c00a70a:	04600793          	li	a5,70
1c00a70e:	04410913          	addi	s2,sp,68
1c00a712:	00f48123          	sb	a5,2(s1)
1c00a716:	000481a3          	sb	zero,3(s1)
1c00a71a:	41250533          	sub	a0,a0,s2
1c00a71e:	4401                	li	s0,0
1c00a720:	4a81                	li	s5,0
1c00a722:	4681                	li	a3,0
1c00a724:	4732                	lw	a4,12(sp)
1c00a726:	4905                	li	s2,1
1c00a728:	eb09                	bnez	a4,1c00a73a <pos_libc_prf+0x4e2>
1c00a72a:	47c2                	lw	a5,16(sp)
1c00a72c:	e799                	bnez	a5,1c00a73a <pos_libc_prf+0x4e2>
1c00a72e:	04414903          	lbu	s2,68(sp)
1c00a732:	fd390913          	addi	s2,s2,-45
1c00a736:	00193913          	seqz	s2,s2
1c00a73a:	1098                	addi	a4,sp,96
1c00a73c:	012707b3          	add	a5,a4,s2
1c00a740:	fe47c783          	lbu	a5,-28(a5)
1c00a744:	015684b3          	add	s1,a3,s5
1c00a748:	94a2                	add	s1,s1,s0
1c00a74a:	fd078793          	addi	a5,a5,-48
1c00a74e:	4625                	li	a2,9
1c00a750:	00a48db3          	add	s11,s1,a0
1c00a754:	46f66763          	bltu	a2,a5,1c00abc2 <pos_libc_prf+0x96a>
1c00a758:	47f2                	lw	a5,28(sp)
1c00a75a:	46078463          	beqz	a5,1c00abc2 <pos_libc_prf+0x96a>
1c00a75e:	41bc8d33          	sub	s10,s9,s11
1c00a762:	00dc                	addi	a5,sp,68
1c00a764:	bd81                	j	1c00a5b4 <pos_libc_prf+0x35c>
1c00a766:	47b2                	lw	a5,12(sp)
1c00a768:	02b00693          	li	a3,43
1c00a76c:	fbad                	bnez	a5,1c00a6de <pos_libc_prf+0x486>
1c00a76e:	47c2                	lw	a5,16(sp)
1c00a770:	00c4                	addi	s1,sp,68
1c00a772:	dbb5                	beqz	a5,1c00a6e6 <pos_libc_prf+0x48e>
1c00a774:	02000693          	li	a3,32
1c00a778:	b79d                	j	1c00a6de <pos_libc_prf+0x486>
1c00a77a:	679d                	lui	a5,0x7
1c00a77c:	e6978793          	addi	a5,a5,-407 # 6e69 <pos_soc_event_callback+0x6a21>
1c00a780:	00f49023          	sh	a5,0(s1)
1c00a784:	06600793          	li	a5,102
1c00a788:	b759                	j	1c00a70e <pos_libc_prf+0x4b6>
1c00a78a:	4765                	li	a4,25
1c00a78c:	00f76a63          	bltu	a4,a5,1c00a7a0 <pos_libc_prf+0x548>
1c00a790:	6791                	lui	a5,0x4
1c00a792:	14e78793          	addi	a5,a5,334 # 414e <pos_soc_event_callback+0x3d06>
1c00a796:	00f49023          	sh	a5,0(s1)
1c00a79a:	04e00793          	li	a5,78
1c00a79e:	bf85                	j	1c00a70e <pos_libc_prf+0x4b6>
1c00a7a0:	6799                	lui	a5,0x6
1c00a7a2:	16e78793          	addi	a5,a5,366 # 616e <pos_soc_event_callback+0x5d26>
1c00a7a6:	00f49023          	sh	a5,0(s1)
1c00a7aa:	06e00793          	li	a5,110
1c00a7ae:	b785                	j	1c00a70e <pos_libc_prf+0x4b6>
1c00a7b0:	04600693          	li	a3,70
1c00a7b4:	00dd9463          	bne	s11,a3,1c00a7bc <pos_libc_prf+0x564>
1c00a7b8:	06600d93          	li	s11,102
1c00a7bc:	41f95613          	srai	a2,s2,0x1f
1c00a7c0:	00b966b3          	or	a3,s2,a1
1c00a7c4:	8e59                	or	a2,a2,a4
1c00a7c6:	8ed1                	or	a3,a3,a2
1c00a7c8:	1a068c63          	beqz	a3,1c00a980 <pos_libc_prf+0x728>
1c00a7cc:	10090963          	beqz	s2,1c00a8de <pos_libc_prf+0x686>
1c00a7d0:	5752                	lw	a4,52(sp)
1c00a7d2:	800007b7          	lui	a5,0x80000
1c00a7d6:	c0290913          	addi	s2,s2,-1022
1c00a7da:	8f5d                	or	a4,a4,a5
1c00a7dc:	da3a                	sw	a4,52(sp)
1c00a7de:	4d01                	li	s10,0
1c00a7e0:	5779                	li	a4,-2
1c00a7e2:	10e94a63          	blt	s2,a4,1c00a8f6 <pos_libc_prf+0x69e>
1c00a7e6:	17204163          	bgtz	s2,1c00a948 <pos_libc_prf+0x6f0>
1c00a7ea:	1808                	addi	a0,sp,48
1c00a7ec:	0905                	addi	s2,s2,1
1c00a7ee:	3ac9                	jal	1c00a1c0 <_rlrshift>
1c00a7f0:	fe493de3          	p.bneimm	s2,4,1c00a7ea <pos_libc_prf+0x592>
1c00a7f4:	00045363          	bgez	s0,1c00a7fa <pos_libc_prf+0x5a2>
1c00a7f8:	4419                	li	s0,6
1c00a7fa:	0dfdf713          	andi	a4,s11,223
1c00a7fe:	04700693          	li	a3,71
1c00a802:	ca02                	sw	zero,20(sp)
1c00a804:	02d71563          	bne	a4,a3,1c00a82e <pos_libc_prf+0x5d6>
1c00a808:	5775                	li	a4,-3
1c00a80a:	00ed4463          	blt	s10,a4,1c00a812 <pos_libc_prf+0x5ba>
1c00a80e:	17a45c63          	bge	s0,s10,1c00a986 <pos_libc_prf+0x72e>
1c00a812:	ffed8793          	addi	a5,s11,-2
1c00a816:	0ff7fd93          	andi	s11,a5,255
1c00a81a:	4c040863          	beqz	s0,1c00acea <pos_libc_prf+0xa92>
1c00a81e:	147d                	addi	s0,s0,-1
1c00a820:	4c0a9563          	bnez	s5,1c00acea <pos_libc_prf+0xa92>
1c00a824:	00802933          	sgtz	s2,s0
1c00a828:	0ff97913          	andi	s2,s2,255
1c00a82c:	ca4a                	sw	s2,20(sp)
1c00a82e:	06600713          	li	a4,102
1c00a832:	4aed9d63          	bne	s11,a4,1c00acec <pos_libc_prf+0xa94>
1c00a836:	008d0733          	add	a4,s10,s0
1c00a83a:	06600d93          	li	s11,102
1c00a83e:	4a075963          	bgez	a4,1c00acf0 <pos_libc_prf+0xa98>
1c00a842:	4741                	li	a4,16
1c00a844:	d63a                	sw	a4,44(sp)
1c00a846:	4901                	li	s2,0
1c00a848:	4601                	li	a2,0
1c00a84a:	080006b7          	lui	a3,0x8000
1c00a84e:	dc32                	sw	a2,56(sp)
1c00a850:	de36                	sw	a3,60(sp)
1c00a852:	197d                	addi	s2,s2,-1
1c00a854:	15f93063          	p.bneimm	s2,-1,1c00a994 <pos_libc_prf+0x73c>
1c00a858:	5742                	lw	a4,48(sp)
1c00a85a:	56e2                	lw	a3,56(sp)
1c00a85c:	5652                	lw	a2,52(sp)
1c00a85e:	55f2                	lw	a1,60(sp)
1c00a860:	96ba                	add	a3,a3,a4
1c00a862:	00e6b733          	sltu	a4,a3,a4
1c00a866:	962e                	add	a2,a2,a1
1c00a868:	9732                	add	a4,a4,a2
1c00a86a:	da3a                	sw	a4,52(sp)
1c00a86c:	d836                	sw	a3,48(sp)
1c00a86e:	f6073733          	p.bclr	a4,a4,27,0
1c00a872:	c711                	beqz	a4,1c00a87e <pos_libc_prf+0x626>
1c00a874:	1808                	addi	a0,sp,48
1c00a876:	32ad                	jal	1c00a1e0 <_ldiv5>
1c00a878:	1808                	addi	a0,sp,48
1c00a87a:	3299                	jal	1c00a1c0 <_rlrshift>
1c00a87c:	0d05                	addi	s10,s10,1
1c00a87e:	06600713          	li	a4,102
1c00a882:	14ed9d63          	bne	s11,a4,1c00a9dc <pos_libc_prf+0x784>
1c00a886:	8926                	mv	s2,s1
1c00a888:	13a04563          	bgtz	s10,1c00a9b2 <pos_libc_prf+0x75a>
1c00a88c:	03000713          	li	a4,48
1c00a890:	00e48023          	sb	a4,0(s1)
1c00a894:	00148913          	addi	s2,s1,1
1c00a898:	4681                	li	a3,0
1c00a89a:	120a8363          	beqz	s5,1c00a9c0 <pos_libc_prf+0x768>
1c00a89e:	02e00593          	li	a1,46
1c00a8a2:	00b90023          	sb	a1,0(s2)
1c00a8a6:	00190713          	addi	a4,s2,1
1c00a8aa:	420d0e63          	beqz	s10,1c00ace6 <pos_libc_prf+0xa8e>
1c00a8ae:	12805463          	blez	s0,1c00a9d6 <pos_libc_prf+0x77e>
1c00a8b2:	41a00ab3          	neg	s5,s10
1c00a8b6:	048acab3          	p.min	s5,s5,s0
1c00a8ba:	41540433          	sub	s0,s0,s5
1c00a8be:	893a                	mv	s2,a4
1c00a8c0:	10805363          	blez	s0,1c00a9c6 <pos_libc_prf+0x76e>
1c00a8c4:	5732                	lw	a4,44(sp)
1c00a8c6:	10e05063          	blez	a4,1c00a9c6 <pos_libc_prf+0x76e>
1c00a8ca:	106c                	addi	a1,sp,44
1c00a8cc:	1808                	addi	a0,sp,48
1c00a8ce:	c036                	sw	a3,0(sp)
1c00a8d0:	3a91                	jal	1c00a224 <_get_digit>
1c00a8d2:	00a900ab          	p.sb	a0,1(s2!)
1c00a8d6:	147d                	addi	s0,s0,-1
1c00a8d8:	4682                	lw	a3,0(sp)
1c00a8da:	b7dd                	j	1c00a8c0 <pos_libc_prf+0x668>
1c00a8dc:	197d                	addi	s2,s2,-1
1c00a8de:	01f5d693          	srli	a3,a1,0x1f
1c00a8e2:	0706                	slli	a4,a4,0x1
1c00a8e4:	8f55                	or	a4,a4,a3
1c00a8e6:	0586                	slli	a1,a1,0x1
1c00a8e8:	fe075ae3          	bgez	a4,1c00a8dc <pos_libc_prf+0x684>
1c00a8ec:	d82e                	sw	a1,48(sp)
1c00a8ee:	da3a                	sw	a4,52(sp)
1c00a8f0:	b5c5                	j	1c00a7d0 <pos_libc_prf+0x578>
1c00a8f2:	1808                	addi	a0,sp,48
1c00a8f4:	30f1                	jal	1c00a1c0 <_rlrshift>
1c00a8f6:	55d2                	lw	a1,52(sp)
1c00a8f8:	33333737          	lui	a4,0x33333
1c00a8fc:	33270713          	addi	a4,a4,818 # 33333332 <__l2_shared_end+0x1731f192>
1c00a900:	5642                	lw	a2,48(sp)
1c00a902:	0905                	addi	s2,s2,1
1c00a904:	feb767e3          	bltu	a4,a1,1c00a8f2 <pos_libc_prf+0x69a>
1c00a908:	4695                	li	a3,5
1c00a90a:	02c6b733          	mulhu	a4,a3,a2
1c00a90e:	1d7d                	addi	s10,s10,-1
1c00a910:	02c68633          	mul	a2,a3,a2
1c00a914:	42b68733          	p.mac	a4,a3,a1
1c00a918:	d832                	sw	a2,48(sp)
1c00a91a:	4681                	li	a3,0
1c00a91c:	da3a                	sw	a4,52(sp)
1c00a91e:	800007b7          	lui	a5,0x80000
1c00a922:	fff7c793          	not	a5,a5
1c00a926:	00e7f763          	bgeu	a5,a4,1c00a934 <pos_libc_prf+0x6dc>
1c00a92a:	ea068be3          	beqz	a3,1c00a7e0 <pos_libc_prf+0x588>
1c00a92e:	d832                	sw	a2,48(sp)
1c00a930:	da3a                	sw	a4,52(sp)
1c00a932:	b57d                	j	1c00a7e0 <pos_libc_prf+0x588>
1c00a934:	01f65593          	srli	a1,a2,0x1f
1c00a938:	00171693          	slli	a3,a4,0x1
1c00a93c:	00d5e733          	or	a4,a1,a3
1c00a940:	0606                	slli	a2,a2,0x1
1c00a942:	197d                	addi	s2,s2,-1
1c00a944:	4685                	li	a3,1
1c00a946:	bfe1                	j	1c00a91e <pos_libc_prf+0x6c6>
1c00a948:	1808                	addi	a0,sp,48
1c00a94a:	3859                	jal	1c00a1e0 <_ldiv5>
1c00a94c:	5642                	lw	a2,48(sp)
1c00a94e:	5752                	lw	a4,52(sp)
1c00a950:	197d                	addi	s2,s2,-1
1c00a952:	0d05                	addi	s10,s10,1
1c00a954:	4681                	li	a3,0
1c00a956:	800007b7          	lui	a5,0x80000
1c00a95a:	fff7c793          	not	a5,a5
1c00a95e:	00e7f763          	bgeu	a5,a4,1c00a96c <pos_libc_prf+0x714>
1c00a962:	e80682e3          	beqz	a3,1c00a7e6 <pos_libc_prf+0x58e>
1c00a966:	d832                	sw	a2,48(sp)
1c00a968:	da3a                	sw	a4,52(sp)
1c00a96a:	bdb5                	j	1c00a7e6 <pos_libc_prf+0x58e>
1c00a96c:	01f65593          	srli	a1,a2,0x1f
1c00a970:	00171693          	slli	a3,a4,0x1
1c00a974:	00d5e733          	or	a4,a1,a3
1c00a978:	0606                	slli	a2,a2,0x1
1c00a97a:	197d                	addi	s2,s2,-1
1c00a97c:	4685                	li	a3,1
1c00a97e:	bfe1                	j	1c00a956 <pos_libc_prf+0x6fe>
1c00a980:	4d01                	li	s10,0
1c00a982:	4901                	li	s2,0
1c00a984:	b59d                	j	1c00a7ea <pos_libc_prf+0x592>
1c00a986:	41a40433          	sub	s0,s0,s10
1c00a98a:	ea0a96e3          	bnez	s5,1c00a836 <pos_libc_prf+0x5de>
1c00a98e:	06600d93          	li	s11,102
1c00a992:	bd49                	j	1c00a824 <pos_libc_prf+0x5cc>
1c00a994:	1828                	addi	a0,sp,56
1c00a996:	84bff0ef          	jal	ra,1c00a1e0 <_ldiv5>
1c00a99a:	1828                	addi	a0,sp,56
1c00a99c:	825ff0ef          	jal	ra,1c00a1c0 <_rlrshift>
1c00a9a0:	bd4d                	j	1c00a852 <pos_libc_prf+0x5fa>
1c00a9a2:	106c                	addi	a1,sp,44
1c00a9a4:	1808                	addi	a0,sp,48
1c00a9a6:	38bd                	jal	1c00a224 <_get_digit>
1c00a9a8:	00a900ab          	p.sb	a0,1(s2!)
1c00a9ac:	1d7d                	addi	s10,s10,-1
1c00a9ae:	000d0563          	beqz	s10,1c00a9b8 <pos_libc_prf+0x760>
1c00a9b2:	5732                	lw	a4,44(sp)
1c00a9b4:	fee047e3          	bgtz	a4,1c00a9a2 <pos_libc_prf+0x74a>
1c00a9b8:	300a9f63          	bnez	s5,1c00acd6 <pos_libc_prf+0xa7e>
1c00a9bc:	86ea                	mv	a3,s10
1c00a9be:	4d01                	li	s10,0
1c00a9c0:	4a81                	li	s5,0
1c00a9c2:	ec804ee3          	bgtz	s0,1c00a89e <pos_libc_prf+0x646>
1c00a9c6:	4752                	lw	a4,20(sp)
1c00a9c8:	eb31                	bnez	a4,1c00aa1c <pos_libc_prf+0x7c4>
1c00a9ca:	00c8                	addi	a0,sp,68
1c00a9cc:	00090023          	sb	zero,0(s2)
1c00a9d0:	40a90533          	sub	a0,s2,a0
1c00a9d4:	bb81                	j	1c00a724 <pos_libc_prf+0x4cc>
1c00a9d6:	893a                	mv	s2,a4
1c00a9d8:	4a81                	li	s5,0
1c00a9da:	b7f5                	j	1c00a9c6 <pos_libc_prf+0x76e>
1c00a9dc:	106c                	addi	a1,sp,44
1c00a9de:	1808                	addi	a0,sp,48
1c00a9e0:	845ff0ef          	jal	ra,1c00a224 <_get_digit>
1c00a9e4:	00a48023          	sb	a0,0(s1)
1c00a9e8:	03000713          	li	a4,48
1c00a9ec:	00e50363          	beq	a0,a4,1c00a9f2 <pos_libc_prf+0x79a>
1c00a9f0:	1d7d                	addi	s10,s10,-1
1c00a9f2:	000a9663          	bnez	s5,1c00a9fe <pos_libc_prf+0x7a6>
1c00a9f6:	00148913          	addi	s2,s1,1
1c00a9fa:	00805d63          	blez	s0,1c00aa14 <pos_libc_prf+0x7bc>
1c00a9fe:	02e00713          	li	a4,46
1c00aa02:	00248913          	addi	s2,s1,2
1c00aa06:	00e480a3          	sb	a4,1(s1)
1c00aa0a:	00805563          	blez	s0,1c00aa14 <pos_libc_prf+0x7bc>
1c00aa0e:	5732                	lw	a4,44(sp)
1c00aa10:	08e04663          	bgtz	a4,1c00aa9c <pos_libc_prf+0x844>
1c00aa14:	47d2                	lw	a5,20(sp)
1c00aa16:	4a81                	li	s5,0
1c00aa18:	4681                	li	a3,0
1c00aa1a:	cf99                	beqz	a5,1c00aa38 <pos_libc_prf+0x7e0>
1c00aa1c:	03000513          	li	a0,48
1c00aa20:	fff90713          	addi	a4,s2,-1
1c00aa24:	00074583          	lbu	a1,0(a4)
1c00aa28:	08a58263          	beq	a1,a0,1c00aaac <pos_libc_prf+0x854>
1c00aa2c:	02e00513          	li	a0,46
1c00aa30:	4401                	li	s0,0
1c00aa32:	00a59363          	bne	a1,a0,1c00aa38 <pos_libc_prf+0x7e0>
1c00aa36:	893a                	mv	s2,a4
1c00aa38:	0dfdf713          	andi	a4,s11,223
1c00aa3c:	04500593          	li	a1,69
1c00aa40:	f8b715e3          	bne	a4,a1,1c00a9ca <pos_libc_prf+0x772>
1c00aa44:	85ca                	mv	a1,s2
1c00aa46:	01b5812b          	p.sb	s11,2(a1!) # 1a100002 <__l1_end+0xa0fffe6>
1c00aa4a:	02b00793          	li	a5,43
1c00aa4e:	000d5663          	bgez	s10,1c00aa5a <pos_libc_prf+0x802>
1c00aa52:	41a00d33          	neg	s10,s10
1c00aa56:	02d00793          	li	a5,45
1c00aa5a:	00f900a3          	sb	a5,1(s2)
1c00aa5e:	06300793          	li	a5,99
1c00aa62:	01a7de63          	bge	a5,s10,1c00aa7e <pos_libc_prf+0x826>
1c00aa66:	06400713          	li	a4,100
1c00aa6a:	02ed47b3          	div	a5,s10,a4
1c00aa6e:	00390593          	addi	a1,s2,3
1c00aa72:	02ed6d33          	rem	s10,s10,a4
1c00aa76:	03078793          	addi	a5,a5,48 # 80000030 <pulp__FC+0x80000031>
1c00aa7a:	00f90123          	sb	a5,2(s2)
1c00aa7e:	47a9                	li	a5,10
1c00aa80:	892e                	mv	s2,a1
1c00aa82:	02fd4733          	div	a4,s10,a5
1c00aa86:	02fd68b3          	rem	a7,s10,a5
1c00aa8a:	03070713          	addi	a4,a4,48
1c00aa8e:	00e9012b          	p.sb	a4,2(s2!)
1c00aa92:	03088893          	addi	a7,a7,48
1c00aa96:	011580a3          	sb	a7,1(a1)
1c00aa9a:	bf05                	j	1c00a9ca <pos_libc_prf+0x772>
1c00aa9c:	106c                	addi	a1,sp,44
1c00aa9e:	1808                	addi	a0,sp,48
1c00aaa0:	f84ff0ef          	jal	ra,1c00a224 <_get_digit>
1c00aaa4:	00a900ab          	p.sb	a0,1(s2!)
1c00aaa8:	147d                	addi	s0,s0,-1
1c00aaaa:	b785                	j	1c00aa0a <pos_libc_prf+0x7b2>
1c00aaac:	893a                	mv	s2,a4
1c00aaae:	bf8d                	j	1c00aa20 <pos_libc_prf+0x7c8>
1c00aab0:	8a4a                	mv	s4,s2
1c00aab2:	04c00693          	li	a3,76
1c00aab6:	004a278b          	p.lw	a5,4(s4!)
1c00aaba:	02d48a63          	beq	s1,a3,1c00aaee <pos_libc_prf+0x896>
1c00aabe:	0096c963          	blt	a3,s1,1c00aad0 <pos_libc_prf+0x878>
1c00aac2:	04800693          	li	a3,72
1c00aac6:	02d48063          	beq	s1,a3,1c00aae6 <pos_libc_prf+0x88e>
1c00aaca:	0137a023          	sw	s3,0(a5)
1c00aace:	a801                	j	1c00aade <pos_libc_prf+0x886>
1c00aad0:	06800693          	li	a3,104
1c00aad4:	fed49be3          	bne	s1,a3,1c00aaca <pos_libc_prf+0x872>
1c00aad8:	874e                	mv	a4,s3
1c00aada:	00e79023          	sh	a4,0(a5)
1c00aade:	8952                	mv	s2,s4
1c00aae0:	8662                	mv	a2,s8
1c00aae2:	f9aff06f          	j	1c00a27c <pos_libc_prf+0x24>
1c00aae6:	874e                	mv	a4,s3
1c00aae8:	00e78023          	sb	a4,0(a5)
1c00aaec:	bfcd                	j	1c00aade <pos_libc_prf+0x886>
1c00aaee:	41f9d713          	srai	a4,s3,0x1f
1c00aaf2:	0137a023          	sw	s3,0(a5)
1c00aaf6:	c3d8                	sw	a4,4(a5)
1c00aaf8:	b7dd                	j	1c00aade <pos_libc_prf+0x886>
1c00aafa:	00092583          	lw	a1,0(s2)
1c00aafe:	77e1                	lui	a5,0xffff8
1c00ab00:	8307c793          	xori	a5,a5,-2000
1c00ab04:	46c1                	li	a3,16
1c00ab06:	4601                	li	a2,0
1c00ab08:	04610513          	addi	a0,sp,70
1c00ab0c:	04f11223          	sh	a5,68(sp)
1c00ab10:	e1eff0ef          	jal	ra,1c00a12e <_to_x>
1c00ab14:	00490a13          	addi	s4,s2,4
1c00ab18:	00250d93          	addi	s11,a0,2
1c00ab1c:	4909                	li	s2,2
1c00ab1e:	bc05                	j	1c00a54e <pos_libc_prf+0x2f6>
1c00ab20:	0016c60b          	p.lbu	a2,1(a3!) # 8000001 <__l1_heap_size+0x7ff001d>
1c00ab24:	a60605e3          	beqz	a2,1c00a58e <pos_libc_prf+0x336>
1c00ab28:	0d85                	addi	s11,s11,1
1c00ab2a:	b485                	j	1c00a58a <pos_libc_prf+0x332>
1c00ab2c:	00490a13          	addi	s4,s2,4
1c00ab30:	00092583          	lw	a1,0(s2)
1c00ab34:	4601                	li	a2,0
1c00ab36:	b29d                	j	1c00a49c <pos_libc_prf+0x244>
1c00ab38:	8526                	mv	a0,s1
1c00ab3a:	46a1                	li	a3,8
1c00ab3c:	409504b3          	sub	s1,a0,s1
1c00ab40:	deeff0ef          	jal	ra,1c00a12e <_to_x>
1c00ab44:	00a48db3          	add	s11,s1,a0
1c00ab48:	4901                	li	s2,0
1c00ab4a:	b411                	j	1c00a54e <pos_libc_prf+0x2f6>
1c00ab4c:	07500713          	li	a4,117
1c00ab50:	00ed9863          	bne	s11,a4,1c00ab60 <pos_libc_prf+0x908>
1c00ab54:	46a9                	li	a3,10
1c00ab56:	8526                	mv	a0,s1
1c00ab58:	dd6ff0ef          	jal	ra,1c00a12e <_to_x>
1c00ab5c:	8daa                	mv	s11,a0
1c00ab5e:	b7ed                	j	1c00ab48 <pos_libc_prf+0x8f0>
1c00ab60:	8d26                	mv	s10,s1
1c00ab62:	000a8963          	beqz	s5,1c00ab74 <pos_libc_prf+0x91c>
1c00ab66:	7761                	lui	a4,0xffff8
1c00ab68:	83074713          	xori	a4,a4,-2000
1c00ab6c:	04e11223          	sh	a4,68(sp)
1c00ab70:	04610d13          	addi	s10,sp,70
1c00ab74:	46c1                	li	a3,16
1c00ab76:	856a                	mv	a0,s10
1c00ab78:	db6ff0ef          	jal	ra,1c00a12e <_to_x>
1c00ab7c:	05800713          	li	a4,88
1c00ab80:	02ed9263          	bne	s11,a4,1c00aba4 <pos_libc_prf+0x94c>
1c00ab84:	87a6                	mv	a5,s1
1c00ab86:	45e5                	li	a1,25
1c00ab88:	0017c68b          	p.lbu	a3,1(a5!) # ffff8001 <pulp__FC+0xffff8002>
1c00ab8c:	f9f68613          	addi	a2,a3,-97
1c00ab90:	0ff67613          	andi	a2,a2,255
1c00ab94:	00c5e563          	bltu	a1,a2,1c00ab9e <pos_libc_prf+0x946>
1c00ab98:	1681                	addi	a3,a3,-32
1c00ab9a:	fed78fa3          	sb	a3,-1(a5)
1c00ab9e:	fff7c703          	lbu	a4,-1(a5)
1c00aba2:	f37d                	bnez	a4,1c00ab88 <pos_libc_prf+0x930>
1c00aba4:	409d0733          	sub	a4,s10,s1
1c00aba8:	00a70db3          	add	s11,a4,a0
1c00abac:	001a9913          	slli	s2,s5,0x1
1c00abb0:	ba79                	j	1c00a54e <pos_libc_prf+0x2f6>
1c00abb2:	85de                	mv	a1,s7
1c00abb4:	02500513          	li	a0,37
1c00abb8:	ed8ff06f          	j	1c00a290 <pos_libc_prf+0x38>
1c00abbc:	0985                	addi	s3,s3,1
1c00abbe:	8a4a                	mv	s4,s2
1c00abc0:	bf39                	j	1c00aade <pos_libc_prf+0x886>
1c00abc2:	00dc                	addi	a5,sp,68
1c00abc4:	4d01                	li	s10,0
1c00abc6:	bacd                	j	1c00a5b8 <pos_libc_prf+0x360>
1c00abc8:	85de                	mv	a1,s7
1c00abca:	02000513          	li	a0,32
1c00abce:	c036                	sw	a3,0(sp)
1c00abd0:	c43e                	sw	a5,8(sp)
1c00abd2:	9b02                	jalr	s6
1c00abd4:	4682                	lw	a3,0(sp)
1c00abd6:	47a2                	lw	a5,8(sp)
1c00abd8:	ebf52f63          	p.beqimm	a0,-1,1c00a296 <pos_libc_prf+0x3e>
1c00abdc:	14fd                	addi	s1,s1,-1
1c00abde:	fff4b5e3          	p.bneimm	s1,-1,1c00abc8 <pos_libc_prf+0x970>
1c00abe2:	99e6                	add	s3,s3,s9
1c00abe4:	5cfd                	li	s9,-1
1c00abe6:	b2d5                	j	1c00a5ca <pos_libc_prf+0x372>
1c00abe8:	0017c50b          	p.lbu	a0,1(a5!)
1c00abec:	85de                	mv	a1,s7
1c00abee:	c036                	sw	a3,0(sp)
1c00abf0:	c43e                	sw	a5,8(sp)
1c00abf2:	9b02                	jalr	s6
1c00abf4:	4682                	lw	a3,0(sp)
1c00abf6:	47a2                	lw	a5,8(sp)
1c00abf8:	9df53be3          	p.bneimm	a0,-1,1c00a5ce <pos_libc_prf+0x376>
1c00abfc:	e9aff06f          	j	1c00a296 <pos_libc_prf+0x3e>
1c00ac00:	85de                	mv	a1,s7
1c00ac02:	03000513          	li	a0,48
1c00ac06:	c036                	sw	a3,0(sp)
1c00ac08:	c43e                	sw	a5,8(sp)
1c00ac0a:	9b02                	jalr	s6
1c00ac0c:	4682                	lw	a3,0(sp)
1c00ac0e:	47a2                	lw	a5,8(sp)
1c00ac10:	9df532e3          	p.bneimm	a0,-1,1c00a5d4 <pos_libc_prf+0x37c>
1c00ac14:	e82ff06f          	j	1c00a296 <pos_libc_prf+0x3e>
1c00ac18:	85de                	mv	a1,s7
1c00ac1a:	c232                	sw	a2,4(sp)
1c00ac1c:	c036                	sw	a3,0(sp)
1c00ac1e:	c442                	sw	a6,8(sp)
1c00ac20:	9b02                	jalr	s6
1c00ac22:	4612                	lw	a2,4(sp)
1c00ac24:	4682                	lw	a3,0(sp)
1c00ac26:	4822                	lw	a6,8(sp)
1c00ac28:	e7f52763          	p.beqimm	a0,-1,1c00a296 <pos_libc_prf+0x3e>
1c00ac2c:	0d85                	addi	s11,s11,1
1c00ac2e:	000dc503          	lbu	a0,0(s11)
1c00ac32:	ba75                	j	1c00a5ee <pos_libc_prf+0x396>
1c00ac34:	85de                	mv	a1,s7
1c00ac36:	03000513          	li	a0,48
1c00ac3a:	c232                	sw	a2,4(sp)
1c00ac3c:	c036                	sw	a3,0(sp)
1c00ac3e:	c43a                	sw	a4,8(sp)
1c00ac40:	9b02                	jalr	s6
1c00ac42:	4612                	lw	a2,4(sp)
1c00ac44:	4682                	lw	a3,0(sp)
1c00ac46:	4722                	lw	a4,8(sp)
1c00ac48:	167d                	addi	a2,a2,-1
1c00ac4a:	9bf539e3          	p.bneimm	a0,-1,1c00a5fc <pos_libc_prf+0x3a4>
1c00ac4e:	e48ff06f          	j	1c00a296 <pos_libc_prf+0x3e>
1c00ac52:	85de                	mv	a1,s7
1c00ac54:	03000513          	li	a0,48
1c00ac58:	c036                	sw	a3,0(sp)
1c00ac5a:	c43a                	sw	a4,8(sp)
1c00ac5c:	9b02                	jalr	s6
1c00ac5e:	4682                	lw	a3,0(sp)
1c00ac60:	4722                	lw	a4,8(sp)
1c00ac62:	16fd                	addi	a3,a3,-1
1c00ac64:	9df539e3          	p.bneimm	a0,-1,1c00a636 <pos_libc_prf+0x3de>
1c00ac68:	e2eff06f          	j	1c00a296 <pos_libc_prf+0x3e>
1c00ac6c:	85de                	mv	a1,s7
1c00ac6e:	c232                	sw	a2,4(sp)
1c00ac70:	c036                	sw	a3,0(sp)
1c00ac72:	c43a                	sw	a4,8(sp)
1c00ac74:	9b02                	jalr	s6
1c00ac76:	4612                	lw	a2,4(sp)
1c00ac78:	4682                	lw	a3,0(sp)
1c00ac7a:	4722                	lw	a4,8(sp)
1c00ac7c:	e1f52d63          	p.beqimm	a0,-1,1c00a296 <pos_libc_prf+0x3e>
1c00ac80:	0d85                	addi	s11,s11,1
1c00ac82:	000dc503          	lbu	a0,0(s11)
1c00ac86:	b2e9                	j	1c00a650 <pos_libc_prf+0x3f8>
1c00ac88:	85de                	mv	a1,s7
1c00ac8a:	03000513          	li	a0,48
1c00ac8e:	c43a                	sw	a4,8(sp)
1c00ac90:	9b02                	jalr	s6
1c00ac92:	4722                	lw	a4,8(sp)
1c00ac94:	177d                	addi	a4,a4,-1
1c00ac96:	9df536e3          	p.bneimm	a0,-1,1c00a662 <pos_libc_prf+0x40a>
1c00ac9a:	dfcff06f          	j	1c00a296 <pos_libc_prf+0x3e>
1c00ac9e:	0014450b          	p.lbu	a0,1(s0!)
1c00aca2:	85de                	mv	a1,s7
1c00aca4:	9b02                	jalr	s6
1c00aca6:	dff52863          	p.beqimm	a0,-1,1c00a296 <pos_libc_prf+0x3e>
1c00acaa:	408a87b3          	sub	a5,s5,s0
1c00acae:	fef048e3          	bgtz	a5,1c00ac9e <pos_libc_prf+0xa46>
1c00acb2:	994e                	add	s2,s2,s3
1c00acb4:	012d09b3          	add	s3,s10,s2
1c00acb8:	99a6                	add	s3,s3,s1
1c00acba:	e39052e3          	blez	s9,1c00aade <pos_libc_prf+0x886>
1c00acbe:	99e6                	add	s3,s3,s9
1c00acc0:	1cfd                	addi	s9,s9,-1
1c00acc2:	e1fcaee3          	p.beqimm	s9,-1,1c00aade <pos_libc_prf+0x886>
1c00acc6:	85de                	mv	a1,s7
1c00acc8:	02000513          	li	a0,32
1c00accc:	9b02                	jalr	s6
1c00acce:	fff539e3          	p.bneimm	a0,-1,1c00acc0 <pos_libc_prf+0xa68>
1c00acd2:	dc4ff06f          	j	1c00a296 <pos_libc_prf+0x3e>
1c00acd6:	02e00693          	li	a3,46
1c00acda:	00d90023          	sb	a3,0(s2)
1c00acde:	00190713          	addi	a4,s2,1
1c00ace2:	86ea                	mv	a3,s10
1c00ace4:	4d01                	li	s10,0
1c00ace6:	4a81                	li	s5,0
1c00ace8:	bed9                	j	1c00a8be <pos_libc_prf+0x666>
1c00acea:	ca02                	sw	zero,20(sp)
1c00acec:	00140713          	addi	a4,s0,1
1c00acf0:	46c1                	li	a3,16
1c00acf2:	d636                	sw	a3,44(sp)
1c00acf4:	04d74933          	p.min	s2,a4,a3
1c00acf8:	be81                	j	1c00a848 <pos_libc_prf+0x5f0>

1c00acfa <pos_init_start>:
1c00acfa:	1141                	addi	sp,sp,-16
1c00acfc:	c422                	sw	s0,8(sp)
1c00acfe:	1c001437          	lui	s0,0x1c001
1c00ad02:	c606                	sw	ra,12(sp)
1c00ad04:	85040413          	addi	s0,s0,-1968 # 1c000850 <ctor_list+0x4>
1c00ad08:	2241                	jal	1c00ae88 <pos_irq_init>
1c00ad0a:	b54ff0ef          	jal	ra,1c00a05e <pos_soc_init>
1c00ad0e:	2275                	jal	1c00aeba <pos_soc_event_init>
1c00ad10:	20e9                	jal	1c00adda <pos_allocs_init>
1c00ad12:	28a9                	jal	1c00ad6c <pos_sched_init>
1c00ad14:	0044278b          	p.lw	a5,4(s0!)
1c00ad18:	eb89                	bnez	a5,1c00ad2a <pos_init_start+0x30>
1c00ad1a:	be2ff0ef          	jal	ra,1c00a0fc <pos_io_start>
1c00ad1e:	300467f3          	csrrsi	a5,mstatus,8
1c00ad22:	40b2                	lw	ra,12(sp)
1c00ad24:	4422                	lw	s0,8(sp)
1c00ad26:	0141                	addi	sp,sp,16
1c00ad28:	8082                	ret
1c00ad2a:	9782                	jalr	a5
1c00ad2c:	b7e5                	j	1c00ad14 <pos_init_start+0x1a>

1c00ad2e <pos_init_stop>:
1c00ad2e:	1141                	addi	sp,sp,-16
1c00ad30:	c422                	sw	s0,8(sp)
1c00ad32:	1c001437          	lui	s0,0x1c001
1c00ad36:	c606                	sw	ra,12(sp)
1c00ad38:	86440413          	addi	s0,s0,-1948 # 1c000864 <dtor_list+0x4>
1c00ad3c:	bc4ff0ef          	jal	ra,1c00a100 <pos_io_stop>
1c00ad40:	0044278b          	p.lw	a5,4(s0!)
1c00ad44:	e789                	bnez	a5,1c00ad4e <pos_init_stop+0x20>
1c00ad46:	40b2                	lw	ra,12(sp)
1c00ad48:	4422                	lw	s0,8(sp)
1c00ad4a:	0141                	addi	sp,sp,16
1c00ad4c:	8082                	ret
1c00ad4e:	9782                	jalr	a5
1c00ad50:	bfc5                	j	1c00ad40 <pos_init_stop+0x12>

1c00ad52 <pos_cbsys_add>:
1c00ad52:	00259793          	slli	a5,a1,0x2
1c00ad56:	1c0015b7          	lui	a1,0x1c001
1c00ad5a:	29058593          	addi	a1,a1,656 # 1c001290 <pos_cbsys_first>
1c00ad5e:	95be                	add	a1,a1,a5
1c00ad60:	419c                	lw	a5,0(a1)
1c00ad62:	c110                	sw	a2,0(a0)
1c00ad64:	c154                	sw	a3,4(a0)
1c00ad66:	c51c                	sw	a5,8(a0)
1c00ad68:	c188                	sw	a0,0(a1)
1c00ad6a:	8082                	ret

1c00ad6c <pos_sched_init>:
1c00ad6c:	02002023          	sw	zero,32(zero) # 20 <pos_sched_first>
1c00ad70:	8082                	ret

1c00ad72 <pos_alloc_init>:
1c00ad72:	00758793          	addi	a5,a1,7
1c00ad76:	c407b7b3          	p.bclr	a5,a5,2,0
1c00ad7a:	40b785b3          	sub	a1,a5,a1
1c00ad7e:	c11c                	sw	a5,0(a0)
1c00ad80:	8e0d                	sub	a2,a2,a1
1c00ad82:	00c05763          	blez	a2,1c00ad90 <pos_alloc_init+0x1e>
1c00ad86:	c4063633          	p.bclr	a2,a2,2,0
1c00ad8a:	c390                	sw	a2,0(a5)
1c00ad8c:	0007a223          	sw	zero,4(a5)
1c00ad90:	8082                	ret

1c00ad92 <pos_alloc>:
1c00ad92:	411c                	lw	a5,0(a0)
1c00ad94:	059d                	addi	a1,a1,7
1c00ad96:	c405b5b3          	p.bclr	a1,a1,2,0
1c00ad9a:	4701                	li	a4,0
1c00ad9c:	cb89                	beqz	a5,1c00adae <pos_alloc+0x1c>
1c00ad9e:	4394                	lw	a3,0(a5)
1c00ada0:	43d0                	lw	a2,4(a5)
1c00ada2:	00b6c863          	blt	a3,a1,1c00adb2 <pos_alloc+0x20>
1c00ada6:	00b69b63          	bne	a3,a1,1c00adbc <pos_alloc+0x2a>
1c00adaa:	c719                	beqz	a4,1c00adb8 <pos_alloc+0x26>
1c00adac:	c350                	sw	a2,4(a4)
1c00adae:	853e                	mv	a0,a5
1c00adb0:	8082                	ret
1c00adb2:	873e                	mv	a4,a5
1c00adb4:	87b2                	mv	a5,a2
1c00adb6:	b7dd                	j	1c00ad9c <pos_alloc+0xa>
1c00adb8:	c110                	sw	a2,0(a0)
1c00adba:	bfd5                	j	1c00adae <pos_alloc+0x1c>
1c00adbc:	00b78833          	add	a6,a5,a1
1c00adc0:	40b685b3          	sub	a1,a3,a1
1c00adc4:	00b82023          	sw	a1,0(a6)
1c00adc8:	00c82223          	sw	a2,4(a6)
1c00adcc:	c701                	beqz	a4,1c00add4 <pos_alloc+0x42>
1c00adce:	01072223          	sw	a6,4(a4) # ffff8004 <pulp__FC+0xffff8005>
1c00add2:	bff1                	j	1c00adae <pos_alloc+0x1c>
1c00add4:	01052023          	sw	a6,0(a0)
1c00add8:	bfd9                	j	1c00adae <pos_alloc+0x1c>

1c00adda <pos_allocs_init>:
1c00adda:	1141                	addi	sp,sp,-16
1c00addc:	1c0095b7          	lui	a1,0x1c009
1c00ade0:	c606                	sw	ra,12(sp)
1c00ade2:	c422                	sw	s0,8(sp)
1c00ade4:	30c58793          	addi	a5,a1,780 # 1c00930c <__l2_priv0_end>
1c00ade8:	1c008637          	lui	a2,0x1c008
1c00adec:	04c7c363          	blt	a5,a2,1c00ae32 <pos_allocs_init+0x58>
1c00adf0:	4581                	li	a1,0
1c00adf2:	4601                	li	a2,0
1c00adf4:	1c009437          	lui	s0,0x1c009
1c00adf8:	2e440513          	addi	a0,s0,740 # 1c0092e4 <pos_alloc_l2>
1c00adfc:	3f9d                	jal	1c00ad72 <pos_alloc_init>
1c00adfe:	1c0145b7          	lui	a1,0x1c014
1c00ae02:	1a058793          	addi	a5,a1,416 # 1c0141a0 <__l2_shared_end>
1c00ae06:	1c080637          	lui	a2,0x1c080
1c00ae0a:	1c009537          	lui	a0,0x1c009
1c00ae0e:	8e1d                	sub	a2,a2,a5
1c00ae10:	1a058593          	addi	a1,a1,416
1c00ae14:	2e850513          	addi	a0,a0,744 # 1c0092e8 <pos_alloc_l2+0x4>
1c00ae18:	3fa9                	jal	1c00ad72 <pos_alloc_init>
1c00ae1a:	2e440513          	addi	a0,s0,740
1c00ae1e:	4591                	li	a1,4
1c00ae20:	3f8d                	jal	1c00ad92 <pos_alloc>
1c00ae22:	40b2                	lw	ra,12(sp)
1c00ae24:	4422                	lw	s0,8(sp)
1c00ae26:	1c0097b7          	lui	a5,0x1c009
1c00ae2a:	2ea7a023          	sw	a0,736(a5) # 1c0092e0 <pos_alloc_l1>
1c00ae2e:	0141                	addi	sp,sp,16
1c00ae30:	8082                	ret
1c00ae32:	8e1d                	sub	a2,a2,a5
1c00ae34:	30c58593          	addi	a1,a1,780
1c00ae38:	bf75                	j	1c00adf4 <pos_allocs_init+0x1a>

1c00ae3a <pos_irq_set_handler>:
1c00ae3a:	f14027f3          	csrr	a5,mhartid
1c00ae3e:	477d                	li	a4,31
1c00ae40:	ca5797b3          	p.extractu	a5,a5,5,5
1c00ae44:	02e79e63          	bne	a5,a4,1c00ae80 <pos_irq_set_handler+0x46>
1c00ae48:	30502773          	csrr	a4,mtvec
1c00ae4c:	c0073733          	p.bclr	a4,a4,0,0
1c00ae50:	050a                	slli	a0,a0,0x2
1c00ae52:	8d89                	sub	a1,a1,a0
1c00ae54:	8d99                	sub	a1,a1,a4
1c00ae56:	c14586b3          	p.extract	a3,a1,0,20
1c00ae5a:	06f00793          	li	a5,111
1c00ae5e:	c1f6a7b3          	p.insert	a5,a3,0,31
1c00ae62:	d21586b3          	p.extract	a3,a1,9,1
1c00ae66:	d356a7b3          	p.insert	a5,a3,9,21
1c00ae6a:	c0b586b3          	p.extract	a3,a1,0,11
1c00ae6e:	c146a7b3          	p.insert	a5,a3,0,20
1c00ae72:	cec585b3          	p.extract	a1,a1,7,12
1c00ae76:	cec5a7b3          	p.insert	a5,a1,7,12
1c00ae7a:	00f56723          	p.sw	a5,a4(a0)
1c00ae7e:	8082                	ret
1c00ae80:	002007b7          	lui	a5,0x200
1c00ae84:	43b8                	lw	a4,64(a5)
1c00ae86:	b7e9                	j	1c00ae50 <pos_irq_set_handler+0x16>

1c00ae88 <pos_irq_init>:
1c00ae88:	1a10a7b7          	lui	a5,0x1a10a
1c00ae8c:	577d                	li	a4,-1
1c00ae8e:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097ec>
1c00ae92:	f1402773          	csrr	a4,mhartid
1c00ae96:	1c0097b7          	lui	a5,0x1c009
1c00ae9a:	46fd                	li	a3,31
1c00ae9c:	ca571733          	p.extractu	a4,a4,5,5
1c00aea0:	40078793          	addi	a5,a5,1024 # 1c009400 <__irq_vector_base>
1c00aea4:	00d71763          	bne	a4,a3,1c00aeb2 <pos_irq_init+0x2a>
1c00aea8:	c007c7b3          	p.bset	a5,a5,0,0
1c00aeac:	30579073          	csrw	mtvec,a5
1c00aeb0:	8082                	ret
1c00aeb2:	00200737          	lui	a4,0x200
1c00aeb6:	c33c                	sw	a5,64(a4)
1c00aeb8:	8082                	ret

1c00aeba <pos_soc_event_init>:
1c00aeba:	1a1067b7          	lui	a5,0x1a106
1c00aebe:	1141                	addi	sp,sp,-16
1c00aec0:	c606                	sw	ra,12(sp)
1c00aec2:	577d                	li	a4,-1
1c00aec4:	00478693          	addi	a3,a5,4 # 1a106004 <__l1_end+0xa105fe8>
1c00aec8:	c298                	sw	a4,0(a3)
1c00aeca:	00878693          	addi	a3,a5,8
1c00aece:	c298                	sw	a4,0(a3)
1c00aed0:	00c78693          	addi	a3,a5,12
1c00aed4:	c298                	sw	a4,0(a3)
1c00aed6:	01078693          	addi	a3,a5,16
1c00aeda:	c298                	sw	a4,0(a3)
1c00aedc:	01478693          	addi	a3,a5,20
1c00aee0:	c298                	sw	a4,0(a3)
1c00aee2:	01878693          	addi	a3,a5,24
1c00aee6:	c298                	sw	a4,0(a3)
1c00aee8:	01c78693          	addi	a3,a5,28
1c00aeec:	c298                	sw	a4,0(a3)
1c00aeee:	02078793          	addi	a5,a5,32
1c00aef2:	1c00b5b7          	lui	a1,0x1c00b
1c00aef6:	c398                	sw	a4,0(a5)
1c00aef8:	1a058593          	addi	a1,a1,416 # 1c00b1a0 <pos_soc_event_handler_asm>
1c00aefc:	4569                	li	a0,26
1c00aefe:	3f35                	jal	1c00ae3a <pos_irq_set_handler>
1c00af00:	40b2                	lw	ra,12(sp)
1c00af02:	1a10a7b7          	lui	a5,0x1a10a
1c00af06:	04000737          	lui	a4,0x4000
1c00af0a:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__l1_end+0xa1097e8>
1c00af0e:	0141                	addi	sp,sp,16
1c00af10:	8082                	ret

1c00af12 <pos_time_poweroff>:
1c00af12:	1a10b7b7          	lui	a5,0x1a10b
1c00af16:	0791                	addi	a5,a5,4
1c00af18:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00af1c:	1c001737          	lui	a4,0x1c001
1c00af20:	2af72423          	sw	a5,680(a4) # 1c0012a8 <pos_time_timer_count>
1c00af24:	4501                	li	a0,0
1c00af26:	8082                	ret

1c00af28 <pos_time_poweron>:
1c00af28:	1c0017b7          	lui	a5,0x1c001
1c00af2c:	2a87a703          	lw	a4,680(a5) # 1c0012a8 <pos_time_timer_count>
1c00af30:	1a10b7b7          	lui	a5,0x1a10b
1c00af34:	0791                	addi	a5,a5,4
1c00af36:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_end+0xa10afec>
1c00af3a:	4501                	li	a0,0
1c00af3c:	8082                	ret

1c00af3e <pos_time_timer_handler>:
1c00af3e:	1c0016b7          	lui	a3,0x1c001
1c00af42:	2a868793          	addi	a5,a3,680 # 1c0012a8 <pos_time_timer_count>
1c00af46:	43dc                	lw	a5,4(a5)
1c00af48:	1a10b737          	lui	a4,0x1a10b
1c00af4c:	0711                	addi	a4,a4,4
1c00af4e:	00872703          	lw	a4,8(a4) # 1a10b008 <__l1_end+0xa10afec>
1c00af52:	02002803          	lw	a6,32(zero) # 20 <pos_sched_first>
1c00af56:	02402503          	lw	a0,36(zero) # 24 <pos_sched_last>
1c00af5a:	80000e37          	lui	t3,0x80000
1c00af5e:	4881                	li	a7,0
1c00af60:	4301                	li	t1,0
1c00af62:	2a868693          	addi	a3,a3,680
1c00af66:	ffee4e13          	xori	t3,t3,-2
1c00af6a:	efb9                	bnez	a5,1c00afc8 <pos_time_timer_handler+0x8a>
1c00af6c:	00030463          	beqz	t1,1c00af74 <pos_time_timer_handler+0x36>
1c00af70:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c00af74:	00088463          	beqz	a7,1c00af7c <pos_time_timer_handler+0x3e>
1c00af78:	02a02223          	sw	a0,36(zero) # 24 <pos_sched_last>
1c00af7c:	1a10b7b7          	lui	a5,0x1a10b
1c00af80:	08100713          	li	a4,129
1c00af84:	0791                	addi	a5,a5,4
1c00af86:	0006a223          	sw	zero,4(a3)
1c00af8a:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00af8e:	f1402773          	csrr	a4,mhartid
1c00af92:	6785                	lui	a5,0x1
1c00af94:	46fd                	li	a3,31
1c00af96:	ca571733          	p.extractu	a4,a4,5,5
1c00af9a:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00af9e:	06d71463          	bne	a4,a3,1c00b006 <pos_time_timer_handler+0xc8>
1c00afa2:	1a10a737          	lui	a4,0x1a10a
1c00afa6:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_end+0xa1097f8>
1c00afaa:	8082                	ret
1c00afac:	0007ae83          	lw	t4,0(a5)
1c00afb0:	0007a023          	sw	zero,0(a5)
1c00afb4:	00080763          	beqz	a6,1c00afc2 <pos_time_timer_handler+0x84>
1c00afb8:	c11c                	sw	a5,0(a0)
1c00afba:	853e                	mv	a0,a5
1c00afbc:	4885                	li	a7,1
1c00afbe:	87f6                	mv	a5,t4
1c00afc0:	b76d                	j	1c00af6a <pos_time_timer_handler+0x2c>
1c00afc2:	883e                	mv	a6,a5
1c00afc4:	4305                	li	t1,1
1c00afc6:	bfd5                	j	1c00afba <pos_time_timer_handler+0x7c>
1c00afc8:	03c7ae83          	lw	t4,60(a5)
1c00afcc:	41d70eb3          	sub	t4,a4,t4
1c00afd0:	fdde7ee3          	bgeu	t3,t4,1c00afac <pos_time_timer_handler+0x6e>
1c00afd4:	00030463          	beqz	t1,1c00afdc <pos_time_timer_handler+0x9e>
1c00afd8:	03002023          	sw	a6,32(zero) # 20 <pos_sched_first>
1c00afdc:	00088463          	beqz	a7,1c00afe4 <pos_time_timer_handler+0xa6>
1c00afe0:	02a02223          	sw	a0,36(zero) # 24 <pos_sched_last>
1c00afe4:	c2dc                	sw	a5,4(a3)
1c00afe6:	1a10b6b7          	lui	a3,0x1a10b
1c00afea:	0691                	addi	a3,a3,4
1c00afec:	0086a603          	lw	a2,8(a3) # 1a10b008 <__l1_end+0xa10afec>
1c00aff0:	5fdc                	lw	a5,60(a5)
1c00aff2:	40e78733          	sub	a4,a5,a4
1c00aff6:	9732                	add	a4,a4,a2
1c00aff8:	00e6a823          	sw	a4,16(a3)
1c00affc:	08500793          	li	a5,133
1c00b000:	00f6a023          	sw	a5,0(a3)
1c00b004:	8082                	ret
1c00b006:	00204737          	lui	a4,0x204
1c00b00a:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f4044>
1c00b00e:	8082                	ret

1c00b010 <pos_time_init>:
1c00b010:	1141                	addi	sp,sp,-16
1c00b012:	c422                	sw	s0,8(sp)
1c00b014:	1a10b7b7          	lui	a5,0x1a10b
1c00b018:	1c001437          	lui	s0,0x1c001
1c00b01c:	c606                	sw	ra,12(sp)
1c00b01e:	2a840413          	addi	s0,s0,680 # 1c0012a8 <pos_time_timer_count>
1c00b022:	08300713          	li	a4,131
1c00b026:	0791                	addi	a5,a5,4
1c00b028:	00042223          	sw	zero,4(s0)
1c00b02c:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe4>
1c00b030:	1c00b5b7          	lui	a1,0x1c00b
1c00b034:	17c58593          	addi	a1,a1,380 # 1c00b17c <pos_time_timer_handler_asm>
1c00b038:	452d                	li	a0,11
1c00b03a:	3501                	jal	1c00ae3a <pos_irq_set_handler>
1c00b03c:	6785                	lui	a5,0x1
1c00b03e:	1a10a737          	lui	a4,0x1a10a
1c00b042:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c00b046:	1c00b637          	lui	a2,0x1c00b
1c00b04a:	00840513          	addi	a0,s0,8
1c00b04e:	4681                	li	a3,0
1c00b050:	f1260613          	addi	a2,a2,-238 # 1c00af12 <pos_time_poweroff>
1c00b054:	4589                	li	a1,2
1c00b056:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_end+0xa1097e8>
1c00b05a:	39e5                	jal	1c00ad52 <pos_cbsys_add>
1c00b05c:	01840513          	addi	a0,s0,24
1c00b060:	4422                	lw	s0,8(sp)
1c00b062:	40b2                	lw	ra,12(sp)
1c00b064:	1c00b637          	lui	a2,0x1c00b
1c00b068:	4681                	li	a3,0
1c00b06a:	f2860613          	addi	a2,a2,-216 # 1c00af28 <pos_time_poweron>
1c00b06e:	458d                	li	a1,3
1c00b070:	0141                	addi	sp,sp,16
1c00b072:	b1c5                	j	1c00ad52 <pos_cbsys_add>

1c00b074 <pos_uart_init>:
1c00b074:	1c0147b7          	lui	a5,0x1c014
1c00b078:	1407a823          	sw	zero,336(a5) # 1c014150 <pos_uart>
1c00b07c:	8082                	ret

1c00b07e <pos_init_entry>:
1c00b07e:	cc101073          	csrw	0xcc1,zero
1c00b082:	f1402573          	csrr	a0,mhartid
1c00b086:	01f57593          	andi	a1,a0,31
1c00b08a:	8115                	srli	a0,a0,0x5
1c00b08c:	467d                	li	a2,31
1c00b08e:	00c50463          	beq	a0,a2,1c00b096 <label0>
1c00b092:	76f0406f          	j	1c010000 <__cluster_text_start>

1c00b096 <label0>:
1c00b096:	ffff6297          	auipc	t0,0xffff6
1c00b09a:	24228293          	addi	t0,t0,578 # 1c0012d8 <total_features>
1c00b09e:	ffffe317          	auipc	t1,0xffffe
1c00b0a2:	26e30313          	addi	t1,t1,622 # 1c00930c <__l2_priv0_end>
1c00b0a6:	0002a023          	sw	zero,0(t0)
1c00b0aa:	0291                	addi	t0,t0,4
1c00b0ac:	fe62ede3          	bltu	t0,t1,1c00b0a6 <label0+0x10>
1c00b0b0:	ffff6117          	auipc	sp,0xffff6
1c00b0b4:	1e010113          	addi	sp,sp,480 # 1c001290 <pos_cbsys_first>
1c00b0b8:	00000297          	auipc	t0,0x0
1c00b0bc:	c4228293          	addi	t0,t0,-958 # 1c00acfa <pos_init_start>
1c00b0c0:	000280e7          	jalr	t0
1c00b0c4:	00000513          	li	a0,0
1c00b0c8:	00000593          	li	a1,0
1c00b0cc:	fffff397          	auipc	t2,0xfffff
1c00b0d0:	e7638393          	addi	t2,t2,-394 # 1c009f42 <main>
1c00b0d4:	000380e7          	jalr	t2
1c00b0d8:	842a                	mv	s0,a0
1c00b0da:	8522                	mv	a0,s0
1c00b0dc:	fffff297          	auipc	t0,0xfffff
1c00b0e0:	ff828293          	addi	t0,t0,-8 # 1c00a0d4 <exit>
1c00b0e4:	000280e7          	jalr	t0

1c00b0e8 <pos_irq_call_external_c_function>:
1c00b0e8:	7119                	addi	sp,sp,-128
1c00b0ea:	c006                	sw	ra,0(sp)
1c00b0ec:	c20e                	sw	gp,4(sp)
1c00b0ee:	c412                	sw	tp,8(sp)
1c00b0f0:	c616                	sw	t0,12(sp)
1c00b0f2:	c81a                	sw	t1,16(sp)
1c00b0f4:	ca1e                	sw	t2,20(sp)
1c00b0f6:	d236                	sw	a3,36(sp)
1c00b0f8:	d43a                	sw	a4,40(sp)
1c00b0fa:	d63e                	sw	a5,44(sp)
1c00b0fc:	d842                	sw	a6,48(sp)
1c00b0fe:	da46                	sw	a7,52(sp)
1c00b100:	dc72                	sw	t3,56(sp)
1c00b102:	de76                	sw	t4,60(sp)
1c00b104:	c0fa                	sw	t5,64(sp)
1c00b106:	c6fe                	sw	t6,76(sp)
1c00b108:	000600e7          	jalr	a2
1c00b10c:	4082                	lw	ra,0(sp)
1c00b10e:	4192                	lw	gp,4(sp)
1c00b110:	4222                	lw	tp,8(sp)
1c00b112:	42b2                	lw	t0,12(sp)
1c00b114:	4342                	lw	t1,16(sp)
1c00b116:	43d2                	lw	t2,20(sp)
1c00b118:	5692                	lw	a3,36(sp)
1c00b11a:	5722                	lw	a4,40(sp)
1c00b11c:	57b2                	lw	a5,44(sp)
1c00b11e:	5842                	lw	a6,48(sp)
1c00b120:	58d2                	lw	a7,52(sp)
1c00b122:	5e62                	lw	t3,56(sp)
1c00b124:	5ef2                	lw	t4,60(sp)
1c00b126:	4f06                	lw	t5,64(sp)
1c00b128:	4fb6                	lw	t6,76(sp)
1c00b12a:	6109                	addi	sp,sp,128
1c00b12c:	8482                	jr	s1

1c00b12e <pos_irq_call_external_c_function_full>:
1c00b12e:	7119                	addi	sp,sp,-128
1c00b130:	c006                	sw	ra,0(sp)
1c00b132:	c20e                	sw	gp,4(sp)
1c00b134:	c412                	sw	tp,8(sp)
1c00b136:	c616                	sw	t0,12(sp)
1c00b138:	c81a                	sw	t1,16(sp)
1c00b13a:	ca1e                	sw	t2,20(sp)
1c00b13c:	cc2a                	sw	a0,24(sp)
1c00b13e:	ce2e                	sw	a1,28(sp)
1c00b140:	d236                	sw	a3,36(sp)
1c00b142:	d43a                	sw	a4,40(sp)
1c00b144:	d63e                	sw	a5,44(sp)
1c00b146:	d842                	sw	a6,48(sp)
1c00b148:	da46                	sw	a7,52(sp)
1c00b14a:	dc72                	sw	t3,56(sp)
1c00b14c:	de76                	sw	t4,60(sp)
1c00b14e:	c0fa                	sw	t5,64(sp)
1c00b150:	c6fe                	sw	t6,76(sp)
1c00b152:	000600e7          	jalr	a2
1c00b156:	4082                	lw	ra,0(sp)
1c00b158:	4192                	lw	gp,4(sp)
1c00b15a:	4222                	lw	tp,8(sp)
1c00b15c:	42b2                	lw	t0,12(sp)
1c00b15e:	4342                	lw	t1,16(sp)
1c00b160:	43d2                	lw	t2,20(sp)
1c00b162:	4562                	lw	a0,24(sp)
1c00b164:	45f2                	lw	a1,28(sp)
1c00b166:	5692                	lw	a3,36(sp)
1c00b168:	5722                	lw	a4,40(sp)
1c00b16a:	57b2                	lw	a5,44(sp)
1c00b16c:	5842                	lw	a6,48(sp)
1c00b16e:	58d2                	lw	a7,52(sp)
1c00b170:	5e62                	lw	t3,56(sp)
1c00b172:	5ef2                	lw	t4,60(sp)
1c00b174:	4f06                	lw	t5,64(sp)
1c00b176:	4fb6                	lw	t6,76(sp)
1c00b178:	6109                	addi	sp,sp,128
1c00b17a:	8482                	jr	s1

1c00b17c <pos_time_timer_handler_asm>:
1c00b17c:	1161                	addi	sp,sp,-8
1c00b17e:	c032                	sw	a2,0(sp)
1c00b180:	c226                	sw	s1,4(sp)
1c00b182:	00000617          	auipc	a2,0x0
1c00b186:	dbc60613          	addi	a2,a2,-580 # 1c00af3e <pos_time_timer_handler>
1c00b18a:	00000497          	auipc	s1,0x0
1c00b18e:	00c48493          	addi	s1,s1,12 # 1c00b196 <pos_time_timer_handler_asm_ret>
1c00b192:	f9dff06f          	j	1c00b12e <pos_irq_call_external_c_function_full>

1c00b196 <pos_time_timer_handler_asm_ret>:
1c00b196:	4492                	lw	s1,4(sp)
1c00b198:	4602                	lw	a2,0(sp)
1c00b19a:	0121                	addi	sp,sp,8
1c00b19c:	30200073          	mret

1c00b1a0 <pos_soc_event_handler_asm>:
1c00b1a0:	7119                	addi	sp,sp,-128
1c00b1a2:	c022                	sw	s0,0(sp)
1c00b1a4:	c226                	sw	s1,4(sp)
1c00b1a6:	c42a                	sw	a0,8(sp)
1c00b1a8:	c62e                	sw	a1,12(sp)
1c00b1aa:	c832                	sw	a2,16(sp)
1c00b1ac:	ca16                	sw	t0,20(sp)
1c00b1ae:	1a10a437          	lui	s0,0x1a10a
1c00b1b2:	80040413          	addi	s0,s0,-2048 # 1a109800 <__l1_end+0xa1097e4>
1c00b1b6:	5048                	lw	a0,36(s0)
1c00b1b8:	00251593          	slli	a1,a0,0x2
1c00b1bc:	e3ff5297          	auipc	t0,0xe3ff5
1c00b1c0:	28c28293          	addi	t0,t0,652 # 448 <pos_soc_event_callback>
1c00b1c4:	2055f603          	p.lw	a2,t0(a1)
1c00b1c8:	e3ff5297          	auipc	t0,0xe3ff5
1c00b1cc:	e8028293          	addi	t0,t0,-384 # 48 <pos_soc_event_callback_arg>
1c00b1d0:	2055f583          	p.lw	a1,t0(a1)
1c00b1d4:	00000497          	auipc	s1,0x0
1c00b1d8:	03048493          	addi	s1,s1,48 # 1c00b204 <pos_soc_event_handler_end_asm>
1c00b1dc:	f0dff06f          	j	1c00b0e8 <pos_irq_call_external_c_function>

1c00b1e0 <pos_soc_event_no_udma_asm>:
1c00b1e0:	00555593          	srli	a1,a0,0x5
1c00b1e4:	058a                	slli	a1,a1,0x2
1c00b1e6:	e3ff5297          	auipc	t0,0xe3ff5
1c00b1ea:	e4228293          	addi	t0,t0,-446 # 28 <pos_soc_event_status>
1c00b1ee:	2055f603          	p.lw	a2,t0(a1)
1c00b1f2:	897d                	andi	a0,a0,31
1c00b1f4:	80a64633          	p.bsetr	a2,a2,a0
1c00b1f8:	e3ff5297          	auipc	t0,0xe3ff5
1c00b1fc:	e3028293          	addi	t0,t0,-464 # 28 <pos_soc_event_status>
1c00b200:	00c5e2a3          	p.sw	a2,t0(a1)

1c00b204 <pos_soc_event_handler_end_asm>:
1c00b204:	4402                	lw	s0,0(sp)
1c00b206:	4492                	lw	s1,4(sp)
1c00b208:	4522                	lw	a0,8(sp)
1c00b20a:	45b2                	lw	a1,12(sp)
1c00b20c:	4642                	lw	a2,16(sp)
1c00b20e:	42d2                	lw	t0,20(sp)
1c00b210:	6109                	addi	sp,sp,128
1c00b212:	30200073          	mret

1c00b216 <_endtext>:
	...

Disassembly of section .l2_data:

1c010000 <__cluster_text_start>:
1c010000:	f1402573          	csrr	a0,mhartid
1c010004:	01f57593          	andi	a1,a0,31
1c010008:	8115                	srli	a0,a0,0x5
1c01000a:	000702b7          	lui	t0,0x70
1c01000e:	00204337          	lui	t1,0x204
1c010012:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1f401c>
1c010016:	4381                	li	t2,0
1c010018:	0e759463          	bne	a1,t2,1c010100 <pos_slave_start>
1c01001c:	20000293          	li	t0,512
1c010020:	00204337          	lui	t1,0x204
1c010024:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1f4030>
1c010028:	e3ff0417          	auipc	s0,0xe3ff0
1c01002c:	fdc40413          	addi	s0,s0,-36 # 4 <pos_cluster_pool>
1c010030:	002049b7          	lui	s3,0x204
1c010034:	4a09                	li	s4,2
1c010036:	00000a97          	auipc	s5,0x0
1c01003a:	038a8a93          	addi	s5,s5,56 # 1c01006e <pos_master_event>
1c01003e:	ffff9b97          	auipc	s7,0xffff9
1c010042:	2aeb8b93          	addi	s7,s7,686 # 1c0092ec <pos_cluster>
1c010046:	02c00393          	li	t2,44
1c01004a:	02a383b3          	mul	t2,t2,a0
1c01004e:	9b9e                	add	s7,s7,t2
1c010050:	0bd1                	addi	s7,s7,20
1c010052:	1a10acb7          	lui	s9,0x1a10a
1c010056:	810c8c93          	addi	s9,s9,-2032 # 1a109810 <__l1_end+0xa1097f4>
1c01005a:	4c09                	li	s8,2
1c01005c:	00000d17          	auipc	s10,0x0
1c010060:	0e2d0d13          	addi	s10,s10,226 # 1c01013e <pos_set_slave_stack>
1c010064:	001d6d13          	ori	s10,s10,1
1c010068:	30045073          	csrwi	mstatus,8
1c01006c:	a829                	j	1c010086 <pos_master_loop>

1c01006e <pos_master_event>:
1c01006e:	018b2b03          	lw	s6,24(s6)
1c010072:	000b0a63          	beqz	s6,1c010086 <pos_master_loop>

1c010076 <pos_push_event_to_fc_retry>:
1c010076:	000ba283          	lw	t0,0(s7)
1c01007a:	06029c63          	bnez	t0,1c0100f2 <pos_push_event_to_fc_wait>
1c01007e:	016ba023          	sw	s6,0(s7)
1c010082:	018ca023          	sw	s8,0(s9)

1c010086 <pos_master_loop>:
1c010086:	00042b03          	lw	s6,0(s0)
1c01008a:	040b0d63          	beqz	s6,1c0100e4 <pos_master_sleep>

1c01008e <pos_master_loop_update_next>:
1c01008e:	020b2e83          	lw	t4,32(s6)
1c010092:	01d42023          	sw	t4,0(s0)
1c010096:	020b2f03          	lw	t5,32(s6)
1c01009a:	ffee9ae3          	bne	t4,t5,1c01008e <pos_master_loop_update_next>

1c01009e <pos_master_loop_exec_task>:
1c01009e:	004b2503          	lw	a0,4(s6)
1c0100a2:	000b2283          	lw	t0,0(s6)
1c0100a6:	008b2103          	lw	sp,8(s6)
1c0100aa:	00cb2303          	lw	t1,12(s6)
1c0100ae:	010b2383          	lw	t2,16(s6)
1c0100b2:	024b2f03          	lw	t5,36(s6)
1c0100b6:	014b2f83          	lw	t6,20(s6)
1c0100ba:	80d6                	mv	ra,s5
1c0100bc:	911a                	add	sp,sp,t1
1c0100be:	e3ff0e17          	auipc	t3,0xe3ff0
1c0100c2:	f5fe2d23          	sw	t6,-166(t3) # 18 <pos_cluster_nb_active_pe>

1c0100c6 <pos_no_stack_check>:
1c0100c6:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1f40a0>
1c0100ca:	21e9a023          	sw	t5,512(s3)
1c0100ce:	21e9a623          	sw	t5,524(s3)

1c0100d2 <pos_master_no_slave_barrier>:
1c0100d2:	000f2863          	p.beqimm	t5,0,1c0100e2 <pos_master_loop_no_slave>
1c0100d6:	09a9a023          	sw	s10,128(s3)
1c0100da:	0879a023          	sw	t2,128(s3)
1c0100de:	0829a023          	sw	sp,128(s3)

1c0100e2 <pos_master_loop_no_slave>:
1c0100e2:	8282                	jr	t0

1c0100e4 <pos_master_sleep>:
1c0100e4:	0149a423          	sw	s4,8(s3)
1c0100e8:	03c9e003          	p.elw	zero,60(s3)
1c0100ec:	0149a223          	sw	s4,4(s3)
1c0100f0:	bf59                	j	1c010086 <pos_master_loop>

1c0100f2 <pos_push_event_to_fc_wait>:
1c0100f2:	0149a423          	sw	s4,8(s3)
1c0100f6:	03c9e003          	p.elw	zero,60(s3)
1c0100fa:	0149a223          	sw	s4,4(s3)
1c0100fe:	bfa5                	j	1c010076 <pos_push_event_to_fc_retry>

1c010100 <pos_slave_start>:
1c010100:	00204937          	lui	s2,0x204
1c010104:	f14029f3          	csrr	s3,mhartid
1c010108:	01f9f993          	andi	s3,s3,31
1c01010c:	00000a17          	auipc	s4,0x0
1c010110:	012a0a13          	addi	s4,s4,18 # 1c01011e <pos_fork_return>
1c010114:	00000a97          	auipc	s5,0x0
1c010118:	00ea8a93          	addi	s5,s5,14 # 1c010122 <pos_wait_for_dispatch>
1c01011c:	a019                	j	1c010122 <pos_wait_for_dispatch>

1c01011e <pos_fork_return>:
1c01011e:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1f4238>

1c010122 <pos_wait_for_dispatch>:
1c010122:	08096283          	p.elw	t0,128(s2)
1c010126:	08096503          	p.elw	a0,128(s2)
1c01012a:	0012f313          	andi	t1,t0,1
1c01012e:	00031563          	bnez	t1,1c010138 <pos_other_entry>

1c010132 <pos_fork_entry>:
1c010132:	000a00b3          	add	ra,s4,zero
1c010136:	8282                	jr	t0

1c010138 <pos_other_entry>:
1c010138:	000a80b3          	add	ra,s5,zero
1c01013c:	8282                	jr	t0

1c01013e <pos_set_slave_stack>:
1c01013e:	08096283          	p.elw	t0,128(s2)
1c010142:	00098f13          	mv	t5,s3
1c010146:	02af0eb3          	mul	t4,t5,a0
1c01014a:	005e8133          	add	sp,t4,t0
1c01014e:	8082                	ret

1c010150 <Image_L1>:
1c010150:	cfca d1d2 d0d0 d0d0 cfd0 d5d2 ddd9 e4e0     ................
1c010160:	ebe9 eded eded eded eaeb eaec e9eb e8e9     ................
1c010170:	e5e5 e2e2 e6e3 e0e0 e0df e4e1 e5e4 e2e4     ................
1c010180:	dfdc d8d9 d4d6 dad4 d7d5 d4d4 d6d2 dcd9     ................
1c010190:	dfdf e2dd e2df e4e0 e3e3 e6e3 e0de dadf     ................
1c0101a0:	dada d9d5 d5d4 d0cf cfd0 cbc9 c9c8 c0c9     ................
1c0101b0:	c0c0 bfbf c9c3 c6bc c8c7 c8c4 c3c7 bfc1     ................
1c0101c0:	c6c0 c0c3 c1c0 c9c6 cecb d3d0 d6d7 dbdb     ................
1c0101d0:	d1d1 d2d1 d0d4 d0ce cdcf d4d3 d9d7 e1dd     ................
1c0101e0:	ebe7 edec eeee eeee e7e9 e8e9 e7e6 e2e7     ................
1c0101f0:	e2e1 e2e1 e2e0 e0e1 e1e1 e6e3 e9e7 e7e7     ................
1c010200:	dfe1 dbde d6d6 d9d6 dad8 d0d2 d8d1 dbdc     ................
1c010210:	ddde e1e0 e2e4 e0e2 e1e2 e6e4 e4e3 e3dd     ................
1c010220:	dadf d9d9 d4d9 cfd4 ccd2 cbc7 c5c5 bec2     ................
1c010230:	bdbf bfbb bdc0 bec5 c4c3 c4c6 c2c2 bec2     ................
1c010240:	c2c0 bcc0 c2c0 cbc4 cdcd d5d2 d9d6 dfdc     ................
1c010250:	d4d4 d3d4 d4d4 cfd2 cdd0 d4d2 d8d7 e7df     ................
1c010260:	eee8 efef ecee edec e9ea e7e7 e6e4 e1e0     ................
1c010270:	e1de e1e2 e4e3 e2e2 e6e6 e4e9 e8e8 e6e8     ................
1c010280:	e6e6 dbe0 d9d8 d4d7 d5d4 d4d4 d5d3 dedc     ................
1c010290:	dfda e1df e4e3 e4e4 e3e1 e4e3 e6e4 e6e6     ................
1c0102a0:	e0e3 dada dad8 d4d8 c6cf bfc5 bec2 b5bc     ................
1c0102b0:	b9b4 b9b9 b5b3 b9b6 bfbc c1c5 c2c2 baba     ................
1c0102c0:	bab8 bcbd c2c0 c7c7 d3ce d8d4 e1da e2e0     ................
1c0102d0:	d6d7 d6d7 d4d4 d4d5 d3d5 d4d4 dbd7 e8df     ................
1c0102e0:	efec f1f1 edf0 e8eb e4e7 dfe4 dbe2 ded9     ................
1c0102f0:	e0de e3e2 e5e3 e8e6 e6e7 e9e9 eae8 e7ea     ................
1c010300:	e2e6 e0e2 d7db d5d5 d2d3 d5d4 d4d2 e0db     ................
1c010310:	dcdc e1df e6e3 e5e5 e3e2 e6e2 eae7 e5e7     ................
1c010320:	e2e3 dee0 d8dd d1d9 cbd1 bbc2 bcc2 b8b8     ................
1c010330:	afb2 b4af a8b3 aca7 b7b5 bbba bebb b9bd     ................
1c010340:	b6b8 b8b9 c1ba c9c6 d5cd d9d5 e2de e2e3     ................
1c010350:	d8d8 d8d7 d6d8 d5d5 d2d4 d3d4 dad6 eae3     ................
1c010360:	ecee f0f1 eced e3e9 e1e4 dddd dadc deda     ................
1c010370:	e1df e4e5 e7e8 ebeb e8ea e9ea e9ea e8e9     ................
1c010380:	dde3 dedf dbdc d7d4 d8d9 d7d5 d8d7 dadb     ................
1c010390:	d9d7 dfdb e5e3 e8e7 e2e6 e2e0 e5e6 e8e8     ................
1c0103a0:	e4e5 dee1 dbdf d6d9 d2d5 c2cc c2c1 bbc0     ................
1c0103b0:	b1b7 aba6 afab a0a8 aaa3 b3b0 b6b0 b4b4     ................
1c0103c0:	b3b1 b4b6 c0ba c9c3 d3cc ddb2 e3e0 e5e4     ................
1c0103d0:	d9da dada d9d5 d7d8 d7d8 d6d7 dcd5 e8e2     ................
1c0103e0:	eeec ecec e7ea e1e3 dddf dddb e1e0 e4e0     ................
1c0103f0:	e6e8 e7e8 e7e7 eae8 ebeb e9e8 e8eb e4e5     ................
1c010400:	e2e4 e2e2 dade dedc dede c7d9 d8c7 d8da     ................
1c010410:	d7d8 dfd9 e6e2 e8e7 e7ea e2e3 e4e3 e5e6     ................
1c010420:	e7e5 e2e5 e1e2 dce1 d4d9 ccd0 c1c6 bdbf     ................
1c010430:	a8b3 a5a9 a5a3 9a9d 969c a2a1 a79f a8a7     ................
1c010440:	b2b2 b7b0 baba cac2 d7cf ddda e6e2 e4e5     ................
1c010450:	dede dcdc dbdb dad5 d9db d5d6 dadb e7dd     ................
1c010460:	ebeb e6e9 e1e4 dbe0 d9d9 e6df e9e8 ecea     ................
1c010470:	e9ed ebea eaec e9ea e8e8 e9ea e5e6 e2e2     ................
1c010480:	e4e2 e2e2 e3e2 e1e2 e1e2 a9d9 d9bb d4da     ................
1c010490:	d9d5 e1dd e7e1 ece9 ecec e6e7 e5e5 e3e3     ................
1c0104a0:	e5e5 e4e4 e2e3 dde1 dadd d4d6 c9ca bec1     ................
1c0104b0:	b5bf a6b1 97a7 989f 9094 8f88 938c a09b     ................
1c0104c0:	aba3 b2ac b6b8 c9c2 d7d0 e0dc e4e1 e7e6     ................
1c0104d0:	e0e0 dedf dcdf dcda dcdc dad9 e1dd e6e4     ................
1c0104e0:	e2e3 dce1 dada dad9 e4dc ebe8 eeed ecee     ................
1c0104f0:	edee eded e9eb e4e7 e4e5 e4e1 e2e3 dddf     ................
1c010500:	e2e0 e3e2 e6e5 e5e6 e5e4 e1e3 dcdc d4d6     ................
1c010510:	d8d4 e0dd eae2 edea efef e5ea e2e2 e6e3     ................
1c010520:	e5e4 e4e4 e3e4 e2e0 dddf d6d9 cfd5 c1cf     ................
1c010530:	c0c2 aeb4 a9a8 969e 818b 7d84 797b 8b7c     ...........}{y|.
1c010540:	948e a5a5 b7b1 c5bb dad1 e0dd e5e5 e6e7     ................
1c010550:	e3e3 e0e0 e1e1 dddc dfdd dfdf e2e3 e2e4     ................
1c010560:	dbdf d5d6 dcd8 e2dd ece8 edeb f1ef eff1     ................
1c010570:	ebeb ebeb e4e9 e0e3 e0e4 dfe2 dfdf dedc     ................
1c010580:	e0df e3e5 e9e6 e9eb e6e8 dee6 d5d7 cfd3     ................
1c010590:	d3cc dfd5 e2dd efeb eff1 e5e8 dfe0 e1df     ................
1c0105a0:	e4e2 d4d1 e1e1 dfdf e1e1 dfe0 d7d9 cbd3     ................
1c0105b0:	bfc3 b3be a8b3 9b9c 8b91 7979 6a70 7567     ..........yypjgu
1c0105c0:	827a 9f92 b4ad c6bd d9d1 e2de e6e4 e5e5     z...............
1c0105d0:	e4e4 e4e1 e3e4 dedf e1de e1e2 e2e4 e1e3     ................
1c0105e0:	dcdd e2de e6e3 eceb f0f0 eff0 edee e9eb     ................
1c0105f0:	e4e5 e2e4 e1e3 e2e2 e2e1 e2e2 e0e3 dede     ................
1c010600:	e3df e4e2 ecea ebef e2e6 d6e0 d0cf cdcf     ................
1c010610:	d0cc dbd8 e6e7 f1eb f1f2 e7ed dae1 d9d6     ................
1c010620:	e1d8 dee3 dfe2 dada dbda dddf dcdc d5dd     ................
1c010630:	c9d0 c5c4 b2bb a7af 9599 7884 686f 5c5d     ...........xoh]\
1c010640:	6e62 8d81 aea1 c4ba d8d3 e0dd e3e4 e1e3     bn..............
1c010650:	e7e7 e6e4 e2e4 e0e3 e4e1 eae8 e8e9 e5e8     ................
1c010660:	e8e4 eae9 eeeb f1f1 eeef e7eb e5e6 e3e6     ................
1c010670:	dfe2 dcde e0e1 e2e1 e5e4 e5e5 e0e4 e0df     ................
1c010680:	e6e3 ece9 eaed e8e8 e6e6 d5df c7cc cbc6     ................
1c010690:	d2cb d7d5 e2e1 eae3 f1ee eaf1 d6df c8c9     ................
1c0106a0:	d9d1 dfdc e0e1 dfdf dede dbda dbdb dddc     ................
1c0106b0:	cfd5 c3ce c5c0 b3b7 9aad 8393 656f 575c     ............oe\W
1c0106c0:	5c52 7267 a58a c4b5 dbcd dfdd dede e3e3     R\gr............
1c0106d0:	e9e8 e7e8 e3e7 e1e1 e2e0 ecea eded ecec     ................
1c0106e0:	eeed efee f0f1 ebee e7e9 dde4 d9db d8d7     ................
1c0106f0:	d7d9 d9d7 dedc e5e5 e8e9 e6e8 e2e6 e6e1     ................
1c010700:	e9e6 eceb e7eb e6e5 e3e8 cdd9 c1c4 c4c4     ................
1c010710:	ccc5 d6d1 dcdb e4de eee8 eaeb d7e3 bbc8     ................
1c010720:	c5be d7cd e1de dbde d8db d5d7 d9d5 d7d6     ................
1c010730:	d2d6 cbce c2c8 bbc0 acb9 97a0 7081 5c62     .............pb\
1c010740:	5055 5f55 8e73 b8a4 d3c8 dedd e0df dfe0     UPU_s...........
1c010750:	e7e8 e7e7 e4e5 e3e2 e6e4 edea f1ef f1f2     ................
1c010760:	eeef ebec e7e8 dee3 dbde d2d6 cfcf cace     ................
1c010770:	d0d0 d9d6 e2dd e9ea eaea ebea e5e8 e6e7     ................
1c010780:	e5e5 e8e9 e6e9 e3e4 dee3 c5d1 c0c0 c2c2     ................
1c010790:	c8c1 d1ca d9d5 e5df ede7 e9ec d6e1 b8c7     ................
1c0107a0:	adaf c8b9 d4ce d9d7 d7dd d2d2 ccd0 cecf     ................
1c0107b0:	ccd0 cbcd c9c8 c3c2 bdbc a5ac 8791 697a     ..............zi
1c0107c0:	5560 4e50 715c a889 d4c1 dad4 dcda dcde     `UPN\q..........
1c0107d0:	e7e7 e5e6 e4e3 e0e2 e8e3 ece9 efee eced     ................
1c0107e0:	e7e9 e1e4 dadf cdd2 c7ca c6c5 d4cf dad6     ................
1c0107f0:	e1de e5e0 e8e3 eaec edec ebec e6e8 e2e5     ................
1c010800:	e0dd e6e5 e4e4 e0e3 d8dd c4d1 bebd babd     ................
1c010810:	c2bd ccc7 d0cc ddd6 e5e2 e6e5 d8e0 abc5     ................
1c010820:	9197 b1a4 c6bc ccca d1d1 c3c8 c0bc c1c0     ................
1c010830:	c5c1 c5c6 c6c3 c6c1 bdc6 b0b6 9aa7 858c     ................
1c010840:	6e78 545e 574f 8c68 c4af d2cd d5d5 d7d7     xn^TOWh.........
1c010850:	e4e4 e2e4 e0e1 dedc e4e0 e9e8 e5e6 e0e5     ................
1c010860:	d9da cdd4 c2c7 cac3 d7d0 ddda e4e2 e6e6     ................
1c010870:	ecea eaeb eaea ebed eded e9ed e7e7 e3e3     ................
1c010880:	dde1 e2de e3e2 dfe3 cfd7 bcc1 b9bb b1b4     ................
1c010890:	b3ac b9b2 c4bc d3cd dfdc e2e2 d7dc aec7     ................
1c0108a0:	7f94 9382 afa8 b5af bab7 aeb6 acae aea8     ................
1c0108b0:	b3ac b6b1 b6b3 b7b8 b7b8 b0b1 abb0 919f     ................
1c0108c0:	838d 6c74 5a63 6d5b af8c cac2 d2cf d0d1     ..tlcZ[m........
1c0108d0:	e0e0 dfe0 dbdc d8d8 dfdc dee0 dade cfd5     ................
1c0108e0:	c4c7 cac3 dad4 e1de e6e6 e8e7 eae9 eaec     ................
1c0108f0:	eeec eced eaec eaea efee ebeb e5e7 e2e4     ................
1c010900:	dfe1 dfe2 e2e2 dadd cfd6 c0c5 bbba b3ba     ................
1c010910:	a7aa a2a7 aba7 c2bc dbce dede d3db b6c8     ................
1c010920:	758d 766e 9684 9ea4 9ba0 9499 9a97 9495     .unv............
1c010930:	9896 9592 9c97 9d9b a39e aba7 aaa9 9aa7     ................
1c010940:	8492 8183 7072 665e 9878 c4b8 cecb c7cf     ....rp^fx.......
1c010950:	dada d9da d2d3 d2d3 d8d4 d5d7 d1d4 cfce     ................
1c010960:	dad2 e3dd e9e8 eaea ecec edec eeec eeed     ................
1c010970:	eeed eeed eced eae9 ecec e7ea e3e5 e3e3     ................
1c010980:	e2e3 dddd dcdd d8db cdd1 bfc8 b7ba aeb6     ................
1c010990:	99a2 9795 9693 a99d cab8 d6d1 d1d6 b3c6     ................
1c0109a0:	7497 6461 7468 8477 7d82 747b 7c74 7f7b     .tadhtw..}{tt|{.
1c0109b0:	7e80 8280 8b86 8587 8887 918a 9593 9597     .~..............
1c0109c0:	8d8d 8783 7d7e 6f78 8f76 bfab c1c3 c5c5     ....~}xov.......
1c0109d0:	d7d6 d4d5 d0d0 d3d1 d6d6 dad6 e0de e0e0     ................
1c0109e0:	e9e4 ecec efec eeee f0ef f1f0 edef eded     ................
1c0109f0:	eced ebec ecec ebeb ebeb e4ea e4e3 e0e0     ................
1c010a00:	dfe1 dddd dada d1d6 c9ce c2c1 b9b9 b0b1     ................
1c010a10:	94a0 838a 7f81 9089 a696 c7bb c7cb acbb     ................
1c010a20:	7e97 545f 5e5a 6562 6466 595f 5058 6358     .~_TZ^befd_YXPXc
1c010a30:	706b 7670 7a76 7a7b 7578 7175 7a76 8480     kppvvz{zxuuqvz..
1c010a40:	8886 8081 7e82 757d 8977 b5a5 bebc bfc1     .....~}uw.......
1c010a50:	d7d5 d5d5 d4d5 d9d8 dfdc e2e1 e8e5 ebe8     ................
1c010a60:	eeed f1f0 f0f2 f0f0 f3f2 f1f2 eff0 edee     ................
1c010a70:	ecec ebec ecea eaeb e8e8 e5ea e2e3 dfe0     ................
1c010a80:	dddd dbdd d9d8 d3d5 ccd1 c0c7 b8be a8b1     ................
1c010a90:	949b 7c88 6f74 726b 8573 ac9b b9b7 a2b1     ...|tokrs.......
1c010aa0:	748f 4e5d 4d4c 514f 5552 4347 3d3e 463e     .t]NLMOQRUGC>=>F
1c010ab0:	605a 5f63 6660 6160 6263 6a66 6c6b 6a6c     Z`c_`f`acbfjkllj
1c010ac0:	726f 7775 7e7d 7b7b 8a7e a395 b3ac b9b7     oruw}~{{~.......
1c010ad0:	d6d4 d8d5 dcda e2dc e5e4 e6e3 eaea f1ed     ................
1c010ae0:	f1f1 f2f1 f3f3 f3f3 f4f2 f3f4 f0f3 edee     ................
1c010af0:	eded ebef ebe9 e6e7 e4e4 e5e7 e1e2 dedd     ................
1c010b00:	dfde d9dc d8da d3d2 cdd2 c5c9 bbc1 aab3     ................
1c010b10:	949c 7d88 6b72 656c 6868 8775 a9a0 98a2     ...}rklehhu.....
1c010b20:	7288 4a59 4042 4042 3c3d 3538 2e2d 3731     .rYJB@B@=<85-.17
1c010b30:	483f 4a4f 4b4b 4f4d 5351 5a54 605e 6467     ?HOJKKMOQSTZ^`gd
1c010b40:	6062 6462 6e6a 736e 847b 948a 9f9d b0a8     b`bdjnns{.......
1c010b50:	d1ca d2d4 dbd7 e1dd e5e4 e7e3 edea f1ef     ................
1c010b60:	f0ef f3f3 f3f2 f1f1 f3f3 f2f3 f2f3 efef     ................
1c010b70:	edef ecec eaeb e5e8 e1e0 e5e4 dce2 ddde     ................
1c010b80:	dcdc dde0 d8db d3d6 ced1 c1cc bebc abb4     ................
1c010b90:	94a0 7486 6b6d 6161 5c61 6c5f 8d7c 8f93     ...tmkaaa\_l|...
1c010ba0:	7387 465c 3a3c 3739 2e32 292d 2624 2d29     .s\F<:972.-)$&)-
1c010bb0:	3330 3838 3c38 3e3b 4543 514b 5654 5b58     03888<;>CEKQTVX[
1c010bc0:	5e5a 5d5f 5a59 625f 716c 8678 908a 9b98     Z^_]YZ_blqx.....
1c010bd0:	c9d5 c5c3 d2cb dbd6 e1e1 e9e5 ecea edec     ................
1c010be0:	eeee f2f1 f2f2 f3f3 f2f4 f2f2 f2f3 f1f1     ................
1c010bf0:	edf0 ebeb e8ec e4e3 e3e5 e2e4 dfe1 e0e1     ................
1c010c00:	e2df dce2 dadb d8d9 d2d3 cacd bcc3 aab3     ................
1c010c10:	8e9e 7481 5f6b 5e60 565b 5556 6b5c 7d7a     ...tk_`^[VVU\kz}
1c010c20:	6e78 4657 3239 2f32 272c 2325 2021 2523     xnWF922/,'%#! #%
1c010c30:	2726 2c28 2e2b 3834 413f 4643 4c4a 5553     &'(,+.48?ACFJLSU
1c010c40:	5b58 5d5d 5c5c 605c 6463 7067 7771 8482     X[]]\\\`cdgpqw..
1c010c50:	e5e4 dce4 c9d2 d2ca dcd7 e5e1 ebe6 ebeb     ................
1c010c60:	efed f2f3 f2f2 f3f2 f3f3 f3f4 f2f2 f1f0     ................
1c010c70:	edf0 ebeb e9ec e2e3 e4e6 e3e4 e2e2 e2e2     ................
1c010c80:	e4e2 dfe3 dadd dad9 d5d9 cccf bec6 a9b2     ................
1c010c90:	889a 6c76 5a5f 555b 4c4f 4b49 534f 605f     ..vl_Z[UOLIKOS_`
1c010ca0:	616a 4755 313a 292e 2326 1f21 1d1e 1f1e     jaUG:1.)&#!.....
1c010cb0:	2220 2121 2724 312c 3733 433d 4944 504d      "!!$',137=CDIMP
1c010cc0:	5854 5e59 5f61 6561 6263 6762 6c67 7570     TXY^a_aecbbgglpu
1c010cd0:	e4e3 e5e4 e5e5 d5df c7cb d7d0 e6e0 e9e6     ................
1c010ce0:	eded f1ee f2f2 f2f2 f3f3 f5f3 f3f4 f1f1     ................
1c010cf0:	eced e9ea e9ec e1e5 e6e6 e5e5 e4e7 e4e3     ................
1c010d00:	e4e6 e0e2 dcd9 dedd dbdd d1d8 c1c9 a7b6     ................
1c010d10:	8f98 6d7c 585d 474a 3d44 3d3d 4441 4d4a     ..|m]XJGD===ADJM
1c010d20:	5556 4650 3037 262b 2122 1d1e 1d1d 1a1a     VUPF70+&"!......
1c010d30:	1a1b 1c1a 211f 2a25 332f 3c38 403d 4946     .....!%*/38<=@FI
1c010d40:	524b 5552 5958 5b57 6060 6460 6564 6b69     KRRUXYW[```ddeik
1c010d50:	e3e3 e3e3 e3e3 e3e3 dfe3 cad4 d9d1 e3df     ................
1c010d60:	eae7 efeb f1f1 f2f1 f2f2 f3f3 f2f3 f1f2     ................
1c010d70:	ecec ecea e9ec e0e1 e6e3 e7e7 e5e5 e5e4     ................
1c010d80:	e3e6 dfe2 e0de dde1 dbde d0d8 c9cc c2c8     ................
1c010d90:	a8b8 8fa0 6275 4a4f 3b41 3638 3b35 4741     ....ubOJA;865;AG
1c010da0:	4946 4047 2f36 242a 2021 1c1c 1b1b 1719     FIG@6/*$! ......
1c010db0:	1918 1a19 1f1b 2522 2c28 3631 3c3a 433d     ......"%(,16:<=C
1c010dc0:	4a45 4f4d 5551 5352 5655 5d5b 5b5d 6664     EJMOQURSUV[]][df
1c010dd0:	e3e3 e2e3 e3e3 e3e3 e3e3 e3e3 d2dc d7d0     ................
1c010de0:	e4e0 eae8 eeec f1f1 f2f2 f2f2 f3f2 f1f1     ................
1c010df0:	eded eceb e8ec dde2 e5e3 e7e9 e5e4 e4e5     ................
1c010e00:	e3e6 e2e4 e1e2 e0e1 dcdf d8d9 d7da c2d2     ................
1c010e10:	adb9 9aa3 7f8d 556b 3646 3232 3030 3936     ......kUF6220069
1c010e20:	403f 3a3d 2d30 2327 1e1f 1c1f 1c1c 1718     ?@=:0-'#........
1c010e30:	1818 1918 1b1b 211e 2524 2f29 3533 3a38     .......!$%)/358:
1c010e40:	413e 4543 4944 4e4a 4f4d 534e 5653 5c58     >ACEDIJNMONSSVX\
1c010e50:	e3e3 e2e3 e2e2 e2e2 e3e2 e4e4 e3e3 d6e1     ................
1c010e60:	d4cf e3dd ebe8 edec f3ee f1f1 f1f2 f1f1     ................
1c010e70:	eef0 eaec e7e9 dde1 e5e2 e8e9 e6e6 e7e4     ................
1c010e80:	e7e5 e3e5 e3e4 e2e1 e2e2 dce1 d6da cad1     ................
1c010e90:	b8c2 a2ae 8294 5970 3d47 3033 292b 312d     ......pYG=30+)-1
1c010ea0:	3534 3337 292c 2224 1e1f 1d1c 191b 1719     4573,)$"........
1c010eb0:	1616 1818 1818 1c1b 231f 2925 2e2d 3532     .........#%)-.25
1c010ec0:	3937 3b38 403d 3f42 4342 4643 4a45 4d4d     798;=@B?BCCFEJMM
1c010ed0:	e3e2 e2e3 e2e3 e2e2 e2e2 e2e2 e3e3 e2e3     ................
1c010ee0:	d9e0 d2d2 e2da eae8 eceb efef eff0 f0ef     ................
1c010ef0:	edef eaec e7e9 dae3 e7e2 e5e7 e7e6 e6e7     ................
1c010f00:	e4e6 e4e3 e4e4 e6e5 e5e6 dfe1 dbde d1d8     ................
1c010f10:	b6c4 9aac 808c 566e 3947 2f32 272b 2927     ......nVG92/+'')
1c010f20:	2d2b 282a 2628 1f24 1d1d 1c1b 1b1b 1618     +-*((&$.........
1c010f30:	1415 1516 1516 1917 1f1b 2421 2926 2e2d     ..........!$&)-.
1c010f40:	3130 3432 3535 3837 3c39 3c39 3c3f 3d3c     012455789<9<?<<=
1c010f50:	e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2     ................
1c010f60:	e2e2 dde2 d3d6 e0d8 e7e5 ecea eeed eff0     ................
1c010f70:	ecef ebec e5e9 dbe2 e5e2 e8e8 e8e7 e7e7     ................
1c010f80:	e3e7 e4e4 e5e4 e6e6 e0df e2e3 dce1 cad4     ................
1c010f90:	abbe 7e97 626e 4c58 3844 2b31 2527 2324     ...~nbXLD81+'%$#
1c010fa0:	2423 2524 2222 1e20 1c1b 1c1d 1d1c 1618     #$$%"" .........
1c010fb0:	1416 1514 1514 1714 1a19 1f1b 2321 2825     ............!#%(
1c010fc0:	2928 2a2a 2c2d 2f2d 3231 3334 3333 3a34     ()**-,-/1243334:
1c010fd0:	e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2     ................
1c010fe0:	e2e2 e2e2 e1e1 cfd8 dfd5 e6e4 eae8 edea     ................
1c010ff0:	ecec eaec e6e8 d8e2 e9e1 e8e9 e8e8 e5e9     ................
1c011000:	e4e5 e1e3 e9e2 e2e7 e8e6 dde4 d3d6 c2ce     ................
1c011010:	9fb1 6787 4452 363c 3033 292d 2527 2121     ...gRD<630-)'%!!
1c011020:	211f 201f 1f1c 1d1e 1f1c 1e1d 191d 171a     .!. ............
1c011030:	1617 1414 1214 1513 1616 1b17 1f1d 2320     .............. #
1c011040:	2524 2625 2929 2b2a 2c2c 312e 9454 d6c2     $%%&))*+,,.1T...
1c011050:	e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2     ................
1c011060:	e2e2 e2e2 e2e2 e2e2 d3dc d8d3 e3e1 e7e6     ................
1c011070:	eae9 eaeb e6e8 d8e2 e9e2 e8e8 e9e8 e5e8     ................
1c011080:	e4e5 e7e4 e5e7 e8e3 e5e7 dbdf d1d4 c3ca     ................
1c011090:	a4bb 6a8d 3348 2d2e 282b 2629 2425 1c21     ...jH3.-+()&%$!.
1c0110a0:	1b1a 1c1c 1a1b 1b1c 1d1b 201e 1c1e 181a     ........... ....
1c0110b0:	1216 1212 1213 1310 1615 1915 1d1a 211e     ...............!
1c0110c0:	2322 2423 2727 2d29 7136 d2b5 d8d6 d6d6     "##$'')-6q......
1c0110d0:	e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2     ................
1c0110e0:	e2e2 e2e2 e2e2 e2e3 e2e2 d8df d7d2 e1dd     ................
1c0110f0:	e4e3 e8e8 e8e8 dbe4 e8e4 e9ea e8ea e4e6     ................
1c011100:	e7e6 e7e6 e4e6 e6e7 e5e5 dde2 cfd6 c0ca     ................
1c011110:	b2ba 80a0 3856 292e 2726 2626 2123 1e20     ....V8.)&'&&#! .
1c011120:	181b 1818 181a 1919 1b1a 201f 1b1e 181b     ........... ....
1c011130:	1418 1313 1313 1413 1615 1817 1c19 211f     ...............!
1c011140:	2324 2525 3c2a c07f d7d6 d7d7 d4d7 d5d4     $#%%*<..........
1c011150:	e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2     ................
1c011160:	e2e2 e3e2 e2e1 e2e2 e2e2 e2e2 dce1 d0d7     ................
1c011170:	dad5 e1dd e3e6 dce2 e8e5 e9e9 e6e9 e7e6     ................
1c011180:	e6e7 e6e7 e9e8 e4e6 e3e2 d7da d2d3 c1c8     ................
1c011190:	a5b6 638a 3449 282c 2627 2423 2124 1c1f     ...cI4,('&#$$!..
1c0111a0:	191c 1516 1816 1a18 1b1a 221e 1d1f 191a     ..........."....
1c0111b0:	161a 1414 1514 1614 1717 1a19 211d 2221     .............!!"
1c0111c0:	2a24 9246 d6c6 d8d8 d6d7 d4d5 d4d4 d4d4     $*F.............
1c0111d0:	e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2     ................
1c0111e0:	e2e2 e3e2 e2e1 e2e2 e2e2 e2e2 e2e3 dfe2     ................
1c0111f0:	d1da d5d1 e1dc dce0 e9e4 e9e9 e7e7 e7e7     ................
1c011200:	e5e7 e9e6 e3e7 e3e4 e1e0 94db 536b 5058     ............kSXP
1c011210:	4346 4740 3f47 3839 2833 2422 211f 1d20     FC@GG?983("$.! .
1c011220:	171c 1517 1312 1816 1a1a 211e 1e21 1a1c     ...........!!...
1c011230:	1518 1515 1615 1917 1b1b 1f1c 2521 6432     ............!%2d
1c011240:	ceaa d9d8 d7d8 d6d7 d5d5 d3d3 d3d3 d1d2     ................
1c011250:	e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2     ................
1c011260:	e2e2 e2e1 e2e2 e2e2 e2e2 e2e2 e2e2 e0e2     ................
1c011270:	e1e0 d1dd d4cb ddd9 e8e7 e7e8 e8e7 e7e8     ................
1c011280:	e7e6 e8e8 e4e5 e3e1 adc6 a7a6 9a99 8b8d     ................
1c011290:	6d74 8171 4770 2537 252c 2d2d 2123 1f1e     tmq.pG7%,%--#!..
1c0112a0:	191c 1417 1414 1714 1b18 211d 1d21 191c     ...........!!...
1c0112b0:	1518 1817 1b1a 1e1c 2120 5329 c59a d9da     ........ !)S....
1c0112c0:	d8d8 d7d8 d6d6 d4d5 d3d3 d2d3 d2d3 d1d2     ................
1c0112d0:	e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2 e2e2     ................
1c0112e0:	e2e2 e3e3 e2e2 e2e2 e2e2 e1e2 e1e1 e1e1     ................
1c0112f0:	e2e2 e2e2 d6dd ddcc eae6 e9e9 e8ea e8e6     ................
1c011300:	e7ea e6e7 e2e6 ced7 cfd1 c5cc c4ce aab8     ................
1c011310:	94a1 9291 7583 2f4e 2622 2523 2e26 1c1d     .....uN/"&#%&...
1c011320:	1a1f 1417 0f0f 1515 1a17 211d 1e24 1b1d     ...........!$...
1c011330:	191a 1b19 211e 3c23 ba77 d9d4 d9da d8d9     .....!#<w.......
1c011340:	d7d8 d6d6 d4d4 d4d4 d4d3 d4d3 d3d3 d2d3     ................
1c011350:	e2e2 e2e2 e2e2 e2e2 e2e2 e1e1 e2e2 e0e3     ................
1c011360:	e2e2 e2e2 e2e2 e1e2 e1e1 e0e1 e0e0 e1e0     ................
1c011370:	e1e2 e0e1 e0e1 dedf e9e7 e8ea e8e7 e9e8     ................
1c011380:	e7e8 e4e9 cfe2 dbd9 d7dc d8d9 dddc d1d2     ................
1c011390:	babf a2ab 96a2 456f 2429 1f23 231e 242c     ......oE)$#..#,$
1c0113a0:	1c1c 1718 0f14 1714 1a17 211f 2026 1d1f     ...........!& ..
1c0113b0:	1f1c 2b1f a45d d7ce d9da d8d8 d7d7 d6d6     ...+]...........
1c0113c0:	d5d6 d4d4 d4d4 d3d3 d3d3 d3d2 d2d2 d1d2     ................
1c0113d0:	e2e2 e2e2 e2e2 e2e3 e2e2 e2e2 e1e2 e0e2     ................
1c0113e0:	e2e2 e2e1 e2e2 e1e1 e0e0 e0e0 e0e0 e1e0     ................
1c0113f0:	e0e1 e0e0 e0e0 dedf e9e8 e9ea e9e8 e9e8     ................
1c011400:	e8e8 e1e2 ddd2 e5e4 e3e3 e7e6 e8e6 e2e1     ................
1c011410:	d0d4 c4d2 a4b5 658a 2a51 242a 1b1e 2620     .......eQ**$.. &
1c011420:	1d25 181a 1417 1614 1c19 2320 2328 2322     %......... #(#"#
1c011430:	7f33 d7bf dadb dada d8d8 d6d7 d5d6 d4d5     3...............
1c011440:	d3d4 d3d4 d3d3 d3d3 d2d3 d3d3 d3d3 d2d3     ................
1c011450:	e2e3 e2e2 e2e2 e2e2 e2e2 e1e1 e2e2 e2e2     ................
1c011460:	e2e2 e2e2 e2e2 e0e1 e0e0 e0e0 e0e0 e0e0     ................
1c011470:	e0e0 e0e0 e0e0 e0de ece9 ebea e9e9 eae9     ................
1c011480:	e3e8 d3dc e3dd e7eb e9e6 ece6 efeb e9ef     ................
1c011490:	dce6 cdd0 b2ba 8297 4964 303a 2025 1f1e     ........dI:0% ..
1c0114a0:	2623 171d 171a 1614 1b17 241f 2b2d c173     #&.........$-+s.
1c0114b0:	dcda d9db d7d8 d7d8 d6d6 d5d5 d4d5 d4d4     ................
1c0114c0:	d4d4 d3d3 d3d3 d3d3 d3d3 d2d3 d1d1 d0d2     ................
1c0114d0:	e2e1 e2e2 e2e2 e1e2 e2e1 e1e2 e2e2 e2e2     ................
1c0114e0:	e2e2 e0e2 e1e0 e0e0 e0e0 e0e0 e0e0 dfe0     ................
1c0114f0:	e0e0 e0e0 dfe0 e0dd ebe8 eaea ebea e3e9     ................
1c011500:	d9e4 dfd9 e7e6 e8e7 ece8 ebed f2ef e9ed     ................
1c011510:	dfe7 c6d3 a4c3 8d9a 5e75 4c5c 232a 1c1f     ........u^\L*#..
1c011520:	261a 2029 1b1b 1717 1a18 251f d97a dcda     .&) .......%z...
1c011530:	d8da d7d8 d6d6 d6d6 d5d6 d4d4 d4d4 d4d4     ................
1c011540:	d3d4 d3d3 d3d3 d3d3 d3d3 d2d2 d3d1 d2d3     ................
1c011550:	e2e1 e2e2 e1e0 e2e2 e2e1 e1e1 e2e2 e2e2     ................
1c011560:	e0e2 e0e2 e1e0 e0e0 e0e0 e0e0 e0e0 e0e0     ................
1c011570:	e0e0 e0e0 dfdf e1df ebe8 eaeb e9eb e0e6     ................
1c011580:	dad4 dfdc e5e6 e6e5 e4e9 e8e6 e9e8 ebeb     ................
1c011590:	e2e8 ced4 a6bf 8c9f 7b84 5259 2638 1d1e     .........{YR8&..
1c0115a0:	211e 2f27 1d22 191b 1c1a 2722 dda0 dadb     .!'/"....."'....
1c0115b0:	d8d8 d6d7 d5d6 d6d6 d4d5 d4d4 d4d4 d4d4     ................
1c0115c0:	d3d4 d3d3 d3d3 d3d3 d3d3 d3d2 d2d2 d2d2     ................
1c0115d0:	e2e1 e2e2 e2e1 e1e1 e2e2 e2e2 e2e2 e2e2     ................
1c0115e0:	e1e2 e0e2 e0e0 e0e0 e0e0 e0e0 e0e0 e0e0     ................
1c0115f0:	e0e0 dfe0 dedf e0df ece7 eeeb e7ec c9db     ................
1c011600:	ddd8 e4e0 e1e2 e2de dfdf dfda d9dd eae5     ................
1c011610:	deeb b7c4 9fa8 9690 6c82 4359 273a 1d21     .........lYC:'!.
1c011620:	1f1c 2723 272b 1b1d 1c1d 2722 dca1 d8db     ..#'+'...."'....
1c011630:	d7d7 d6d6 d6d5 d5d5 d4d4 d4d4 d4d4 d4d4     ................
1c011640:	d3d4 d3d3 d4d3 d3d3 d3d3 d3d2 d2d1 d1d2     ................
1c011650:	e1e1 e2e1 e2e2 e2e2 e2e2 e2e2 e2e2 e0e0     ................
1c011660:	e1e0 e0e0 e0e0 e0e0 e0e0 e0e0 e0e0 dfe0     ................
1c011670:	e0e0 e0e0 dedf e2dc eceb ecec cde8 d8cd     ................
1c011680:	dfdc dce2 dbde d8df d3d8 c5c8 bcc4 b2af     ................
1c011690:	cbd0 a4c0 8389 7f82 5169 3743 2a30 2126     ........iQC70*&!
1c0116a0:	201d 2820 2a27 212b 2020 2a22 da9b d8d9     .  ('*+!  "*....
1c0116b0:	d6d7 d5d6 d5d5 d4d4 d4d5 d4d4 d4d4 d4d4     ................
1c0116c0:	d3d4 d3d3 d3d3 d3d3 d3d3 d2d3 d1d1 d0d1     ................
1c0116d0:	e2e1 e2e2 e2e2 e0e2 e1e0 e1e0 e1e1 e0e1     ................
1c0116e0:	e0e0 e0e0 e0e0 e0e0 e0e0 dfe0 e0e0 dfdf     ................
1c0116f0:	e0e0 e0e0 dfdf e2dd ebea eaee cdcb d7d3     ................
1c011700:	e2dd dfe2 d7db d9d8 d7d8 d1d5 b2bd 728c     ...............r
1c011710:	6d60 606f 5a5b 434c 343c 2b34 252b 2727     `mo`[ZLC<44++%''
1c011720:	2021 2322 2927 3029 2321 2924 db9e d7d9     ! "#'))0!#$)....
1c011730:	d6d6 d5d5 d4d4 d5d4 d4d4 d4d4 d4d4 d4d4     ................
1c011740:	d4d4 d3d3 d3d3 d3d3 d1d1 d1d2 d1d1 d1d1     ................
1c011750:	e2e2 e2e2 e2e2 e0e0 e2e2 e2e2 e0e0 e0e0     ................
1c011760:	e0e0 e0e0 e0e0 e0e0 e0e0 e0e0 dfe1 e0e0     ................
1c011770:	dee0 e0de dfdf e4db edeb cee1 d7d3 dcd9     ................
1c011780:	e3e1 dde1 dcdd dddc dad7 ccd5 abc1 5e89     ...............^
1c011790:	3940 373d 393d 2a2f 1d25 201d 2320 2728     @9=7=9/*%..  #('
1c0117a0:	242a 2322 2925 2a2a 2632 2a26 d991 d8d9     *$"#%)**2&&*....
1c0117b0:	d6d6 d5d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
1c0117c0:	d3d4 d3d3 d2d3 d3d2 d2d2 d1d1 d1d1 d1d0     ................
1c0117d0:	e1e0 e2e0 e1e2 e1e1 e0e0 e1e0 e1e0 e0e0     ................
1c0117e0:	e0e0 e0e0 e0e1 e0e0 e0e0 e0e0 e0e0 e0df     ................
1c0117f0:	dee0 e0de dedf e6dc efec d6d2 dcd8 e1e1     ................
1c011800:	e2e4 e2e3 e3e1 e0e0 dcde c6d5 bfbe a9ba     ................
1c011810:	979f 988d 8199 4a75 2631 1820 1d19 2b25     ......uJ1& ...%+
1c011820:	3431 2126 2a25 2d2b 312a 2b25 db89 d7d9     14&!%*+-*1%+....
1c011830:	d5d7 d4d5 d4d4 d4d4 d4d4 d4d4 d4d4 d3d5     ................
1c011840:	d3d3 d3d3 d1d3 d1d2 d1d1 d1d1 d1d1 d1d3     ................
1c011850:	e0e0 e2e0 e1e1 e0e0 e0e0 e0e0 e0e0 e0e0     ................
1c011860:	e0e0 e0e0 e0e0 e0e0 dfe0 dfe0 dfe0 e0df     ................
1c011870:	dfdf e0df dedf e8dc d5ee dcd8 e4de e6e4     ................
1c011880:	e5e6 dee3 e2dc e3e3 e0e3 d0d6 d1d2 c5cb     ................
1c011890:	adc2 b1b6 a0a4 6c85 2c4b 1e21 1717 2e21     .......lK,!...!.
1c0118a0:	3937 2336 2622 2e2a 2b2b 2934 da7e d7d9     796#"&*.++4)~...
1c0118b0:	d6d6 d4d6 d4d4 d4d4 d4d4 d4d4 d4d5 d5d4     ................
1c0118c0:	d3d3 d4d3 d2d2 d2d3 d1d1 d1d1 d0d1 d0d1     ................
1c0118d0:	e1e0 e0e0 e0e0 e0e0 e0e0 e0e0 e0e0 e0e0     ................
1c0118e0:	e0e0 e1e0 e0e0 e0e0 dfe1 e0e0 dfdf e0df     ................
1c0118f0:	dede e0de ddde e8db dcda e1e0 e4e2 e7e8     ................
1c011900:	e6e9 ced6 e2cf eeea e2e9 ebda dff8 d9e9     ................
1c011910:	bdbf cbcd b0c4 718b 4e5d 162c 1617 2e1d     .......q]N,.....
1c011920:	4641 273a 2322 2c25 2b31 342c d970 d7d8     AF:'"#%,1+,4p...
1c011930:	d6d6 d4d6 d4d4 d4d4 d4d4 d4d4 d4d4 d3d3     ................
1c011940:	d3d3 d3d3 d2d3 d2d2 d1d1 d1d1 d1d2 d0d1     ................
1c011950:	e0e0 e0e0 e0e0 e0e0 e0e0 e0e0 e0e0 e0e1     ................
1c011960:	e0e0 e0e0 e0e0 e0e0 e0e0 dfe0 dedf dfde     ................
1c011970:	dedf e0e0 dcde dde0 e0d9 e3e2 e9e6 ebea     ................
1c011980:	e4ea b5d7 a38a ebdd e1d8 d0d1 bbc0 acae     ................
1c011990:	8f9c 6880 465d 313a 1d28 0f17 0f0a 2316     ...h]F:1(......#
1c0119a0:	4640 2633 2221 2724 2f2e 312d d861 d7d9     @F3&!"$'./-1a...
1c0119b0:	d5d6 d4d5 d4d4 d4d4 d4d4 d4d4 d3d4 d3d3     ................
1c0119c0:	d3d3 d1d4 d1d2 d1d3 d1d1 d2d1 d1d0 d0d1     ................
1c0119d0:	e0e0 e0e0 e0e0 e0e0 e0e0 e0e0 e1e0 e0e0     ................
1c0119e0:	e0e0 e0e0 e0e0 e0e0 e0e0 dfdf dfe0 e0df     ................
1c0119f0:	dfe0 e0df dddf dddb e5e4 e7e6 e9e6 ecea     ................
1c011a00:	e7e9 c7e0 487d 563c 5d69 3e51 2329 1f1c     ....}H<Vi]Q>)#..
1c011a10:	3032 2524 1622 0708 0404 0607 0104 1804     20$%"...........
1c011a20:	4439 2233 2121 2623 2d2b 2f32 d336 d8d9     9D3"!!#&+-2/6...
1c011a30:	d6d7 d4d5 d4d4 d4d4 d4d4 d4d4 d3d3 d3d3     ................
1c011a40:	d3d3 d2d3 d1d2 d1d1 d1d1 d1d1 d0d0 d0d0     ................
1c011a50:	e0e0 e0e0 e0e0 e0e0 e0e0 e0e0 e0e0 e0e0     ................
1c011a60:	dfe0 e0e0 e0e0 e0e0 e0e0 dfe0 dede dede     ................
1c011a70:	e0df dfe0 d7de e0d8 e6e5 e5e6 e7e8 eaea     ................
1c011a80:	e7eb d7e5 b0c2 ddc5 badf 838e 8c89 777b     ..............{w
1c011a90:	807e 3f62 2a2d 3034 2129 2321 1d22 2f1b     ~.b?-*40)!!#"../
1c011aa0:	3b41 1e36 1e1e 2321 2c26 312f 7331 d8da     A;6...!#&,/11s..
1c011ab0:	d6d7 d4d6 d4d4 d4d4 d3d4 d3d3 d3d3 d3d3     ................
1c011ac0:	d3d3 d2d2 d1d1 d1d1 d1d1 d1d1 cfd0 d0d0     ................
1c011ad0:	e0e0 e0e0 e0e0 e0e0 dfe0 e0e0 e0e0 dfe0     ................
1c011ae0:	dfdf dfdf dfdf dfde dede dfdf dede dfde     ................
1c011af0:	dfdf dfdf dadc e3e2 e7e8 e7e6 e8e8 eaeb     ................
1c011b00:	ebe9 e7e9 d9db e8db f0ec dfed b9cf ceb6     ................
1c011b10:	dbdb d8e5 85bf 4659 3750 1f2b 1e1c 4b31     ......YFP7+...1K
1c011b20:	3c44 2730 1d1d 2220 2a25 332d 3831 d8d5     D<0'.. "%*-318..
1c011b30:	d6d7 d4d5 d4d4 d3d3 d3d3 d2d3 d3d3 d3d2     ................
1c011b40:	d3d3 d1d3 d1d1 d1d1 d2d1 d0d1 cfcf d0cf     ................
1c011b50:	e0e0 e0e0 e0e0 dfdf e0df dfdf e0e0 e0df     ................
1c011b60:	e0e0 dfe0 dee0 dedf dede dede dede dfde     ................
1c011b70:	dedf dede dfdd e5e2 e8e5 e7e7 e9e8 ebe9     ................
1c011b80:	efee eeef e1ec e7e5 efe3 f3f1 f2f2 eded     ................
1c011b90:	d0d4 e5df d5e8 aac5 4881 262d 3121 4040     .........H-&!1@@
1c011ba0:	3d3c 2b34 2121 2220 2822 2e2c 3631 daa2     <=4+!! ""(,.16..
1c011bb0:	d6d8 d4d5 d3d4 d3d3 d3d3 d3d3 d3d3 d2d3     ................
1c011bc0:	d2d2 d1d1 d1d2 d2d1 d1d1 d0d1 d0d0 d0d0     ................
1c011bd0:	e0df e0df dfdf dfdf dfdf dfde dfde dfdf     ................
1c011be0:	dfdf dedf dede dede dede dede dede dede     ................
1c011bf0:	dede dede dede e7e2 e7e8 e7e6 e9e4 ece9     ................
1c011c00:	f1ef eef1 e9e8 e3ed ede8 edea eeeb d6e9     ................
1c011c10:	adbc c3d6 c3df 84ad 4161 2834 3626 403e     ........aA4(&6>@
1c011c20:	3e41 2e3b 2225 2426 2724 2e2a 3431 d943     A>;.%"&$$'*.14C.
1c011c30:	d6d8 d4d6 d3d4 d3d3 d3d3 d3d3 d3d2 d2d3     ................
1c011c40:	d1d2 d1d1 d0d1 d0d2 d1d1 d0d0 cfcf cecf     ................
1c011c50:	e0df dfe0 dfdf dfe0 dfde dfdf dfde dfdf     ................
1c011c60:	dedf dede dedf dede dede dede dfdf dfde     ................
1c011c70:	dede dede dfdc eae8 e8e7 e5e7 eae9 eaea     ................
1c011c80:	f2ed f1f0 f2f2 eef4 e7f0 e3e4 e9eb dee8     ................
1c011c90:	aec9 cdb8 b2cb 5877 333f 242e 3b2f 3b39     ......wX?3.$/;9;
1c011ca0:	4342 303f 272d 262c 2623 2d2a 352e d43b     BC?0-',&#&*-.5;.
1c011cb0:	d6d8 d4d5 d3d4 d3d3 d3d2 d2d2 d3d3 d1d2     ................
1c011cc0:	d1d1 d1d1 d1d1 d0d0 d0d0 cfcf cfd0 cfcf     ................
1c011cd0:	dede dfe0 dede dfdf dedf dede dede dfde     ................
1c011ce0:	dedf dedf dede dede dede dede dede dfde     ................
1c011cf0:	dede dede e1dd e7e8 e4e7 e5e6 eae8 eaea     ................
1c011d00:	edea f2f0 efef f2f3 f1f4 eeed eeeb e9ec     ................
1c011d10:	a7cc 9298 5e8c 2c3c 2427 2825 2d2b 3631     .....^<,'$%(+-16
1c011d20:	443e 3a42 3138 2b31 2725 2b29 342f c238     >DB:811+%')+/48.
1c011d30:	d7d8 d4d6 d3d4 d3d3 d1d3 d2d2 d2d2 d2d2     ................
1c011d40:	d1d1 d1d1 d1d1 d0d0 cfcf cfcf cecf cece     ................
1c011d50:	dede dede dfde dede dede dede dede dede     ................
1c011d60:	dede dede dede dede dede dddf dedd dede     ................
1c011d70:	dedf ddde e3e0 e7e8 e7e8 e9e7 e8e9 e6e1     ................
1c011d80:	e9e4 ebec edea eff1 f2ee f1f3 eaec d9e3     ................
1c011d90:	8eb6 4f6e 2833 181f 1716 1b19 211d 2b24     ..nO3(.......!$+
1c011da0:	3f38 3f3f 3b3e 3033 2827 2b29 3131 9135     8???>;30'()+115.
1c011db0:	d7d8 d4d6 d3d3 d3d3 d2d3 d2d2 d1d1 d2d1     ................
1c011dc0:	d1d1 d0d0 cfd0 cfcf cfcf cfcf cfcf cfcf     ................
1c011dd0:	dede dede dede dede dede dfdf dede dedf     ................
1c011de0:	dede dede dedd ddde dede dedc dede dede     ................
1c011df0:	dede dfde e4dd e4e9 e8e7 e8ea e9ea e5e5     ................
1c011e00:	e3e5 e7e4 eae3 f2ef eff0 e6ef b2c8 cfd4     ................
1c011e10:	7fb0 3953 1d2b 0919 0a0a 0f0d 1514 2f20     ..S9+......... /
1c011e20:	433b 4d47 4248 3638 292a 2b2b 3031 5f35     ;CGMHB86*)++105_
1c011e30:	d7d8 d4d6 d3d4 d3d1 d1d1 d1d1 d1d1 d1d1     ................
1c011e40:	d1d1 d0d0 cfd0 cfcf cfcf cfcf cfcf cfcf     ................
1c011e50:	dede dede dede dede dede dede dede ddde     ................
1c011e60:	dedd ddde dddf dddd dede dede dede dede     ................
1c011e70:	ddde dedd e8e3 e5e4 e8e6 e9e8 e7e8 e3e2     ................
1c011e80:	e8e8 e2e6 dfe1 ede5 e3ee 6cc5 6145 bba7     ...........lEa..
1c011e90:	99c7 6272 3350 0a16 1d09 0a2c 0e0b 321e     ..rbP3....,....2
1c011ea0:	483d 5951 504f 3b42 2a31 2a2c 342f 4735     =HQYOPB;1*,*/45G
1c011eb0:	d7d9 d5d5 d3d4 d3d2 d1d1 d1d1 d1d1 d0d0     ................
1c011ec0:	d1d0 d1d1 cfcf cfcf cfcf cfcf cecf cdce     ................
1c011ed0:	dedd ddde dddd dddd dddd dddd dddd dddd     ................
1c011ee0:	dddd dddd dddd ddde dede dedd dede dede     ................
1c011ef0:	ddde dddd e8e6 e3e1 e5dc eceb e8ea eae9     ................
1c011f00:	e7ea e4e5 dddf e2dc ebeb e5f3 d8d1 e2e8     ................
1c011f10:	d8e6 c5cc 458c 3638 3134 0f2e 140a 3b29     .....E8641....);
1c011f20:	5549 6459 5f5f 4757 2c35 2827 322a 3c38     IUYd__WG5,'(*28<
1c011f30:	d9d8 d5d6 d3d4 d2d3 d1d1 d2d2 d0d1 d0d0     ................
1c011f40:	d0d0 cfd0 cfcf cfcf cecf cece cfcf cece     ................
1c011f50:	dddd dddd dddd dddd dddd dddd dddd dddd     ................
1c011f60:	dddd dddd dddd dedd dede dede dede ddde     ................
1c011f70:	dddd dfdc e1e7 e3e2 e8e2 eaec ebeb ecec     ................
1c011f80:	eaeb eaeb e1e8 d9d7 e9df f5f4 eff2 f1ee     ................
1c011f90:	eff6 dfea 7dbe 333a 2829 142b 270e 4b36     .....}:3)(+..'6K
1c011fa0:	6b57 796f 7873 5269 323d 2528 2d2b 3837     WkoysxiR=2(%+-78
1c011fb0:	dacd d6d7 d5d5 d2d5 d1d1 d1d1 cfd0 cfd1     ................
1c011fc0:	d0cf cfcf cfcf cecf cfcf cecf cece cece     ................
1c011fd0:	dddd dddd dddd dddd dddd dddd dddd dddd     ................
1c011fe0:	dddd dddd dddd dedd dede dede dcdd dcdc     ................
1c011ff0:	dcdd e0df e5e2 e4e7 eae9 eaec ebeb edec     ................
1c012000:	ebee e4ee eaea dae1 e4db eced f2ef eeeb     ................
1c012010:	fafc dff5 8cc8 3752 252e 0d28 351d 5745     ......R7.%(..5EW
1c012020:	7363 8780 8794 6f83 3842 262d 2727 3a32     cs.....oB8-&''2:
1c012030:	db95 91be d3b6 d4d4 d2d2 d1d1 d0d1 cfcf     ................
1c012040:	cfcf cfcf cecf cfce cece cece cece cdce     ................
1c012050:	dddd dddd dddd dddd dddd dddd dddd dedd     ................
1c012060:	ddde dddd dddd dedd dddd dddd d9db c2d5     ................
1c012070:	dbc9 dfde e8e0 eae8 edeb ecec efed efef     ................
1c012080:	eeef f0f0 ebef ebec e8e6 ebdf edee edea     ................
1c012090:	eef1 d6e6 7eb8 3d4f 2634 131e 422b 6952     .....~O=4&..+BRi
1c0120a0:	8677 a19f a4a5 7390 4660 2938 292a 392c     w......s`F8)*),9
1c0120b0:	3445 231e 3829 d4d0 d2d3 d1d0 cfd1 cfcf     E4.#)8..........
1c0120c0:	cfcf cfcf cfcf cfcf cfcf cece cece cdce     ................
1c0120d0:	dddc ddde dddd dddd dede dede dddd dedd     ................
1c0120e0:	dede dede ddde dddd dddd dddc f0e8 ebf1     ................
1c0120f0:	c1d0 dede e8e7 edec eeef efef eff0 f1ef     ................
1c012100:	f0f2 eeee edec efef eef0 eee8 f1ed edeb     ................
1c012110:	e2e9 cae0 6ca2 3944 232e 221b 4e37 6a5c     .....lD9.#."7N\j
1c012120:	a581 b3b8 a5ae 819a 4f6c 3341 2929 332c     ........lOA3)),3
1c012130:	123e 1d15 2c20 d66c d3d5 d1d2 cfcf cfcf     >... ,l.........
1c012140:	d0cf cfcf cecf cecd cece cece cece cece     ................
1c012150:	dedd dddc dddd dcdd dcdd dcdd dddd dddc     ................
1c012160:	dddd dddd dedc dddd dbdb e3dc f4ed f5f5     ................
1c012170:	d4eb e0dd ece9 edec eeed f0f2 f1f0 f2f2     ................
1c012180:	f0f4 f0f2 f3f0 f5f5 f5f4 f1f0 f2f1 edee     ................
1c012190:	ebe9 c6e7 579a 2e39 272b 2b24 5243 846b     .....W9.+'$+CRk.
1c0121a0:	b49b b7c1 b0ba 909f 5e7a 3d48 262c 2e28     ........z^H=,&(.
1c0121b0:	1a3d 1714 2f20 b227 d4d7 d0d3 cfd1 cecf     =... /'.........
1c0121c0:	cfce cfcf cfcf cece cece cece cdcd cccd     ................
1c0121d0:	dcdc dddc dddd dddd dddd dddd dcdd dddd     ................
1c0121e0:	dddd dcdd ddde dcdd dbdb ede3 f5f3 f6f7     ................
1c0121f0:	e1f2 e4db edeb eeec f1ee efef f1ef f1f1     ................
1c012200:	f3f1 f1f2 f1ef f9f5 f3f5 f2f3 f2f3 efef     ................
1c012210:	eeee b9e3 4d82 2f34 2d2d 302a 6043 977b     .....M4/--*0C`{.
1c012220:	c1a9 c0c5 b5c1 96a8 6d82 3f50 2d34 3029     .........mP?4-)0
1c012230:	3135 1a18 2e22 2a20 d5ca d2d3 cfd1 cecf     51..". *........
1c012240:	cece cece cece cece cece cdce cdcd cdcd     ................
1c012250:	dcdc dcdc dcdc dcdc dddc dcdc dcdc dbdb     ................
1c012260:	dcdb dcdd dddc dbdd ddda efec f8f1 f4f5     ................
1c012270:	e0f3 e2de eeea f1ec eff2 f0f0 f5f1 f0f2     ................
1c012280:	ebf0 eeed f7f3 f9f5 f6f9 f4f5 f2f4 eff1     ................
1c012290:	eff0 cbe1 5084 2f37 2d2e 3331 6547 9d8c     .....P7/.-13Ge..
1c0122a0:	c5ba c8c5 b9bf a3ac 7c90 4d69 3143 2927     .........|iMC1')
1c0122b0:	3f32 1619 281d 1713 d467 d3d4 d0d0 cecf     2?...(..g.......
1c0122c0:	cece cece cece cece cece cdce cdcd cccd     ................
1c0122d0:	dddb dbdd dbdb dbdb dbdb dbdb dbdb dbdb     ................
1c0122e0:	dbdb dbdb dcdb dbdc e4da eaeb f3ed f0f4     ................
1c0122f0:	dbef e7dd efed f0f1 f4f4 f4f5 f2f6 f0f0     ................
1c012300:	eeed ece8 f4f2 fbf5 f8fa f3f4 f4f3 f0f0     ................
1c012310:	f2f3 c5e8 4f90 3039 2c2d 3f31 7a5b a590     .....O90-,1?[z..
1c012320:	c0c2 c1c8 bcbf 9eb1 849e 5c73 3c4b 2b2d     ..........s\K<-+
1c012330:	3a2c 0c1e 210d 141b ca1a d2d4 cfd0 cece     ,:...!..........
1c012340:	cece cece cece cece cece cdcd cccd cccc     ................
1c012350:	dbdb dbdb dbdb dbdb dbdb dbdb dbdb dbdb     ................
1c012360:	dbdb dcdc dcdc dbdc e6db f2e9 e3e8 e3d9     ................
1c012370:	dded e8e1 f1ec f4f1 f6f5 f4f6 f1f4 eeef     ................
1c012380:	eaec ede6 f2ee f9f5 fafa f4f7 f2f3 f2f2     ................
1c012390:	eff2 cae5 5693 2e38 302c 4a35 8562 b1a2     .....V8.,05Jb...
1c0123a0:	c2bf b9bb b6b8 a5b4 8f9a 7082 404e 282b     ...........pN@+(
1c0123b0:	332a 082d 0b08 1612 ae1d d2d4 cfd1 cdce     *3-.............
1c0123c0:	cecd cece cdce cdcd cece cdcd cccc cccc     ................
1c0123d0:	dbdb dbdb dbdb dbdb dbdb dbdb dbdb dcdb     ................
1c0123e0:	dbdb dcdb dcdc dbdb e3dc dfed eadb f5fd     ................
1c0123f0:	ddea ebe5 f0ee f4f2 f5f6 f7f6 f6f6 f2f4     ................
1c012400:	edf0 eaec ebec eaeb f6f2 f7f8 f3f3 f3f5     ................
1c012410:	f5f5 d5e7 60a2 2f37 2f2b 5531 8574 aba2     .....`7/+/1Ut...
1c012420:	aea7 aeb2 a3aa 9ba0 888a 6c82 3954 262d     ...........lT9-&
1c012430:	3026 183b 0a0a 100c 851c d3d4 cfd1 cdce     &0;.............
1c012440:	cecd cdce cece cdcd cdcd cdcc cccd cbcc     ................
1c012450:	dbda dbdb dbdb dbdb dbdb dbdb dbdb dbdb     ................
1c012460:	dbdb dadb dcdc dadb e6dc dfeb f6dd f3f0     ................
1c012470:	e0c8 ece5 f0ee f3f1 f6f5 faf7 f9f9 f6f8     ................
1c012480:	f2f2 e4ec dde0 e0de eee8 f7f4 f4f3 f4f2     ................
1c012490:	f6f6 d4eb 5fab 2c35 2c24 5a41 8777 a49a     ....._5,$,AZw...
1c0124a0:	aba6 9da4 8491 6f77 5c6e 515b 3647 2527     ......won\[QG6'%
1c0124b0:	2e26 1f39 0d11 0f09 671d d3d4 cfd1 cdcf     &.9......g......
1c0124c0:	cdcd cdcc cccc cccc cdcd cccc cccc cbcc     ................
1c0124d0:	dbda dbdb dbdb dbdb dadb dbdb dadb dbda     ................
1c0124e0:	dadb dcda dcdc dadb e9db e1f0 f2dc c9f2     ................
1c0124f0:	e4d2 ece8 f1ed f3f2 f6f6 f6f5 f3f5 e7ee     ................
1c012500:	d6df bdc7 a5b2 c3b4 d4ca f2e2 f5f6 f5f4     ................
1c012510:	f5f6 d6e6 72b5 2636 2e25 523e 916c a8a8     .....r6&%.>Rl...
1c012520:	8b97 6274 414e 3238 3638 3335 292e 2225     ..tbNA828653.)%"
1c012530:	2c25 1a33 0b11 0b0a 391c d2d5 cfd0 ccce     %,3......9......
1c012540:	cdcc cccc cccc cccc cccc cccc cccc cbcc     ................
1c012550:	dbda dbdb d9db dbdb dbda dbdb dbdb dadb     ................
1c012560:	dbda dbdb dbdb d9db e7dd e1ee d4d2 80ee     ................
1c012570:	e5d6 edea f2f0 f2f1 f4f2 f3f4 edf1 dde8     ................
1c012580:	cedc a6be 8f9c 8981 9c8e deb7 f5f3 f2f3     ................
1c012590:	f6f4 d7eb 63be 1e2e 251f 5c3a 9480 a8a1     .....c...%:\....
1c0125a0:	85a1 5975 374a 2828 1f1c 2020 2120 2122     ..uYJ7((..   !"!
1c0125b0:	2a26 172f 0a0e 0c0a 1d19 d1cb cfd1 cfce     &*/.............
1c0125c0:	cccd cccc cccc cccc cccc cbcc cbcc cbcb     ................
1c0125d0:	dbda d9db d9d9 dbd9 dbda dbdb d9db d9da     ................
1c0125e0:	dad9 dbda dbdb d9d9 e6dd e5ea cfde 64da     ...............d
1c0125f0:	e6d7 eeea f2f1 f2f1 f2f1 f1f3 e5ec cddb     ................
1c012600:	aecd 9db3 959a 7789 886c c5a3 f5ed f4f4     .......wl.......
1c012610:	faf4 dbee 58b6 1a29 1c19 4c32 b288 a9bc     .....X)...2L....
1c012620:	7f95 5d78 3b4b 312d 1c24 1718 1b16 1f1e     ..x]K;-1$.......
1c012630:	2f27 0f2a 0b0d 0e0c 1418 d28e cfd1 cece     '/*.............
1c012640:	cccc cccc cccc cccc cccc cdcb cbcc cacb     ................
1c012650:	d9d9 d9d9 d9d9 d9d9 d9d9 d9d9 d9d9 d9d9     ................
1c012660:	d9d9 dbda d9db d9d9 e5de e5e4 c1d8 6ea3     ...............n
1c012670:	e7d2 ede8 f3f2 f0f3 e8ea e7ea dcc6 cecb     ................
1c012680:	d1c9 c6b8 a8bb 9596 8888 c388 e7e0 f4ed     ................
1c012690:	fcf8 deef 67b7 1a2a 1515 3413 7b5d 6675     .....g*....4]{uf
1c0126a0:	6c6e 4f57 323b 1d25 111c 140e 1814 1e1b     nlWO;2%.........
1c0126b0:	2a27 0623 090a 130e 131c d126 cfd0 ccce     '*#.......&.....
1c0126c0:	cccc cbcc cbcb cbca cbcb cacb c9ca cac9     ................
1c0126d0:	d9d9 d9d9 d9d9 d9d9 d9d9 d9d9 d9d9 d9d9     ................
1c0126e0:	dad9 d9d9 dada d9d9 e2dc e7dd abcf 8983     ................
1c0126f0:	e5c5 ece9 f3ee e6ef c7db 83be b77e dcb4     ............~...
1c012700:	714c 958f 8980 6891 4754 9b63 caad eedd     Lq.....hTGc.....
1c012710:	f5f8 cae5 66a7 213b 0c15 0912 482b 6c69     .....f;!....+Hil
1c012720:	2c1c 1827 2013 0916 040b 0d0e 1918 211b     .,'.. .........!
1c012730:	2727 031c 0b06 1b17 0e20 c114 cfd2 ccce     ''...... .......
1c012740:	cbcc cbcb cbcb cbca caca cacb caca c9ca     ................
1c012750:	d9d9 d9d9 d9d9 dad8 d9d9 d9d9 d9d9 dad9     ................
1c012760:	d9d8 dad9 dada d8d9 dcde e9ce e1f1 8a77     ..............w.
1c012770:	e9c4 ecea f1ef e7e9 bedf c094 7d92 5050     .............}PP
1c012780:	7c32 1316 394d 373f 4b49 8c7f 9c93 b6a6     2|..M9?7IK......
1c012790:	cfd6 8eb4 516d 2b3b 1823 0a13 0d0e 0b22     ....mQ;+#.....".
1c0127a0:	0268 0800 080a 0103 0c06 2219 2121 2321     h.........."!!!#
1c0127b0:	252a 0419 1604 1d1a 0724 ad0d d0d1 cccd     *%......$.......
1c0127c0:	cbcc caca caca caca caca caca caca c9ca     ................
1c0127d0:	d9d8 d9d9 dad9 d9d9 d8d9 d8d8 d9d9 d8d8     ................
1c0127e0:	d9d8 dad9 d9d9 d8d9 bddc e7d3 c5e8 907c     ..............|.
1c0127f0:	ebbe eceb ebee e7ea dde2 bcd4 7c86 a1aa     .............|..
1c012800:	687d 425e 443a 383a 4f50 5458 744d 9988     }h^B:D:8POXTMt..
1c012810:	c6b3 98b0 7984 5b75 3432 162e 0c10 090b     .....yu[24......
1c012820:	0704 0c07 1f12 282b 2222 2325 2421 2524     ......+(""%#!$$%
1c012830:	242a 0416 0c02 1918 0716 990f cfd1 ccce     *$..............
1c012840:	cbcb caca caca cacb caca caca caca c9ca     ................
1c012850:	d8d8 d8d8 d8d8 d8d8 d8d8 d8d8 d8d8 d8d8     ................
1c012860:	d8d8 d9d9 dad9 d8d8 a3d9 e8cc 75e7 8f7f     .............u..
1c012870:	eabe edeb e7ea ebe8 e9de e9e0 d7da a1c3     ................
1c012880:	7a96 3a6b 2b29 4340 4a45 7054 ad8b aaba     .zk:)+@CEJTp....
1c012890:	bebf adbb a8a6 88a0 5e62 3e62 3923 0e25     ........b^b>#9%.
1c0128a0:	1d1c 0a06 1b1d 281f 1825 1c19 211e 2723     .......(%....!#'
1c0128b0:	2327 0515 0803 200b 050b 9b0e cfd0 cbcd     '#..... ........
1c0128c0:	cacb caca cbcb caca caca caca caca c9ca     ................
1c0128d0:	d8d8 d9d8 d8d8 d8d8 d8d8 d8d8 d8d8 d9d8     ................
1c0128e0:	d9d9 d9d9 d9d9 d9d9 90d6 f086 73c0 826d     .............sm.
1c0128f0:	eab1 ebeb e8e9 eaeb d3ea c2dd 8b9a 7a96     ...............z
1c012900:	8d9d 7387 6f90 938c c3bb c8c9 d4ce cac3     ...s.o..........
1c012910:	d0d4 bad0 b7b6 b4b8 86ca 93aa 6c5a 4e46     ............ZlFN
1c012920:	2d38 495c 3847 2749 1d27 1810 161e 2720     8-\IG8I''..... '
1c012930:	2225 0317 0502 0c07 0414 960d ced1 cbcd     %"..............
1c012940:	cacb caca caca caca c9c9 cac9 caca c9ca     ................
1c012950:	d8d8 d8d8 d8d8 d8d8 d8d8 d8d8 d8d8 d8d8     ................
1c012960:	d8d8 d9d8 d9d9 d8d9 9ed7 cfe7 5f6f 7d55     ............o_U}
1c012970:	e7bf ebea e6e8 eadb c8e6 c9b3 c6d5 c2ba     ................
1c012980:	b5bd c6ae e1dd e5e4 e7ed e4e7 dde2 d6d5     ................
1c012990:	dfd6 c5d6 c6c7 c4c3 c0be b4c8 9bab a194     ................
1c0129a0:	887a 7d88 6775 5d67 254a 212c 2620 2622     z..}ugg]J%,! &"&
1c0129b0:	2022 0416 0604 0404 1409 9622 cfd1 cbcd     " ........".....
1c0129c0:	caca c9c9 cac9 c9ca c9c9 cac9 c9c9 c8c9     ................
1c0129d0:	d8d7 d8d7 d8d8 d8d8 d8d8 d7d7 d7d8 d8d7     ................
1c0129e0:	d8d8 d8d8 d9d9 d9d9 dada 78e3 6553 7f4b     ...........xSeK.
1c0129f0:	e8c1 edec e5e7 eee2 eae5 ecd0 eaf2 dfe2     ................
1c012a00:	ede6 efe8 f1f0 f2f1 eded eaec e6ea dee1     ................
1c012a10:	e5e1 ced6 bdd2 cfd1 ccd3 b5bd 98b4 aea8     ................
1c012a20:	a5a7 a9a7 a397 6080 455d 2738 1e20 2422     .......`]E8' ."$
1c012a30:	2020 0217 0404 0402 0504 310a cfcf cbcc       .........1....
1c012a40:	caca caca c9ca c8c9 caca c9c9 c7ca c7c8     ................
1c012a50:	d8d8 d8d8 d7d7 d8d8 d7d8 d7d7 d7d7 d7d7     ................
1c012a60:	d8d7 d8d8 d8d8 d9d9 ced8 54bb 5451 7251     ...........TQTQr
1c012a70:	e7c9 ebec e4e7 eae4 f4ef f3f4 f6f6 f4f0     ................
1c012a80:	f6f5 f6f2 f4f4 f4f4 f3f6 eef2 eaee e4e6     ................
1c012a90:	e4e6 dddc d4d2 d2d3 ccd1 a8c3 97a2 a2a5     ................
1c012aa0:	9f9d 9a9e 8d8d 7b74 516a 2537 1e20 2223     ......t{jQ7% .#"
1c012ab0:	1f20 0419 0402 0300 0304 3203 cec1 cacc      ..........2....
1c012ac0:	c9ca c9c9 c8c8 c9c9 c9c9 c9c9 c8c8 c7c8     ................
1c012ad0:	d7d6 d7d7 d6d6 d6d6 d7d7 d6d6 d6d6 d8d7     ................
1c012ae0:	d7d8 d8d8 d8d8 d9d8 d5d7 42b4 5045 9555     ...........BEPU.
1c012af0:	ead0 eceb e3e9 e9e3 f1ee f6f5 f7f5 f6f9     ................
1c012b00:	f5f6 f5f5 f7f4 f4f4 f2f2 f2f0 edf0 eae6     ................
1c012b10:	e2e7 d8e4 d6da ced5 cfd1 b1c5 8a97 a094     ................
1c012b20:	979b 8a84 8281 6f71 4654 293b 1f1f 2223     ......qoTF;)..#"
1c012b30:	1f1f 051b 0502 0502 0503 3f06 cecb cacc     ...........?....
1c012b40:	c9c8 c8c9 c9c8 c7c8 c8c8 c9c8 c8c7 c7c8     ................
1c012b50:	d6d6 d6d6 d6d6 d6d6 d6d6 d6d6 d6d6 d6d6     ................
1c012b60:	d6d6 d7d7 d6d6 d8d7 cbda 40ac 503f 9c5b     ...........@?P[.
1c012b70:	ecd8 eded e8e9 e8e3 f0ec f4f2 f5f4 f6f5     ................
1c012b80:	f4f6 f2f2 f6f3 f4f5 f3f3 f0f1 eceb ebeb     ................
1c012b90:	e4e6 dfe0 dfdb dbdc cdd1 adc5 8d9c 898d     ................
1c012ba0:	8996 8280 7d77 6673 3a4d 2c33 2023 2022     ....w}sfM:3,# " 
1c012bb0:	1a1e 0417 0401 0203 0402 5005 cdcd cacc     ...........P....
1c012bc0:	c9ca c7c7 c7c7 c7c7 c7c7 c7c7 c7c7 c7c7     ................
1c012bd0:	d6d6 d6d6 d6d6 d6d6 d6d6 d5d6 d6d6 d6d5     ................
1c012be0:	d6d7 d7d7 d6d6 d7d7 d5d7 446c 4a34 af62     ..........lD4Jb.
1c012bf0:	eee3 eef0 eaeb e9e7 efeb f2f1 f3f2 f5f4     ................
1c012c00:	f4f6 f1f3 f7f4 f5f4 f3f3 f0f3 ebef e5ea     ................
1c012c10:	e4e7 e3dc d8d9 d6de cbd7 b9c7 88a4 8074     ..............t.
1c012c20:	8079 7880 6368 5665 3d4e 272e 1d1f 1c20     y..xhceVN=.'.. .
1c012c30:	161a 010f 0507 0303 0302 7e05 cecd c9cb     ...........~....
1c012c40:	c8c9 c7c7 c7c6 c7c7 c6c6 c7c7 c6c8 c6c6     ................
1c012c50:	d6d6 d5d6 d6d6 d6d6 d6d5 d5d5 d4d6 d5d6     ................
1c012c60:	d6d6 d5d6 d7d7 d7d6 d4da 3e62 4d38 b666     ..........b>8Mf.
1c012c70:	eee9 efee ebed ece9 eeef f0ee f3f3 f5f3     ................
1c012c80:	f5f5 f5f5 f5f5 f6f6 f2f4 edf5 e1ed e7e4     ................
1c012c90:	e3e2 e4e2 e4e2 e1de d6da c5c7 93aa 7c7f     ...............|
1c012ca0:	6376 6c71 5962 465a 3a44 262d 1b20 181b     vcqlbYZFD:-& ...
1c012cb0:	0e13 060a 0203 0102 0200 3d03 c7ac cacc     ...........=....
1c012cc0:	c7c8 c8c7 c7c7 c7c7 c6c6 c5c6 c6c6 c5c5     ................
1c012cd0:	d4d5 d6d6 d5d6 d6d6 d6d5 d4d5 d4d4 d4d4     ................
1c012ce0:	d6d5 d6d5 d5d5 d4d7 cdd7 4a64 4736 ab5b     ..........dJ6G[.
1c012cf0:	f0e6 f0ef eeee eaeb eeee f1ed f2f2 f4f3     ................
1c012d00:	f5f4 f6f4 f4f4 f7f6 f6f5 f1f3 e6f0 e1e5     ................
1c012d10:	e0e4 e2df d9dc dbda d4d6 c9d2 a0b9 8287     ................
1c012d20:	6176 6065 5252 4753 3a41 222e 1819 0f15     vae`RRSGA:."....
1c012d30:	080f 0504 0304 0207 0101 0c04 ba58 c9cb     ............X...
1c012d40:	c7c9 c7c7 c7c5 c5c6 c5c5 c5c5 c5c5 c5c5     ................
1c012d50:	d4d4 d4d4 d5d4 d4d4 d4d4 d4d4 d4d4 d4d5     ................
1c012d60:	d5d4 d4d5 d6d4 d7d6 c5d8 3e4c 454a 8251     ..........L>JEQ.
1c012d70:	e1cb e5e4 efeb eceb efed f2f0 f3f4 f3f3     ................
1c012d80:	f1f0 f6f3 f8f4 f3f6 f3f5 f0f3 eaf0 dfe9     ................
1c012d90:	e0dd e0df dcdf dcdc d4d4 c9cb a7b0 8295     ................
1c012da0:	6e86 5c59 584e 4953 404a 1e2f 1718 0a17     .nY\NXSIJ@/.....
1c012db0:	0307 0506 0406 0004 0301 0604 a215 cac8     ................
1c012dc0:	c8ca c5c6 c5c5 c5c5 c5c5 c5c5 c5c5 c4c5     ................
1c012dd0:	d4d3 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4 d4d4     ................
1c012de0:	d4d4 d4d4 d3d4 d6d5 c5d7 3047 4b42 6a4f     ..........G0BKOj
1c012df0:	ab7f decb ece7 eee9 efed f4f0 f5f4 f3f5     ................
1c012e00:	f0f2 f4f3 f5f3 f5f5 f0f3 eff1 edec dfe4     ................
1c012e10:	d5d7 dbdd d9e0 d6d5 d2d2 beca a8b1 8697     ................
1c012e20:	757c 5660 6056 5452 414c 1f2e 1417 0910     |u`VV`RTLA......
1c012e30:	0303 0403 0404 0103 0100 0601 450b c9bd     .............E..
1c012e40:	c7c6 c5c6 c5c5 c5c5 c5c5 c4c5 c5c5 c4c4     ................
1c012e50:	d3d3 d4d4 d4d3 d4d4 d3d3 d3d3 d4d3 d4d4     ................
1c012e60:	d4d4 d4d4 d5d4 d6d5 bbd4 4765 4948 5d4d     ..........eGHIM]
1c012e70:	886f d7ba f0e8 edee efef f3f1 f6f5 f5f5     o...............
1c012e80:	f3f5 f3f3 f4f1 f2f2 f3f2 ecf1 efef dee8     ................
1c012e90:	d9df e1dd dbe0 dbd9 cbd8 bdc1 a9b1 8899     ................
1c012ea0:	6987 6370 6867 5653 3e50 1c2a 1015 0a0e     .ipcghSVP>*.....
1c012eb0:	0804 0506 0103 0003 0002 0503 4106 c6a6     .............A..
1c012ec0:	c8c9 c5c7 c5c5 c5c4 c4c4 c4c4 c4c4 c3c4     ................
1c012ed0:	d3d3 d3d3 d3d3 d3d3 d3d3 d3d3 d3d4 d2d3     ................
1c012ee0:	d3d4 d4d3 d4d3 d6d5 bcd2 4344 453e 604d     ..........DC>EM`
1c012ef0:	a17d d9cc ece2 efee eeee f2f2 f5f5 f5f5     }...............
1c012f00:	f4f7 f4f4 f5f2 f6f2 f3f4 ebf2 eced e1e5     ................
1c012f10:	e1e4 ddda e2e0 d7d5 cbd0 bfbe a8b7 8692     ................
1c012f20:	6c77 6060 606e 5160 3b49 1a24 1416 070e     wl``n``QI;$.....
1c012f30:	0409 0406 0001 0301 0203 0505 3906 c7ac     .............9..
1c012f40:	c7ca c6c7 c4c4 c4c4 c4c4 c5c4 c4c3 c2c4     ................
1c012f50:	d4d3 d3d4 d3d3 d3d3 d3d2 d2d2 d3d2 d3d3     ................
1c012f60:	d4d3 d4d3 d4d4 d5d6 8ad1 323a 4e3f 7f69     ..........:2?Ni.
1c012f70:	bd8f dccf e9e3 f2ef eeed f3f0 f6f5 f7f7     ................
1c012f80:	f7f7 f7f6 f6f6 f6f5 f3f5 eff2 edee e9eb     ................
1c012f90:	e3e7 e0e1 d8de d3d7 c8d0 b5c4 abb4 939f     ................
1c012fa0:	677b 6663 6a67 5258 3441 151f 1514 0d13     {gcfgjXRA4......
1c012fb0:	0709 0209 0101 0303 0406 0206 2a09 c8aa     .............*..
1c012fc0:	c0c9 c5c4 c5c5 c4c4 c4c4 c3c3 c3c3 c2c3     ................
1c012fd0:	d2d2 d2d1 d2d2 d2d2 d2d2 d1d1 d3d2 d2d2     ................
1c012fe0:	d2d3 d2d2 d4d2 d3d5 55d6 313c 5d32 956b     .........U<12]k.
1c012ff0:	c0b4 dcd9 eee6 f1f3 f2ee f3f1 f6f5 f8f6     ................
1c013000:	f7f8 f7f7 f6f7 f8f7 f4f5 f4f4 f0ed e8ed     ................
1c013010:	e3e5 dae3 dbdf d4d1 c7ca b8bb b1b9 949f     ................
1c013020:	6a80 694e 6066 4a53 2541 151a 1313 090e     .jNif`SJA%......
1c013030:	0307 0007 0200 0401 0302 0407 0f05 978f     ................
1c013040:	abba bfba c4c5 c3c3 c3c3 c2c2 c2c2 c2c2     ................
1c013050:	d1d2 d1d1 d1d2 d3d1 d1d1 d1d1 d1d1 d3d1     ................
1c013060:	d2d2 d1d1 d3d2 d3d4 3dcf 3935 4e43 9f73     .........=59CNs.
1c013070:	c09a d9d2 efe8 f2f3 f0f0 f1f2 f6f2 f7f4     ................
1c013080:	f7f8 f7f8 f8f7 f9f7 f7f6 f2f6 eef0 e9ed     ................
1c013090:	e6e9 e3e3 dae0 cfd8 c4cf c1bd aeb1 96a4     ................
1c0130a0:	677d 5864 4f56 464c 1d31 1418 1014 0c10     }gdXVOLF1.......
1c0130b0:	0406 0102 0101 0302 0302 0607 0705 5332     ..............2S
1c0130c0:	af74 c6b9 c4c7 c3c3 c2c2 c2c2 c2c2 c2c2     t...............
1c0130d0:	d1d1 d0d1 d1d1 d1d1 d0d1 d1d0 d0d0 d2d1     ................
1c0130e0:	d1d1 d0d1 d2d1 d0d2 40c9 3437 4637 8863     .........@747Fc.
1c0130f0:	a8af d7bf ead7 f0ee f0f0 f4f1 f6f5 faf9     ................
1c013100:	f8f6 f5f8 f7f7 f8f9 f4f6 f6f7 f2f4 eaef     ................
1c013110:	e9eb e0e7 dfe4 d6da c8cf bcbc acb2 8d9f     ................
1c013120:	5f78 4d57 4041 3540 1f26 1116 0f11 080c     x_WMA@@5&.......
1c013130:	0205 0101 0101 0201 0303 0d04 0810 4719     ...............G
1c013140:	5945 ab76 c3c1 c3c3 c2c2 c1c3 c2c2 c1c2     EYv.............
1c013150:	d1d0 d1d1 d0d1 d1d0 d1d1 cfd0 cfcf cfcf     ................
1c013160:	d1d0 d1d1 d3d1 d1d3 46be 3531 3d3f 726f     .........F15?=or
1c013170:	be9b e0c9 eae0 f2ef eff0 f2f2 f6f6 f8f7     ................
1c013180:	f8f8 f6f8 fcf7 f7fa f7f7 f7f7 f5f3 f1f3     ................
1c013190:	e9ee e3e7 dce2 d4dc bbd0 b3b2 a6a6 808f     ................
1c0131a0:	5664 444b 2f37 252c 181e 1012 0e0f 070a     dVKD7/,%........
1c0131b0:	0205 0202 0101 0000 0201 0f05 0604 2522     .............."%
1c0131c0:	4731 aa5d c1b6 c2c3 c2c3 c1c2 c1c0 c0c1     1G].............
1c0131d0:	d0cf d0d1 cfcf cfcf cfcf d0d1 d0cf d0cf     ................
1c0131e0:	cfd0 d0d0 d1d0 d4d2 69cc 3536 4a37 5b46     .........i657JF[
1c0131f0:	886f ccbd e8de f0ef eff1 f3f3 f6f7 f7f7     o...............
1c013200:	f9f9 f8f9 f9f8 f9fa f8f8 faf8 f5f8 f0f3     ................
1c013210:	e4f0 dbdf d1ce bfc9 b3ab a0af 8c8f 6d82     ...............m
1c013220:	4d5a 2c37 2221 1c1e 1219 0f0f 0d0e 060a     ZM7,!"..........
1c013230:	0103 0000 0000 0100 0301 0403 0d02 3927     ..............'9
1c013240:	452f 6564 b99c c2c3 c1c2 c0c1 c0c0 c0c0     /Ede............
1c013250:	cfcf cfd1 cfcf cfcf cfcf cfcf cfcf d0cf     ................
1c013260:	cfd0 cfcf d1cf d2d1 a5cf 3335 7f35 4633     ..........535.3F
1c013270:	725d cfb3 e8e1 f4f2 f0f2 f3f3 f6f5 f6f6     ]r..............
1c013280:	f6f8 f9f8 faf5 f7f8 f8f9 f5f7 f4f9 e3ed     ................
1c013290:	dbe0 b7c3 b2b5 9b9f 8099 7f79 6f6a 5260     ..........y.jo`R
1c0132a0:	323f 1828 1919 1214 1010 0d0f 0c0c 0509     ?2(.............
1c0132b0:	0001 0000 0000 0000 0101 0401 0505 1b07     ................
1c0132c0:	1712 5d3c c194 c2c4 c0c1 c0c0 bfc0 c0c1     ..<]............
1c0132d0:	cfcf d0cf cfcf cfcf cecf cfcf cece cecf     ................
1c0132e0:	cece cecf d0cf d2d0 b7d2 3e39 2b34 6332     ..........9>4+2c
1c0132f0:	7350 daa9 eee6 f6f1 f1f4 f4f2 f5f6 f6f6     Ps..............
1c013300:	f7f8 f9f9 faf9 f9fa faf7 f4f9 e8f0 dfd7     ................
1c013310:	ccd4 a5bc 8999 6574 556b 3943 333c 373b     ......tekUC9<3;7
1c013320:	2227 0e19 0e0e 0d10 0b0e 0b0c 0a0c 0306     '"..............
1c013330:	0101 0000 0000 0000 0200 0303 0306 1a1c     ................
1c013340:	351a 5c43 b696 c2bf c0c2 c0c1 bfbf bfbf     .5C\............
1c013350:	cfcf cecf cece cfcf cece cfcf cecf cfce     ................
1c013360:	cfcf cecf cfce d2d0 b0c1 4340 5438 4445     ..........@C8TED
1c013370:	7354 cfa0 f2e5 f6f5 f3f1 f3f2 f7f5 f7f5     Ts..............
1c013380:	f9f7 f8fa fafa faf7 f4f5 eaf4 e2de cfdf     ................
1c013390:	a4a8 648a 6660 4354 2e4b 222f 2421 0f13     ...d`fTCK./"!$..
1c0133a0:	110f 050d 0608 1a07 0605 0906 0809 0204     ................
1c0133b0:	0001 0000 0000 0000 0401 0706 0508 1b07     ................
1c0133c0:	2231 7582 ad98 c1c2 c0c1 bfbf bebf bfbe     1".u............
1c0133d0:	cece cfce cfcf cece cfce cece cfce cfce     ................
1c0133e0:	cfcf cecf cfce cfce 4295 3f36 3453 6c47     .........B6?S4Gl
1c0133f0:	7071 dba1 eae4 edf2 efee f3f3 f5f5 f7f6     qp..............
1c013400:	f5f5 f5f5 f6fa eded d1e7 b2bc abb9 679b     ...............g
1c013410:	4f57 3639 282a 2926 283d 1316 0a0d 0e0a     WO96*(&)=(......
1c013420:	0606 0107 0203 0203 0302 0304 0302 0202     ................
	...
1c013438:	0302 0404 0404 0304 3705 a76d c1bf c1c2     .........7m.....
1c013448:	bfc0 bfbf bfbf bebf cfce cfcf cece cece     ................
1c013458:	cece cdcd cdce cdce cece cece cdcd c8c9     ................
1c013468:	73bb 3b35 4254 3b3d 7651 afa9 d9d2 efe1     .s5;TB=;Qv......
1c013478:	efed efed eaf3 f2f3 eff4 e7ed dce3 c8d8     ................
1c013488:	c8c5 b2bb 6baa 3b56 443d 2022 191a 0911     .....kV;=D" ....
1c013498:	1c26 071b 060c 0507 0403 0001 0302 0001     &...............
1c0134a8:	0004 0100 0101 0001 0000 0000 0000 0000     ................
1c0134b8:	0101 0902 2005 5628 094b 6621 c2b8 c1c2     ..... (VK.!f....
1c0134c8:	bfc0 bfbf bfbf bcbf cecd cdce cecd cece     ................
1c0134d8:	cdce cdcd cdce cccc cdcc cdcd cdcd cccd     ................
1c0134e8:	7fcd 4748 6658 3e51 7861 9269 bca9 d3cc     ..HGXfQ>axi.....
1c0134f8:	dce2 e1e3 e7e6 dfe0 d3d6 b8cc 9dae a49d     ................
1c013508:	91a0 5979 7449 374a 1e26 161d 101b 0b0a     ..yYItJ7&.......
1c013518:	6619 190d 1008 040c 0201 0003 0202 0000     .f..............
1c013528:	0102 0100 0001 0000 0000 0000 0000 0000     ................
1c013538:	0401 0905 2a21 875c 99a4 792b b790 bfc0     ....!*\...+y....
1c013548:	bfbf bdbe bebd bdbe cccc cecd cece cccc     ................
1c013558:	cccc cccb cdcd cdcd cccd cccc cdcb cdce     ................
1c013568:	a3c7 623f 2b5d 4551 614b a097 9fab bca4     ..?b]+QEKa......
1c013578:	d2bf d2cd bbc7 acbb 96a9 9f8c 7f6c 6482     ............l..d
1c013588:	4a56 5055 4d6f 2633 1222 0c0b 0d0d 0308     VJUPoM3&".......
1c013598:	2404 3345 0212 1115 0501 0006 0104 0000     .$E3............
1c0135a8:	0002 0000 0000 0000 0000 0000 0000 0000     ................
1c0135b8:	0100 0200 0604 140a 221d 371d bf74 c0c0     .........".7t...
1c0135c8:	bebf bdbe bdbd bcbd cccc cccd cccd cccc     ................
1c0135d8:	cccb cccc cccc cbcc cbcc cccd cdcc cbcd     ................
1c0135e8:	b5cc 6a3a 4d31 4c3a 9147 a588 7176 a68b     ..:j1M:LG...vq..
1c0135f8:	b3bb a9b8 a6ad 7780 5863 5c5e 686b 416b     .......wcX^\khkA
1c013608:	403e 222c 542a 121c 090c 0403 050b 0b04     >@,"*T..........
1c013618:	1008 5941 1e54 2d1c 0202 0116 0203 0100     ..AYT..-........
1c013628:	0001 0000 0100 0001 0000 0000 0000 0000     ................
1c013638:	0000 0201 0303 0905 2b23 8d37 bfba bfbf     ........#+7.....
1c013648:	bdbd bcbd bdbd bcbd cacc cccc cbcc cccc     ................
1c013658:	cccc cdcd cccc cccb cacc caca cbcb cec8     ................
1c013668:	b6cb 5450 4038 693f 8d65 9586 7776 849b     ..PT8@?ie...vw..
1c013678:	a296 849f 6b5e 4956 3940 3937 564b 2b41     ....^kVI@979KVA+
1c013688:	1a28 2319 1b1e 0f23 0507 0201 0214 0400     (..#..#.........
1c013698:	0817 5159 2c93 3834 020d 0356 0300 0100     ..YQ.,48..V.....
1c0136a8:	0000 0001 0000 0101 0000 0000 0000 0000     ................
1c0136b8:	0200 0501 0403 0c08 391e aa95 bfb6 bec0     .........9......
1c0136c8:	bdbd bdbd bdbd bbbe cbcb cacc ccca cccc     ................
1c0136d8:	cbcc cbcb cbcb cacb caca cacb c9c9 ccc5     ................
1c0136e8:	cbcc 5163 4a43 623c 9ca7 91a0 7498 7283     ..cQCJ<b.....t.r
1c0136f8:	8f8d 4859 4958 2837 2221 1e21 3a28 1d2d     ..YHXI7(!"!.(:-.
1c013708:	1825 1018 1213 2625 010a 0202 080a 0901     %.....%&........
1c013718:	0a1b 4312 9a6d 2862 0147 1f03 0a04 0000     ...Cm.b(G.......
1c013728:	0000 0001 0000 0100 0001 0000 0000 0000     ................
1c013738:	0000 0101 1104 0d14 6134 8985 bfbb bdbd     ........4a......
1c013748:	bcbc bbbc bcbc bbbc cbca cacb cacb caca     ................
1c013758:	caca cbcb caca caca caca cac9 c7cb c7ca     ................
1c013768:	cacb 6297 4f4a b156 a298 95b5 628a 7b3b     ...bJOV......b;{
1c013778:	57bd 3744 294a 1728 1617 1112 2927 3628     .WD7J)(.....')(6
1c013788:	181a 0a07 0917 331f 0207 0102 0704 0005     .......3........
1c013798:	004e 0903 b337 2885 464b 3d03 0301 0002     N...7..(KF.=....
1c0137a8:	0001 0002 0000 0100 0001 0000 0000 0000     ................
1c0137b8:	0101 0402 1308 1527 372d bb82 bdba bdbd     ......'.-7......
1c0137c8:	bbbb bbbb bbbc bbbb cbca cbcb cacb cbcb     ................
1c0137d8:	caca caca cacb caca caca c9c9 c9c9 cac8     ................
1c0137e8:	c6c8 6bb7 5674 9e7d ad8d 6792 3863 8f59     ...ktV}....gc8Y.
1c0137f8:	4c5e 2c31 1f3f 111e 0c09 1308 2d19 1042     ^L1,?........-B.
1c013808:	2b54 0d18 0205 3416 0915 0102 0505 0a03     T+.....4........
1c013818:	1646 0002 2f13 69a2 5031 0231 011c 0102     F..../.i1P1.....
1c013828:	0101 0102 0000 0000 0202 0001 0000 0000     ................
1c013838:	0202 0204 0907 2c14 6542 b698 bcbe bcbd     .......,Be......
1c013848:	bbbc bbbb bbbb babb caca caca caca caca     ................
1c013858:	caca caca caca caca caca c8c9 c9c8 c8c9     ................
1c013868:	c7c9 87b7 788a 9aa0 8296 4e89 3d48 a561     .....x.....NH=a.
1c013878:	4b60 212d 1d2f 081d 0405 0a12 1f09 5c50     `K-!/.........P\
1c013888:	0921 0c43 0414 3501 2b5c 0213 0902 3303     !.C....5\+.....3
1c013898:	1955 0625 0000 7622 0e73 0254 0905 0100     U.%..."vs.T.....
1c0138a8:	0001 0102 0000 0000 0303 0101 0000 1c08     ................
1c0138b8:	2622 0e28 0a14 3d0b 8b5f b6ae bcb9 bbbc     "&(....=_.......
1c0138c8:	baba baba bbba baba c9c9 c9c9 caca c8ca     ................
1c0138d8:	c9c9 c9c9 c8ca c9c9 c8c9 c7c7 c8c7 c9c8     ................
1c0138e8:	c8c8 99b5 7461 9479 5a9b 6c52 4d56 4e70     ....aty..ZRlVMpN
1c0138f8:	6953 1c2c 262d 0515 0202 2607 0508 4a34     Si,.-&.....&..4J
1c013908:	3b63 5707 082c 1d2a 6241 2e25 1303 020b     c;.W,.*.Ab%.....
1c013918:	7338 2724 0512 0501 4b45 0a0c 0a01 0101     8s$'....EK......
1c013928:	0001 0102 0000 0000 0302 0103 0200 4f05     ...............O
1c013938:	a2a1 6cad 3b5f 1a17 643c ac8d bbb8 babb     ...l_;..<d......
1c013948:	baba baba baba b9ba c9c8 c9c8 c9c9 c9c9     ................
1c013958:	c9c8 c9c8 c8c9 c8c8 c7c8 c7c7 c7c6 c8c7     ................
1c013968:	c8c9 bebb 8a76 9099 4945 505a 533d 5068     ....v...EIZP=ShP
1c013978:	6866 1c1a 2b5b 0425 0502 0806 031d 1008     fh..[+%.........
1c013988:	7b51 0c61 6445 151c 490d 4a86 2a4d 1829     Q{a.Ed...I.JM*).
1c013998:	150b 3518 232d 000d 1300 012e 0001 0101     ...5-#..........
1c0139a8:	0000 0001 0000 0000 0600 0305 1000 6307     ...............c
1c0139b8:	b0a0 b9bc 83ad 4041 7e4c abaa bbb5 b9ba     ......A@L~......
1c0139c8:	b8b8 b9b8 b8b8 b8b9 c8c7 c8c8 c8c8 c8c8     ................
1c0139d8:	c7c8 c8c7 c6c8 c7c7 c6c7 c6c6 c6c6 c7c7     ................
1c0139e8:	c4c7 b1c0 9d67 2da4 5028 3e41 3136 a97b     ....g..-(PA>61{.
1c0139f8:	6e57 1723 2f3e 0631 0b08 0c05 4e06 3042     Wn#.>/1......NB0
1c013a08:	513f 8c9c 243f 7708 0632 c121 4fa7 465b     ?Q..?$.w2.!..O[F
1c013a18:	444e 1b0e 3048 205c 0001 1901 0001 0000     ND..H0\ ........
1c013a28:	0500 0002 0000 0000 0600 0309 0501 a316     ................
1c013a38:	b594 b6bf b0b6 888a 8385 bbb4 bab9 b8b8     ................
1c013a48:	b8b8 b8b8 b8b8 b8b8 c6c6 c7c6 c7c7 c7c7     ................
1c013a58:	c7c7 c7c7 c7c5 c6c7 c6c7 c5c5 c5c5 c6c5     ................
1c013a68:	c8c7 bdc2 9e5e 2976 6c66 3755 2a69 9c5b     ....^.v)flU7i*[.
1c013a78:	3a5d 2a2c 3828 4133 0706 0907 060b 5d2b     ]:,*(83A......+]
1c013a88:	383f 893d 7c4c 3f61 8728 8e7d a92c 735f     ?8=.L|a?(.}.,._s
1c013a98:	9849 0e0f 0c36 513f 0621 0100 0006 0000     I...6.?Q!.......
1c013aa8:	0100 0102 0001 0000 0400 060a 030e 9834     ..............4.
1c013ab8:	bc93 b9be b4bd a0b4 ada8 bbb8 b9b9 b8b8     ................
1c013ac8:	b7b8 b7b7 b7b7 b7b7 c6c6 c6c5 c5c7 c7c7     ................
1c013ad8:	c6c6 c6c6 c5c6 c6c6 c5c6 c5c5 c5c5 c5c4     ................
1c013ae8:	c6c6 9bc3 af4c 445c 614d 5056 3051 ae4d     ....L.\DMaVPQ0M.
1c013af8:	255c 3d45 4325 4343 0224 0c0a 1505 0610     \%E=%CCC$.......
1c013b08:	1e2a 3f2c a72b a655 9278 825c 5e6d 573b     *.,?+.U.x.\.m^;W
1c013b18:	2a5f 28c6 5932 0502 3a18 0005 0201 0002     _*.(2Y...:......
1c013b28:	0100 0102 0001 0000 0300 0a08 1902 a590     ................
1c013b38:	baaa bbbb baba b4bb b6b9 b8b9 b7b8 b7b7     ................
1c013b48:	b7b7 b6b7 b6b6 b6b6 c5c5 c6c5 c5c5 c4c4     ................
1c013b58:	c5c5 c5c5 c5c6 c5c5 c4c5 c4c5 c4c4 c3c3     ................
1c013b68:	c6c5 9ac7 ab3e 445e 4f6e 3f61 1b47 9739     ....>.^DnOa?G.9.
1c013b78:	2f73 3848 413c 5e57 413c 0d08 1b22 4439     s/H8<AW^<A..".9D
1c013b88:	133b 3021 6856 6d43 5465 9c91 5860 6d3d     ;.!0VhCmeT..`X=m
1c013b98:	4011 9a47 322b 2544 1703 0b17 0000 0003     .@G.+2D%........
1c013ba8:	0100 0003 0001 0000 0100 0a09 6d28 a2a7     ............(m..
1c013bb8:	bbb4 b9ba b8b9 b6b9 b8b8 b6b8 b7b7 b6b6     ................
1c013bc8:	b6b6 b6b7 b5b6 b6b5 c5c3 c5c5 c5c4 c5c5     ................
1c013bd8:	c5c5 c5c5 c5c5 c5c4 c4c5 c2c3 c4c4 c1c3     ................
1c013be8:	c5c2 b7c5 8f51 385b 3c4d 382d 6253 6650     ....Q.[8M<-8SbPf
1c013bf8:	4d75 382b 4d3a 713f 637b 2526 3128 6e1b     uM+8:M?q{c&%(1.n
1c013c08:	804a 154d 1833 403a 635f 3513 5160 3b47     J.M.3.:@_c.5`QG;
1c013c18:	1c37 0928 4338 042d 0313 0607 020d 0000     7.(.8C-.........
1c013c28:	0101 0001 0001 0100 0202 1c08 b331 b1a4     ............1...
1c013c38:	b7b8 b8b8 b7b6 b6b7 b6b6 b6b7 b6b6 b5b6     ................
1c013c48:	b6b6 b7b5 b6b5 b5b6 c3c3 c3c3 c3c3 c4c4     ................
1c013c58:	c3c3 c3c4 c3c3 c4c4 c3c4 c2c3 c3c2 c2c2     ................
1c013c68:	c3c2 c5c1 6080 245e 3943 281c 9669 6a49     .....`^$C9.(i.Ij
1c013c78:	708d 2f3e 5c4c 558f 9a87 7996 5596 254b     .p>/L\.U...y.UK%
1c013c88:	525e 1e6b 130f 1220 131b 0d45 1917 1d2d     ^Rk... ...E...-.
1c013c98:	2e2f 131c 2309 0f24 1211 011d 1204 0000     /....#$.........
1c013ca8:	0002 0104 0102 1404 0001 4e0f b5ad b9b5     ...........N....
1c013cb8:	b2b7 b6b8 b6b6 b6b5 b6b6 b6b6 b4b6 b5b6     ................
1c013cc8:	b6b6 b4b5 b5b5 b5b5 c2c2 c4c2 c2c3 c4c4     ................
1c013cd8:	c3c4 c2c3 c3c3 c4c3 c3c2 c2c3 c2c2 c2c1     ................
1c013ce8:	c3c3 c0c2 82b7 3062 2e28 2d2d 3f62 4d4d     ......b0(.--b?MM
1c013cf8:	887c 8f5f 5649 9f7d 699c d6b9 7b8e 929d     |._.IV}..i...{..
1c013d08:	4362 2826 0611 0404 0e0e 2011 011b 3f0e     bC&(....... ...?
1c013d18:	1c2d 2615 121c 0c0c 1c0e 1003 0305 010c     -..&............
1c013d28:	0000 0301 0c11 2a15 0402 a069 b5b8 bab7     .......*..i.....
1c013d38:	b6b7 b6b4 b7b5 b5b6 b5b5 b5b5 b5b5 b5b6     ................
1c013d48:	b6b6 b6b6 b5b5 b4b5 c3c2 c2c2 c3c3 c2c2     ................
1c013d58:	c2c3 c2c2 c2c3 c2c2 c2c1 c2c2 c2c2 c0c0     ................
1c013d68:	c2c2 c3c3 b1c1 424e 2735 401f 4c31 3552     ......NB5'.@1LR5
1c013d78:	9d5e 6ca9 6334 973e 9ba4 a250 b8c9 748a     ^..l4c>...P....t
1c013d88:	477a 1b23 0c08 021b 0401 0508 150d 0c0c     zG#.............
1c013d98:	1933 1926 1220 0d1b 120b 0412 030d 0403     3.&. ...........
1c013da8:	0102 0601 271a 0407 2007 a3a1 b4bb b5b6     .....'... ......
1c013db8:	b6b6 b5b5 b5b5 b5b5 b5b6 b5b5 b5b5 b5b5     ................
1c013dc8:	b5b5 b4b3 b5b5 b3b5 c2c1 c2c2 c3c2 c2c2     ................
1c013dd8:	c2c2 c2c2 c1c0 c2c2 c1c2 c0c2 c0c0 c0c0     ................
1c013de8:	c0c0 c1c0 c2c1 44c3 2335 3022 5f1f 3844     .......D5#"0._D8
1c013df8:	6839 bc73 49a2 3d43 8d7c 90a4 6b61 9360     9hs..IC=|...ak`.
1c013e08:	3f9f 2c46 2430 070f 0001 0a01 2b01 0512     .?F,0$.......+..
1c013e18:	2217 4027 2e1c 1115 0c1c 2613 030b 1408     ."'@.......&....
1c013e28:	0508 0b05 302b 642e ae35 b8bc b6b8 b6b6     ....+0.d5.......
1c013e38:	b5b5 b6b6 b6b5 b5b5 b6b5 b5b5 b5b5 b4b5     ................
1c013e48:	b4b4 b4b4 b3b4 b3b3 c2c0 c1c2 c0c2 c1c1     ................
1c013e58:	c2c1 c0c0 c1c0 c0c1 c1c0 c0c0 c0c0 c0bf     ................
1c013e68:	c0c0 c0c0 bfbe bdbf 249f 181a 603a 2f60     .........$..:``/
1c013e78:	5f2e 63ad 71b0 2a2d 282f 6fa5 6a5e 3e5a     ._.c.q-*/(.o^jZ>
1c013e88:	3227 5521 0d3d 0c0c 0507 0202 0f06 201f     '2!U=.......... 
1c013e98:	0813 1623 3833 1759 251b 051c 0a15 0508     ..#.38Y..%......
1c013ea8:	2619 281e 3553 918e b3b3 b6b8 b6b5 b6b6     .&.(S5..........
1c013eb8:	b5b4 b5b5 b5b4 b4b5 b5b4 b4b5 b4b4 b4b4     ................
1c013ec8:	b3b4 b3b4 b4b4 b2b3 c1c0 c0c1 c0c0 c0c1     ................
1c013ed8:	c0c1 c0c0 c0c0 c1c0 c0c0 bfc0 bfbf bfbf     ................
1c013ee8:	bfbf bfbf c0c0 bec0 bdc1 2379 6448 5747     ..........y#HdGW
1c013ef8:	2f22 b36f 6a49 2e43 5625 2633 367e 2c32     "/o.IjC.%V3&~62,
1c013f08:	3133 201c 0307 1711 0609 0305 0505 0716     31. ............
1c013f18:	1d29 1e11 2422 6d22 261b 2341 0a19 0701     )..."$"m.&A#....
1c013f28:	5513 4d58 b3ae b9b0 b6b8 b5b6 b5b6 b4b4     .UXM............
1c013f38:	b4b4 b4b4 b3b4 b4b4 b4b4 b4b4 b4b4 b3b4     ................
1c013f48:	b3b3 b2b3 b2b2 b1b2 c0c0 c0bf c0c0 c0c0     ................
1c013f58:	c0c0 c0c0 c0bf bfbf c0bf bec0 bfbe bebe     ................
1c013f68:	bebe bfbd bebe c0be c0c0 b9c1 5945 3e4b     ............EYK>
1c013f78:	2e66 8e21 28c7 2f3b 300f 464f 2730 3d2c     f.!..(;/.0OF0',=
1c013f88:	4435 1a1f 121a 1c06 1a0f 140e 100a 311a     5D.............1
1c013f98:	1626 334b 2824 3d29 2d27 2954 1615 080a     &.K3$()='-T)....
1c013fa8:	4134 894e acb6 b5b9 b6b6 b5b6 b5b4 b4b4     4AN.............
1c013fb8:	b3b4 b4b3 b3b4 b4b4 b3b4 b3b4 b3b3 b2b2     ................
1c013fc8:	b2b2 b2b2 b2b1 b1b2 bebf c0bf bfbf bfbf     ................
1c013fd8:	c0bf bfbf bfbf bfbf bdbf bdbe bdbd bdbd     ................
1c013fe8:	bebe bdbc bdbd bebe bebe c2c0 68b4 3b4a     .............hJ;
1c013ff8:	a13e 234b 8375 2444 0f14 2c16 5b3d 9195     >.K#u.D$...,=[..
1c014008:	6368 4e51 122c 0d1d 2610 1d30 4d22 4b2e     hcQN,....&0."M.K
1c014018:	4167 447a 9e31 4b7a 114a 226a 2c21 7137     gAzD1.zKJ.j"!,7q
1c014028:	5049 bc78 aeb4 b5b5 b4b6 b4b4 b3b3 b3b3     IPx.............
1c014038:	b3b4 b3b2 b3b3 b3b3 b2b3 b2b2 b2b2 b1b2     ................
1c014048:	b1b2 b2b1 b0b1 adb0 bfbe bfbe bebf bebe     ................
1c014058:	bfbe bebe bdbd bdbd bdbd bdbd bdbd bdbe     ................
1c014068:	bdbd bcbc bcbc bcbc b9bc bdbe b3be 4077     ..............w@
1c014078:	5f33 896a 3a2f 3c6e 081a 120c 5540 8f75     3_j./:n<....@Uu.
1c014088:	b2b3 b2ac 759f 131e 7a19 5a58 9581 844f     .....u...zXZ..O.
1c014098:	48ac 4e9c 976e 8985 5153 335d 3d20 4776     .H.Nn...SQ]3 =vG
1c0140a8:	7354 b5b8 b5b5 b4b5 b3b4 b2b3 b2b2 b2b3     Ts..............
1c0140b8:	b2b2 b3b3 b2b2 b2b2 b1b2 b1b2 b1b1 b1b1     ................
1c0140c8:	b1b1 b0b0 aeaf adae bdbd bdbd bebd bdbd     ................
1c0140d8:	bdbd bcbd bdbd bcbd bcbc bbbc bdbb bcbc     ................
1c0140e8:	bcbc bcbc babb bbbc b9bc babe b4bf 81b3     ................
1c0140f8:	3051 7974 4553 4942 1137 090c 490b 487f     Q0tySEBI7....I.H
1c014108:	b492 bbb3 bcb6 2320 b530 9c8b 8a67 b5b1     ...... #0...g...
1c014118:	aeb9 3db1 a15a 98ac 796d 6272 6461 4a37     ...=Z...myrbad7J
1c014128:	b48b b7b5 b4b5 b3b4 b4b3 b3b3 b3b2 b2b2     ................
1c014138:	b2b2 b2b2 b1b2 b1b2 b0b2 b1b1 b1b0 b0b0     ................
1c014148:	afaf afaf adae aaad                         ........

1c014150 <pos_uart>:
	...
