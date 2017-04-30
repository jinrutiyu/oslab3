
app/uMain.elf：     文件格式 elf32-i386


Disassembly of section .text:

00200000 <uEntry>:
  200000:	55                   	push   %ebp
  200001:	89 e5                	mov    %esp,%ebp
  200003:	83 ec 14             	sub    $0x14,%esp
  200006:	68 b8 04 20 00       	push   $0x2004b8
  20000b:	e8 ec 02 00 00       	call   2002fc <printf>
  200010:	c7 04 24 ce 04 20 00 	movl   $0x2004ce,(%esp)
  200017:	e8 e0 02 00 00       	call   2002fc <printf>
  20001c:	c7 04 24 b0 05 20 00 	movl   $0x2005b0,(%esp)
  200023:	e8 d4 02 00 00       	call   2002fc <printf>
  200028:	c7 04 24 ec 05 20 00 	movl   $0x2005ec,(%esp)
  20002f:	e8 c8 02 00 00       	call   2002fc <printf>
  200034:	c7 04 24 20 06 20 00 	movl   $0x200620,(%esp)
  20003b:	e8 bc 02 00 00       	call   2002fc <printf>
  200040:	c7 04 24 9c 06 20 00 	movl   $0x20069c,(%esp)
  200047:	e8 b0 02 00 00       	call   2002fc <printf>
  20004c:	c7 04 24 e5 04 20 00 	movl   $0x2004e5,(%esp)
  200053:	e8 a4 02 00 00       	call   2002fc <printf>
  200058:	c7 04 24 c0 06 20 00 	movl   $0x2006c0,(%esp)
  20005f:	e8 98 02 00 00       	call   2002fc <printf>
  200064:	c7 04 24 b0 05 20 00 	movl   $0x2005b0,(%esp)
  20006b:	e8 8c 02 00 00       	call   2002fc <printf>
  200070:	c7 04 24 03 05 20 00 	movl   $0x200503,(%esp)
  200077:	e8 80 02 00 00       	call   2002fc <printf>
  20007c:	c7 04 24 40 07 20 00 	movl   $0x200740,(%esp)
  200083:	e8 74 02 00 00       	call   2002fc <printf>
  200088:	58                   	pop    %eax
  200089:	5a                   	pop    %edx
  20008a:	68 39 05 20 00       	push   $0x200539
  20008f:	6a 74                	push   $0x74
  200091:	68 11 05 20 00       	push   $0x200511
  200096:	68 ae 05 20 00       	push   $0x2005ae
  20009b:	68 15 05 20 00       	push   $0x200515
  2000a0:	68 1c 05 20 00       	push   $0x20051c
  2000a5:	e8 52 02 00 00       	call   2002fc <printf>
  2000aa:	83 c4 18             	add    $0x18,%esp
  2000ad:	6a 62                	push   $0x62
  2000af:	6a 61                	push   $0x61
  2000b1:	6a 6c                	push   $0x6c
  2000b3:	6a 53                	push   $0x53
  2000b5:	6a 4f                	push   $0x4f
  2000b7:	68 2e 05 20 00       	push   $0x20052e
  2000bc:	e8 3b 02 00 00       	call   2002fc <printf>
  2000c1:	83 c4 1c             	add    $0x1c,%esp
  2000c4:	68 00 00 10 00       	push   $0x100000
  2000c9:	68 7c 07 20 00       	push   $0x20077c
  2000ce:	68 00 00 10 00       	push   $0x100000
  2000d3:	68 b4 07 20 00       	push   $0x2007b4
  2000d8:	68 3b 05 20 00       	push   $0x20053b
  2000dd:	68 44 05 20 00       	push   $0x200544
  2000e2:	68 e4 07 20 00       	push   $0x2007e4
  2000e7:	e8 10 02 00 00       	call   2002fc <printf>
  2000ec:	83 c4 14             	add    $0x14,%esp
  2000ef:	68 9c 06 20 00       	push   $0x20069c
  2000f4:	e8 03 02 00 00       	call   2002fc <printf>
  2000f9:	c7 04 24 e5 04 20 00 	movl   $0x2004e5,(%esp)
  200100:	e8 f7 01 00 00       	call   2002fc <printf>
  200105:	83 c4 0c             	add    $0xc,%esp
  200108:	68 18 db 00 00       	push   $0xdb18
  20010d:	68 c8 01 00 00       	push   $0x1c8
  200112:	6a 7b                	push   $0x7b
  200114:	6a 02                	push   $0x2
  200116:	6a 01                	push   $0x1
  200118:	6a 01                	push   $0x1
  20011a:	68 49 05 20 00       	push   $0x200549
  20011f:	e8 d8 01 00 00       	call   2002fc <printf>
  200124:	83 c4 1c             	add    $0x1c,%esp
  200127:	68 8e 8e 01 00       	push   $0x18e8e
  20012c:	68 00 80 ff ff       	push   $0xffff8000
  200131:	68 01 df ce ab       	push   $0xabcedf01
  200136:	68 00 00 00 80       	push   $0x80000000
  20013b:	6a ff                	push   $0xffffffff
  20013d:	6a 00                	push   $0x0
  20013f:	68 65 05 20 00       	push   $0x200565
  200144:	e8 b3 01 00 00       	call   2002fc <printf>
  200149:	83 c4 1c             	add    $0x1c,%esp
  20014c:	68 8e 8e 01 00       	push   $0x18e8e
  200151:	68 00 80 ff ff       	push   $0xffff8000
  200156:	68 01 df ce ab       	push   $0xabcedf01
  20015b:	68 00 00 00 80       	push   $0x80000000
  200160:	6a ff                	push   $0xffffffff
  200162:	6a 00                	push   $0x0
  200164:	68 7d 05 20 00       	push   $0x20057d
  200169:	e8 8e 01 00 00       	call   2002fc <printf>
  20016e:	83 c4 14             	add    $0x14,%esp
  200171:	68 40 07 20 00       	push   $0x200740
  200176:	e8 81 01 00 00       	call   2002fc <printf>
  20017b:	c7 04 24 95 05 20 00 	movl   $0x200595,(%esp)
  200182:	e8 75 01 00 00       	call   2002fc <printf>
  200187:	83 c4 10             	add    $0x10,%esp
  20018a:	eb fe                	jmp    20018a <uEntry+0x18a>

0020018c <syscall>:
  20018c:	55                   	push   %ebp
  20018d:	89 e5                	mov    %esp,%ebp
  20018f:	57                   	push   %edi
  200190:	56                   	push   %esi
  200191:	53                   	push   %ebx
  200192:	8b 55 14             	mov    0x14(%ebp),%edx
  200195:	8b 4d 10             	mov    0x10(%ebp),%ecx
  200198:	8b 45 08             	mov    0x8(%ebp),%eax
  20019b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  20019e:	8b 75 18             	mov    0x18(%ebp),%esi
  2001a1:	8b 7d 1c             	mov    0x1c(%ebp),%edi
  2001a4:	cd 80                	int    $0x80
  2001a6:	5b                   	pop    %ebx
  2001a7:	5e                   	pop    %esi
  2001a8:	5f                   	pop    %edi
  2001a9:	5d                   	pop    %ebp
  2001aa:	c3                   	ret    
  2001ab:	90                   	nop

002001ac <addString2Buff>:
  2001ac:	55                   	push   %ebp
  2001ad:	89 e5                	mov    %esp,%ebp
  2001af:	8b 4d 08             	mov    0x8(%ebp),%ecx
  2001b2:	8a 11                	mov    (%ecx),%dl
  2001b4:	84 d2                	test   %dl,%dl
  2001b6:	74 1b                	je     2001d3 <addString2Buff+0x27>
  2001b8:	a1 00 1e 20 00       	mov    0x201e00,%eax
  2001bd:	29 c1                	sub    %eax,%ecx
  2001bf:	90                   	nop
  2001c0:	40                   	inc    %eax
  2001c1:	88 90 ff 19 20 00    	mov    %dl,0x2019ff(%eax)
  2001c7:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  2001ca:	84 d2                	test   %dl,%dl
  2001cc:	75 f2                	jne    2001c0 <addString2Buff+0x14>
  2001ce:	a3 00 1e 20 00       	mov    %eax,0x201e00
  2001d3:	5d                   	pop    %ebp
  2001d4:	c3                   	ret    
  2001d5:	8d 76 00             	lea    0x0(%esi),%esi

002001d8 <addCh2Buff>:
  2001d8:	55                   	push   %ebp
  2001d9:	89 e5                	mov    %esp,%ebp
  2001db:	a1 00 1e 20 00       	mov    0x201e00,%eax
  2001e0:	8d 50 01             	lea    0x1(%eax),%edx
  2001e3:	89 15 00 1e 20 00    	mov    %edx,0x201e00
  2001e9:	8b 55 08             	mov    0x8(%ebp),%edx
  2001ec:	88 90 00 1a 20 00    	mov    %dl,0x201a00(%eax)
  2001f2:	5d                   	pop    %ebp
  2001f3:	c3                   	ret    

002001f4 <addDec2Buff>:
  2001f4:	55                   	push   %ebp
  2001f5:	89 e5                	mov    %esp,%ebp
  2001f7:	56                   	push   %esi
  2001f8:	53                   	push   %ebx
  2001f9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  2001fc:	85 db                	test   %ebx,%ebx
  2001fe:	0f 89 92 00 00 00    	jns    200296 <addDec2Buff+0xa2>
  200204:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  20020a:	74 58                	je     200264 <addDec2Buff+0x70>
  20020c:	a1 00 1e 20 00       	mov    0x201e00,%eax
  200211:	c6 80 00 1a 20 00 2d 	movb   $0x2d,0x201a00(%eax)
  200218:	40                   	inc    %eax
  200219:	f7 db                	neg    %ebx
  20021b:	a3 00 1e 20 00       	mov    %eax,0x201e00
  200220:	83 ec 0c             	sub    $0xc,%esp
  200223:	b8 67 66 66 66       	mov    $0x66666667,%eax
  200228:	f7 eb                	imul   %ebx
  20022a:	89 d6                	mov    %edx,%esi
  20022c:	c1 fe 02             	sar    $0x2,%esi
  20022f:	89 d8                	mov    %ebx,%eax
  200231:	c1 f8 1f             	sar    $0x1f,%eax
  200234:	29 c6                	sub    %eax,%esi
  200236:	56                   	push   %esi
  200237:	e8 b8 ff ff ff       	call   2001f4 <addDec2Buff>
  20023c:	8b 15 00 1e 20 00    	mov    0x201e00,%edx
  200242:	8d 42 01             	lea    0x1(%edx),%eax
  200245:	a3 00 1e 20 00       	mov    %eax,0x201e00
  20024a:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  20024d:	01 c0                	add    %eax,%eax
  20024f:	29 c3                	sub    %eax,%ebx
  200251:	83 c3 30             	add    $0x30,%ebx
  200254:	88 9a 00 1a 20 00    	mov    %bl,0x201a00(%edx)
  20025a:	83 c4 10             	add    $0x10,%esp
  20025d:	8d 65 f8             	lea    -0x8(%ebp),%esp
  200260:	5b                   	pop    %ebx
  200261:	5e                   	pop    %esi
  200262:	5d                   	pop    %ebp
  200263:	c3                   	ret    
  200264:	8b 1d 00 1e 20 00    	mov    0x201e00,%ebx
  20026a:	8d 43 01             	lea    0x1(%ebx),%eax
  20026d:	b2 2d                	mov    $0x2d,%dl
  20026f:	b9 0c 08 20 00       	mov    $0x20080c,%ecx
  200274:	29 d9                	sub    %ebx,%ecx
  200276:	66 90                	xchg   %ax,%ax
  200278:	89 c3                	mov    %eax,%ebx
  20027a:	88 90 ff 19 20 00    	mov    %dl,0x2019ff(%eax)
  200280:	40                   	inc    %eax
  200281:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  200285:	84 d2                	test   %dl,%dl
  200287:	75 ef                	jne    200278 <addDec2Buff+0x84>
  200289:	89 1d 00 1e 20 00    	mov    %ebx,0x201e00
  20028f:	8d 65 f8             	lea    -0x8(%ebp),%esp
  200292:	5b                   	pop    %ebx
  200293:	5e                   	pop    %esi
  200294:	5d                   	pop    %ebp
  200295:	c3                   	ret    
  200296:	74 c5                	je     20025d <addDec2Buff+0x69>
  200298:	eb 86                	jmp    200220 <addDec2Buff+0x2c>
  20029a:	66 90                	xchg   %ax,%ax

0020029c <addHex2Buff>:
  20029c:	55                   	push   %ebp
  20029d:	89 e5                	mov    %esp,%ebp
  20029f:	8b 45 08             	mov    0x8(%ebp),%eax
  2002a2:	85 c0                	test   %eax,%eax
  2002a4:	75 02                	jne    2002a8 <addHex2Buff+0xc>
  2002a6:	5d                   	pop    %ebp
  2002a7:	c3                   	ret    
  2002a8:	5d                   	pop    %ebp
  2002a9:	eb 01                	jmp    2002ac <addHex2Buff.part.1>
  2002ab:	90                   	nop

002002ac <addHex2Buff.part.1>:
  2002ac:	55                   	push   %ebp
  2002ad:	89 e5                	mov    %esp,%ebp
  2002af:	53                   	push   %ebx
  2002b0:	83 ec 10             	sub    $0x10,%esp
  2002b3:	89 c3                	mov    %eax,%ebx
  2002b5:	89 c2                	mov    %eax,%edx
  2002b7:	c1 ea 04             	shr    $0x4,%edx
  2002ba:	52                   	push   %edx
  2002bb:	e8 dc ff ff ff       	call   20029c <addHex2Buff>
  2002c0:	89 d8                	mov    %ebx,%eax
  2002c2:	83 e0 0f             	and    $0xf,%eax
  2002c5:	83 c4 10             	add    $0x10,%esp
  2002c8:	8b 15 00 1e 20 00    	mov    0x201e00,%edx
  2002ce:	8d 4a 01             	lea    0x1(%edx),%ecx
  2002d1:	89 0d 00 1e 20 00    	mov    %ecx,0x201e00
  2002d7:	83 f8 09             	cmp    $0x9,%eax
  2002da:	76 10                	jbe    2002ec <addHex2Buff.part.1+0x40>
  2002dc:	83 c0 57             	add    $0x57,%eax
  2002df:	88 82 00 1a 20 00    	mov    %al,0x201a00(%edx)
  2002e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  2002e8:	c9                   	leave  
  2002e9:	c3                   	ret    
  2002ea:	66 90                	xchg   %ax,%ax
  2002ec:	83 c0 30             	add    $0x30,%eax
  2002ef:	88 82 00 1a 20 00    	mov    %al,0x201a00(%edx)
  2002f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  2002f8:	c9                   	leave  
  2002f9:	c3                   	ret    
  2002fa:	66 90                	xchg   %ax,%ax

002002fc <printf>:
  2002fc:	55                   	push   %ebp
  2002fd:	89 e5                	mov    %esp,%ebp
  2002ff:	57                   	push   %edi
  200300:	56                   	push   %esi
  200301:	53                   	push   %ebx
  200302:	83 ec 0c             	sub    $0xc,%esp
  200305:	8b 5d 08             	mov    0x8(%ebp),%ebx
  200308:	8d 75 0c             	lea    0xc(%ebp),%esi
  20030b:	8a 03                	mov    (%ebx),%al
  20030d:	84 c0                	test   %al,%al
  20030f:	74 21                	je     200332 <printf+0x36>
  200311:	3c 25                	cmp    $0x25,%al
  200313:	74 53                	je     200368 <printf+0x6c>
  200315:	8b 15 00 1e 20 00    	mov    0x201e00,%edx
  20031b:	8d 4a 01             	lea    0x1(%edx),%ecx
  20031e:	89 0d 00 1e 20 00    	mov    %ecx,0x201e00
  200324:	88 82 00 1a 20 00    	mov    %al,0x201a00(%edx)
  20032a:	8a 43 01             	mov    0x1(%ebx),%al
  20032d:	43                   	inc    %ebx
  20032e:	84 c0                	test   %al,%al
  200330:	75 df                	jne    200311 <printf+0x15>
  200332:	8b 15 00 1e 20 00    	mov    0x201e00,%edx
  200338:	c6 82 00 1a 20 00 00 	movb   $0x0,0x201a00(%edx)
  20033f:	31 f6                	xor    %esi,%esi
  200341:	bb 01 00 00 00       	mov    $0x1,%ebx
  200346:	b8 04 00 00 00       	mov    $0x4,%eax
  20034b:	b9 00 1a 20 00       	mov    $0x201a00,%ecx
  200350:	89 f7                	mov    %esi,%edi
  200352:	cd 80                	int    $0x80
  200354:	c7 05 00 1e 20 00 00 	movl   $0x0,0x201e00
  20035b:	00 00 00 
  20035e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  200361:	5b                   	pop    %ebx
  200362:	5e                   	pop    %esi
  200363:	5f                   	pop    %edi
  200364:	5d                   	pop    %ebp
  200365:	c3                   	ret    
  200366:	66 90                	xchg   %ax,%ax
  200368:	8a 43 01             	mov    0x1(%ebx),%al
  20036b:	3c 64                	cmp    $0x64,%al
  20036d:	74 61                	je     2003d0 <printf+0xd4>
  20036f:	7f 33                	jg     2003a4 <printf+0xa8>
  200371:	3c 25                	cmp    $0x25,%al
  200373:	0f 84 b7 00 00 00    	je     200430 <printf+0x134>
  200379:	3c 63                	cmp    $0x63,%al
  20037b:	75 4b                	jne    2003c8 <printf+0xcc>
  20037d:	8b 16                	mov    (%esi),%edx
  20037f:	a1 00 1e 20 00       	mov    0x201e00,%eax
  200384:	8d 48 01             	lea    0x1(%eax),%ecx
  200387:	89 0d 00 1e 20 00    	mov    %ecx,0x201e00
  20038d:	88 90 00 1a 20 00    	mov    %dl,0x201a00(%eax)
  200393:	8a 43 02             	mov    0x2(%ebx),%al
  200396:	83 c6 04             	add    $0x4,%esi
  200399:	83 c3 02             	add    $0x2,%ebx
  20039c:	e9 6c ff ff ff       	jmp    20030d <printf+0x11>
  2003a1:	8d 76 00             	lea    0x0(%esi),%esi
  2003a4:	3c 73                	cmp    $0x73,%al
  2003a6:	74 4c                	je     2003f4 <printf+0xf8>
  2003a8:	3c 78                	cmp    $0x78,%al
  2003aa:	75 1c                	jne    2003c8 <printf+0xcc>
  2003ac:	89 f0                	mov    %esi,%eax
  2003ae:	83 c6 04             	add    $0x4,%esi
  2003b1:	8b 00                	mov    (%eax),%eax
  2003b3:	85 c0                	test   %eax,%eax
  2003b5:	74 24                	je     2003db <printf+0xdf>
  2003b7:	e8 f0 fe ff ff       	call   2002ac <addHex2Buff.part.1>
  2003bc:	8a 43 02             	mov    0x2(%ebx),%al
  2003bf:	83 c3 02             	add    $0x2,%ebx
  2003c2:	e9 46 ff ff ff       	jmp    20030d <printf+0x11>
  2003c7:	90                   	nop
  2003c8:	43                   	inc    %ebx
  2003c9:	e9 3f ff ff ff       	jmp    20030d <printf+0x11>
  2003ce:	66 90                	xchg   %ax,%ax
  2003d0:	89 f0                	mov    %esi,%eax
  2003d2:	83 c6 04             	add    $0x4,%esi
  2003d5:	8b 00                	mov    (%eax),%eax
  2003d7:	85 c0                	test   %eax,%eax
  2003d9:	75 71                	jne    20044c <printf+0x150>
  2003db:	a1 00 1e 20 00       	mov    0x201e00,%eax
  2003e0:	8d 50 01             	lea    0x1(%eax),%edx
  2003e3:	89 15 00 1e 20 00    	mov    %edx,0x201e00
  2003e9:	c6 80 00 1a 20 00 30 	movb   $0x30,0x201a00(%eax)
  2003f0:	eb ca                	jmp    2003bc <printf+0xc0>
  2003f2:	66 90                	xchg   %ax,%ax
  2003f4:	8d 4e 04             	lea    0x4(%esi),%ecx
  2003f7:	8b 36                	mov    (%esi),%esi
  2003f9:	8a 16                	mov    (%esi),%dl
  2003fb:	84 d2                	test   %dl,%dl
  2003fd:	74 24                	je     200423 <printf+0x127>
  2003ff:	8b 3d 00 1e 20 00    	mov    0x201e00,%edi
  200405:	8d 47 01             	lea    0x1(%edi),%eax
  200408:	29 fe                	sub    %edi,%esi
  20040a:	66 90                	xchg   %ax,%ax
  20040c:	89 c7                	mov    %eax,%edi
  20040e:	88 90 ff 19 20 00    	mov    %dl,0x2019ff(%eax)
  200414:	40                   	inc    %eax
  200415:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  200419:	84 d2                	test   %dl,%dl
  20041b:	75 ef                	jne    20040c <printf+0x110>
  20041d:	89 3d 00 1e 20 00    	mov    %edi,0x201e00
  200423:	8a 43 02             	mov    0x2(%ebx),%al
  200426:	89 ce                	mov    %ecx,%esi
  200428:	83 c3 02             	add    $0x2,%ebx
  20042b:	e9 dd fe ff ff       	jmp    20030d <printf+0x11>
  200430:	a1 00 1e 20 00       	mov    0x201e00,%eax
  200435:	8d 50 01             	lea    0x1(%eax),%edx
  200438:	89 15 00 1e 20 00    	mov    %edx,0x201e00
  20043e:	c6 80 00 1a 20 00 25 	movb   $0x25,0x201a00(%eax)
  200445:	e9 72 ff ff ff       	jmp    2003bc <printf+0xc0>
  20044a:	66 90                	xchg   %ax,%ax
  20044c:	83 ec 0c             	sub    $0xc,%esp
  20044f:	50                   	push   %eax
  200450:	e8 9f fd ff ff       	call   2001f4 <addDec2Buff>
  200455:	83 c4 10             	add    $0x10,%esp
  200458:	e9 5f ff ff ff       	jmp    2003bc <printf+0xc0>
  20045d:	8d 76 00             	lea    0x0(%esi),%esi

00200460 <sleep>:
  200460:	55                   	push   %ebp
  200461:	89 e5                	mov    %esp,%ebp
  200463:	57                   	push   %edi
  200464:	56                   	push   %esi
  200465:	53                   	push   %ebx
  200466:	31 d2                	xor    %edx,%edx
  200468:	b8 a2 00 00 00       	mov    $0xa2,%eax
  20046d:	8b 5d 08             	mov    0x8(%ebp),%ebx
  200470:	89 d1                	mov    %edx,%ecx
  200472:	89 d6                	mov    %edx,%esi
  200474:	89 d7                	mov    %edx,%edi
  200476:	cd 80                	int    $0x80
  200478:	5b                   	pop    %ebx
  200479:	5e                   	pop    %esi
  20047a:	5f                   	pop    %edi
  20047b:	5d                   	pop    %ebp
  20047c:	c3                   	ret    
  20047d:	8d 76 00             	lea    0x0(%esi),%esi

00200480 <exit>:
  200480:	55                   	push   %ebp
  200481:	89 e5                	mov    %esp,%ebp
  200483:	57                   	push   %edi
  200484:	56                   	push   %esi
  200485:	53                   	push   %ebx
  200486:	31 d2                	xor    %edx,%edx
  200488:	b8 01 00 00 00       	mov    $0x1,%eax
  20048d:	89 d3                	mov    %edx,%ebx
  20048f:	89 d1                	mov    %edx,%ecx
  200491:	89 d6                	mov    %edx,%esi
  200493:	89 d7                	mov    %edx,%edi
  200495:	cd 80                	int    $0x80
  200497:	5b                   	pop    %ebx
  200498:	5e                   	pop    %esi
  200499:	5f                   	pop    %edi
  20049a:	5d                   	pop    %ebp
  20049b:	c3                   	ret    

0020049c <fork>:
  20049c:	55                   	push   %ebp
  20049d:	89 e5                	mov    %esp,%ebp
  20049f:	57                   	push   %edi
  2004a0:	56                   	push   %esi
  2004a1:	53                   	push   %ebx
  2004a2:	31 d2                	xor    %edx,%edx
  2004a4:	b8 02 00 00 00       	mov    $0x2,%eax
  2004a9:	89 d3                	mov    %edx,%ebx
  2004ab:	89 d1                	mov    %edx,%ecx
  2004ad:	89 d6                	mov    %edx,%esi
  2004af:	89 d7                	mov    %edx,%edi
  2004b1:	cd 80                	int    $0x80
  2004b3:	5b                   	pop    %ebx
  2004b4:	5e                   	pop    %esi
  2004b5:	5f                   	pop    %edi
  2004b6:	5d                   	pop    %ebp
  2004b7:	c3                   	ret    
