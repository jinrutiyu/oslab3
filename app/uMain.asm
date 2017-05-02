
app/uMain.elf：     文件格式 elf32-i386


Disassembly of section .text:

00200000 <uEntry>:
  200000:	55                   	push   %ebp
  200001:	89 e5                	mov    %esp,%ebp
  200003:	53                   	push   %ebx
  200004:	53                   	push   %ebx
  200005:	e8 a2 03 00 00       	call   2003ac <fork>
  20000a:	85 c0                	test   %eax,%eax
  20000c:	75 3e                	jne    20004c <uEntry+0x4c>
  20000e:	c7 05 00 16 20 00 02 	movl   $0x2,0x201600
  200015:	00 00 00 
  200018:	b8 02 00 00 00       	mov    $0x2,%eax
  20001d:	bb 08 00 00 00       	mov    $0x8,%ebx
  200022:	eb 05                	jmp    200029 <uEntry+0x29>
  200024:	a1 00 16 20 00       	mov    0x201600,%eax
  200029:	4b                   	dec    %ebx
  20002a:	51                   	push   %ecx
  20002b:	53                   	push   %ebx
  20002c:	50                   	push   %eax
  20002d:	68 c8 03 20 00       	push   $0x2003c8
  200032:	e8 d5 01 00 00       	call   20020c <printf>
  200037:	c7 04 24 80 00 00 00 	movl   $0x80,(%esp)
  20003e:	e8 2d 03 00 00       	call   200370 <sleep>
  200043:	83 c4 10             	add    $0x10,%esp
  200046:	85 db                	test   %ebx,%ebx
  200048:	75 da                	jne    200024 <uEntry+0x24>
  20004a:	eb fe                	jmp    20004a <uEntry+0x4a>
  20004c:	40                   	inc    %eax
  20004d:	74 44                	je     200093 <uEntry+0x93>
  20004f:	c7 05 00 16 20 00 01 	movl   $0x1,0x201600
  200056:	00 00 00 
  200059:	b8 01 00 00 00       	mov    $0x1,%eax
  20005e:	bb 08 00 00 00       	mov    $0x8,%ebx
  200063:	eb 08                	jmp    20006d <uEntry+0x6d>
  200065:	8d 76 00             	lea    0x0(%esi),%esi
  200068:	a1 00 16 20 00       	mov    0x201600,%eax
  20006d:	4b                   	dec    %ebx
  20006e:	52                   	push   %edx
  20006f:	53                   	push   %ebx
  200070:	50                   	push   %eax
  200071:	68 e5 03 20 00       	push   $0x2003e5
  200076:	e8 91 01 00 00       	call   20020c <printf>
  20007b:	c7 04 24 80 00 00 00 	movl   $0x80,(%esp)
  200082:	e8 e9 02 00 00       	call   200370 <sleep>
  200087:	83 c4 10             	add    $0x10,%esp
  20008a:	85 db                	test   %ebx,%ebx
  20008c:	75 da                	jne    200068 <uEntry+0x68>
  20008e:	e8 fd 02 00 00       	call   200390 <exit>
  200093:	31 c0                	xor    %eax,%eax
  200095:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  200098:	c9                   	leave  
  200099:	c3                   	ret    
  20009a:	66 90                	xchg   %ax,%ax

0020009c <syscall>:
  20009c:	55                   	push   %ebp
  20009d:	89 e5                	mov    %esp,%ebp
  20009f:	57                   	push   %edi
  2000a0:	56                   	push   %esi
  2000a1:	53                   	push   %ebx
  2000a2:	8b 55 14             	mov    0x14(%ebp),%edx
  2000a5:	8b 4d 10             	mov    0x10(%ebp),%ecx
  2000a8:	8b 45 08             	mov    0x8(%ebp),%eax
  2000ab:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  2000ae:	8b 75 18             	mov    0x18(%ebp),%esi
  2000b1:	8b 7d 1c             	mov    0x1c(%ebp),%edi
  2000b4:	cd 80                	int    $0x80
  2000b6:	5b                   	pop    %ebx
  2000b7:	5e                   	pop    %esi
  2000b8:	5f                   	pop    %edi
  2000b9:	5d                   	pop    %ebp
  2000ba:	c3                   	ret    
  2000bb:	90                   	nop

002000bc <addString2Buff>:
  2000bc:	55                   	push   %ebp
  2000bd:	89 e5                	mov    %esp,%ebp
  2000bf:	8b 4d 08             	mov    0x8(%ebp),%ecx
  2000c2:	8a 11                	mov    (%ecx),%dl
  2000c4:	84 d2                	test   %dl,%dl
  2000c6:	74 1b                	je     2000e3 <addString2Buff+0x27>
  2000c8:	a1 20 1a 20 00       	mov    0x201a20,%eax
  2000cd:	29 c1                	sub    %eax,%ecx
  2000cf:	90                   	nop
  2000d0:	40                   	inc    %eax
  2000d1:	88 90 1f 16 20 00    	mov    %dl,0x20161f(%eax)
  2000d7:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  2000da:	84 d2                	test   %dl,%dl
  2000dc:	75 f2                	jne    2000d0 <addString2Buff+0x14>
  2000de:	a3 20 1a 20 00       	mov    %eax,0x201a20
  2000e3:	5d                   	pop    %ebp
  2000e4:	c3                   	ret    
  2000e5:	8d 76 00             	lea    0x0(%esi),%esi

002000e8 <addCh2Buff>:
  2000e8:	55                   	push   %ebp
  2000e9:	89 e5                	mov    %esp,%ebp
  2000eb:	a1 20 1a 20 00       	mov    0x201a20,%eax
  2000f0:	8d 50 01             	lea    0x1(%eax),%edx
  2000f3:	89 15 20 1a 20 00    	mov    %edx,0x201a20
  2000f9:	8b 55 08             	mov    0x8(%ebp),%edx
  2000fc:	88 90 20 16 20 00    	mov    %dl,0x201620(%eax)
  200102:	5d                   	pop    %ebp
  200103:	c3                   	ret    

00200104 <addDec2Buff>:
  200104:	55                   	push   %ebp
  200105:	89 e5                	mov    %esp,%ebp
  200107:	56                   	push   %esi
  200108:	53                   	push   %ebx
  200109:	8b 5d 08             	mov    0x8(%ebp),%ebx
  20010c:	85 db                	test   %ebx,%ebx
  20010e:	0f 89 92 00 00 00    	jns    2001a6 <addDec2Buff+0xa2>
  200114:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  20011a:	74 58                	je     200174 <addDec2Buff+0x70>
  20011c:	a1 20 1a 20 00       	mov    0x201a20,%eax
  200121:	c6 80 20 16 20 00 2d 	movb   $0x2d,0x201620(%eax)
  200128:	40                   	inc    %eax
  200129:	f7 db                	neg    %ebx
  20012b:	a3 20 1a 20 00       	mov    %eax,0x201a20
  200130:	83 ec 0c             	sub    $0xc,%esp
  200133:	b8 67 66 66 66       	mov    $0x66666667,%eax
  200138:	f7 eb                	imul   %ebx
  20013a:	89 d6                	mov    %edx,%esi
  20013c:	c1 fe 02             	sar    $0x2,%esi
  20013f:	89 d8                	mov    %ebx,%eax
  200141:	c1 f8 1f             	sar    $0x1f,%eax
  200144:	29 c6                	sub    %eax,%esi
  200146:	56                   	push   %esi
  200147:	e8 b8 ff ff ff       	call   200104 <addDec2Buff>
  20014c:	8b 15 20 1a 20 00    	mov    0x201a20,%edx
  200152:	8d 42 01             	lea    0x1(%edx),%eax
  200155:	a3 20 1a 20 00       	mov    %eax,0x201a20
  20015a:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  20015d:	01 c0                	add    %eax,%eax
  20015f:	29 c3                	sub    %eax,%ebx
  200161:	83 c3 30             	add    $0x30,%ebx
  200164:	88 9a 20 16 20 00    	mov    %bl,0x201620(%edx)
  20016a:	83 c4 10             	add    $0x10,%esp
  20016d:	8d 65 f8             	lea    -0x8(%ebp),%esp
  200170:	5b                   	pop    %ebx
  200171:	5e                   	pop    %esi
  200172:	5d                   	pop    %ebp
  200173:	c3                   	ret    
  200174:	8b 1d 20 1a 20 00    	mov    0x201a20,%ebx
  20017a:	8d 43 01             	lea    0x1(%ebx),%eax
  20017d:	b2 2d                	mov    $0x2d,%dl
  20017f:	b9 03 04 20 00       	mov    $0x200403,%ecx
  200184:	29 d9                	sub    %ebx,%ecx
  200186:	66 90                	xchg   %ax,%ax
  200188:	89 c3                	mov    %eax,%ebx
  20018a:	88 90 1f 16 20 00    	mov    %dl,0x20161f(%eax)
  200190:	40                   	inc    %eax
  200191:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  200195:	84 d2                	test   %dl,%dl
  200197:	75 ef                	jne    200188 <addDec2Buff+0x84>
  200199:	89 1d 20 1a 20 00    	mov    %ebx,0x201a20
  20019f:	8d 65 f8             	lea    -0x8(%ebp),%esp
  2001a2:	5b                   	pop    %ebx
  2001a3:	5e                   	pop    %esi
  2001a4:	5d                   	pop    %ebp
  2001a5:	c3                   	ret    
  2001a6:	74 c5                	je     20016d <addDec2Buff+0x69>
  2001a8:	eb 86                	jmp    200130 <addDec2Buff+0x2c>
  2001aa:	66 90                	xchg   %ax,%ax

002001ac <addHex2Buff>:
  2001ac:	55                   	push   %ebp
  2001ad:	89 e5                	mov    %esp,%ebp
  2001af:	8b 45 08             	mov    0x8(%ebp),%eax
  2001b2:	85 c0                	test   %eax,%eax
  2001b4:	75 02                	jne    2001b8 <addHex2Buff+0xc>
  2001b6:	5d                   	pop    %ebp
  2001b7:	c3                   	ret    
  2001b8:	5d                   	pop    %ebp
  2001b9:	eb 01                	jmp    2001bc <addHex2Buff.part.1>
  2001bb:	90                   	nop

002001bc <addHex2Buff.part.1>:
  2001bc:	55                   	push   %ebp
  2001bd:	89 e5                	mov    %esp,%ebp
  2001bf:	53                   	push   %ebx
  2001c0:	83 ec 10             	sub    $0x10,%esp
  2001c3:	89 c3                	mov    %eax,%ebx
  2001c5:	89 c2                	mov    %eax,%edx
  2001c7:	c1 ea 04             	shr    $0x4,%edx
  2001ca:	52                   	push   %edx
  2001cb:	e8 dc ff ff ff       	call   2001ac <addHex2Buff>
  2001d0:	89 d8                	mov    %ebx,%eax
  2001d2:	83 e0 0f             	and    $0xf,%eax
  2001d5:	83 c4 10             	add    $0x10,%esp
  2001d8:	8b 15 20 1a 20 00    	mov    0x201a20,%edx
  2001de:	8d 4a 01             	lea    0x1(%edx),%ecx
  2001e1:	89 0d 20 1a 20 00    	mov    %ecx,0x201a20
  2001e7:	83 f8 09             	cmp    $0x9,%eax
  2001ea:	76 10                	jbe    2001fc <addHex2Buff.part.1+0x40>
  2001ec:	83 c0 57             	add    $0x57,%eax
  2001ef:	88 82 20 16 20 00    	mov    %al,0x201620(%edx)
  2001f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  2001f8:	c9                   	leave  
  2001f9:	c3                   	ret    
  2001fa:	66 90                	xchg   %ax,%ax
  2001fc:	83 c0 30             	add    $0x30,%eax
  2001ff:	88 82 20 16 20 00    	mov    %al,0x201620(%edx)
  200205:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  200208:	c9                   	leave  
  200209:	c3                   	ret    
  20020a:	66 90                	xchg   %ax,%ax

0020020c <printf>:
  20020c:	55                   	push   %ebp
  20020d:	89 e5                	mov    %esp,%ebp
  20020f:	57                   	push   %edi
  200210:	56                   	push   %esi
  200211:	53                   	push   %ebx
  200212:	83 ec 0c             	sub    $0xc,%esp
  200215:	8b 5d 08             	mov    0x8(%ebp),%ebx
  200218:	8d 75 0c             	lea    0xc(%ebp),%esi
  20021b:	8a 03                	mov    (%ebx),%al
  20021d:	84 c0                	test   %al,%al
  20021f:	74 21                	je     200242 <printf+0x36>
  200221:	3c 25                	cmp    $0x25,%al
  200223:	74 53                	je     200278 <printf+0x6c>
  200225:	8b 15 20 1a 20 00    	mov    0x201a20,%edx
  20022b:	8d 4a 01             	lea    0x1(%edx),%ecx
  20022e:	89 0d 20 1a 20 00    	mov    %ecx,0x201a20
  200234:	88 82 20 16 20 00    	mov    %al,0x201620(%edx)
  20023a:	8a 43 01             	mov    0x1(%ebx),%al
  20023d:	43                   	inc    %ebx
  20023e:	84 c0                	test   %al,%al
  200240:	75 df                	jne    200221 <printf+0x15>
  200242:	8b 15 20 1a 20 00    	mov    0x201a20,%edx
  200248:	c6 82 20 16 20 00 00 	movb   $0x0,0x201620(%edx)
  20024f:	31 f6                	xor    %esi,%esi
  200251:	bb 01 00 00 00       	mov    $0x1,%ebx
  200256:	b8 04 00 00 00       	mov    $0x4,%eax
  20025b:	b9 20 16 20 00       	mov    $0x201620,%ecx
  200260:	89 f7                	mov    %esi,%edi
  200262:	cd 80                	int    $0x80
  200264:	c7 05 20 1a 20 00 00 	movl   $0x0,0x201a20
  20026b:	00 00 00 
  20026e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  200271:	5b                   	pop    %ebx
  200272:	5e                   	pop    %esi
  200273:	5f                   	pop    %edi
  200274:	5d                   	pop    %ebp
  200275:	c3                   	ret    
  200276:	66 90                	xchg   %ax,%ax
  200278:	8a 43 01             	mov    0x1(%ebx),%al
  20027b:	3c 64                	cmp    $0x64,%al
  20027d:	74 61                	je     2002e0 <printf+0xd4>
  20027f:	7f 33                	jg     2002b4 <printf+0xa8>
  200281:	3c 25                	cmp    $0x25,%al
  200283:	0f 84 b7 00 00 00    	je     200340 <printf+0x134>
  200289:	3c 63                	cmp    $0x63,%al
  20028b:	75 4b                	jne    2002d8 <printf+0xcc>
  20028d:	8b 16                	mov    (%esi),%edx
  20028f:	a1 20 1a 20 00       	mov    0x201a20,%eax
  200294:	8d 48 01             	lea    0x1(%eax),%ecx
  200297:	89 0d 20 1a 20 00    	mov    %ecx,0x201a20
  20029d:	88 90 20 16 20 00    	mov    %dl,0x201620(%eax)
  2002a3:	8a 43 02             	mov    0x2(%ebx),%al
  2002a6:	83 c6 04             	add    $0x4,%esi
  2002a9:	83 c3 02             	add    $0x2,%ebx
  2002ac:	e9 6c ff ff ff       	jmp    20021d <printf+0x11>
  2002b1:	8d 76 00             	lea    0x0(%esi),%esi
  2002b4:	3c 73                	cmp    $0x73,%al
  2002b6:	74 4c                	je     200304 <printf+0xf8>
  2002b8:	3c 78                	cmp    $0x78,%al
  2002ba:	75 1c                	jne    2002d8 <printf+0xcc>
  2002bc:	89 f0                	mov    %esi,%eax
  2002be:	83 c6 04             	add    $0x4,%esi
  2002c1:	8b 00                	mov    (%eax),%eax
  2002c3:	85 c0                	test   %eax,%eax
  2002c5:	74 24                	je     2002eb <printf+0xdf>
  2002c7:	e8 f0 fe ff ff       	call   2001bc <addHex2Buff.part.1>
  2002cc:	8a 43 02             	mov    0x2(%ebx),%al
  2002cf:	83 c3 02             	add    $0x2,%ebx
  2002d2:	e9 46 ff ff ff       	jmp    20021d <printf+0x11>
  2002d7:	90                   	nop
  2002d8:	43                   	inc    %ebx
  2002d9:	e9 3f ff ff ff       	jmp    20021d <printf+0x11>
  2002de:	66 90                	xchg   %ax,%ax
  2002e0:	89 f0                	mov    %esi,%eax
  2002e2:	83 c6 04             	add    $0x4,%esi
  2002e5:	8b 00                	mov    (%eax),%eax
  2002e7:	85 c0                	test   %eax,%eax
  2002e9:	75 71                	jne    20035c <printf+0x150>
  2002eb:	a1 20 1a 20 00       	mov    0x201a20,%eax
  2002f0:	8d 50 01             	lea    0x1(%eax),%edx
  2002f3:	89 15 20 1a 20 00    	mov    %edx,0x201a20
  2002f9:	c6 80 20 16 20 00 30 	movb   $0x30,0x201620(%eax)
  200300:	eb ca                	jmp    2002cc <printf+0xc0>
  200302:	66 90                	xchg   %ax,%ax
  200304:	8d 4e 04             	lea    0x4(%esi),%ecx
  200307:	8b 36                	mov    (%esi),%esi
  200309:	8a 16                	mov    (%esi),%dl
  20030b:	84 d2                	test   %dl,%dl
  20030d:	74 24                	je     200333 <printf+0x127>
  20030f:	8b 3d 20 1a 20 00    	mov    0x201a20,%edi
  200315:	8d 47 01             	lea    0x1(%edi),%eax
  200318:	29 fe                	sub    %edi,%esi
  20031a:	66 90                	xchg   %ax,%ax
  20031c:	89 c7                	mov    %eax,%edi
  20031e:	88 90 1f 16 20 00    	mov    %dl,0x20161f(%eax)
  200324:	40                   	inc    %eax
  200325:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  200329:	84 d2                	test   %dl,%dl
  20032b:	75 ef                	jne    20031c <printf+0x110>
  20032d:	89 3d 20 1a 20 00    	mov    %edi,0x201a20
  200333:	8a 43 02             	mov    0x2(%ebx),%al
  200336:	89 ce                	mov    %ecx,%esi
  200338:	83 c3 02             	add    $0x2,%ebx
  20033b:	e9 dd fe ff ff       	jmp    20021d <printf+0x11>
  200340:	a1 20 1a 20 00       	mov    0x201a20,%eax
  200345:	8d 50 01             	lea    0x1(%eax),%edx
  200348:	89 15 20 1a 20 00    	mov    %edx,0x201a20
  20034e:	c6 80 20 16 20 00 25 	movb   $0x25,0x201620(%eax)
  200355:	e9 72 ff ff ff       	jmp    2002cc <printf+0xc0>
  20035a:	66 90                	xchg   %ax,%ax
  20035c:	83 ec 0c             	sub    $0xc,%esp
  20035f:	50                   	push   %eax
  200360:	e8 9f fd ff ff       	call   200104 <addDec2Buff>
  200365:	83 c4 10             	add    $0x10,%esp
  200368:	e9 5f ff ff ff       	jmp    2002cc <printf+0xc0>
  20036d:	8d 76 00             	lea    0x0(%esi),%esi

00200370 <sleep>:
  200370:	55                   	push   %ebp
  200371:	89 e5                	mov    %esp,%ebp
  200373:	57                   	push   %edi
  200374:	56                   	push   %esi
  200375:	53                   	push   %ebx
  200376:	31 d2                	xor    %edx,%edx
  200378:	b8 a2 00 00 00       	mov    $0xa2,%eax
  20037d:	8b 5d 08             	mov    0x8(%ebp),%ebx
  200380:	89 d1                	mov    %edx,%ecx
  200382:	89 d6                	mov    %edx,%esi
  200384:	89 d7                	mov    %edx,%edi
  200386:	cd 80                	int    $0x80
  200388:	5b                   	pop    %ebx
  200389:	5e                   	pop    %esi
  20038a:	5f                   	pop    %edi
  20038b:	5d                   	pop    %ebp
  20038c:	c3                   	ret    
  20038d:	8d 76 00             	lea    0x0(%esi),%esi

00200390 <exit>:
  200390:	55                   	push   %ebp
  200391:	89 e5                	mov    %esp,%ebp
  200393:	57                   	push   %edi
  200394:	56                   	push   %esi
  200395:	53                   	push   %ebx
  200396:	31 d2                	xor    %edx,%edx
  200398:	b8 01 00 00 00       	mov    $0x1,%eax
  20039d:	89 d3                	mov    %edx,%ebx
  20039f:	89 d1                	mov    %edx,%ecx
  2003a1:	89 d6                	mov    %edx,%esi
  2003a3:	89 d7                	mov    %edx,%edi
  2003a5:	cd 80                	int    $0x80
  2003a7:	5b                   	pop    %ebx
  2003a8:	5e                   	pop    %esi
  2003a9:	5f                   	pop    %edi
  2003aa:	5d                   	pop    %ebp
  2003ab:	c3                   	ret    

002003ac <fork>:
  2003ac:	55                   	push   %ebp
  2003ad:	89 e5                	mov    %esp,%ebp
  2003af:	57                   	push   %edi
  2003b0:	56                   	push   %esi
  2003b1:	53                   	push   %ebx
  2003b2:	31 d2                	xor    %edx,%edx
  2003b4:	b8 02 00 00 00       	mov    $0x2,%eax
  2003b9:	89 d3                	mov    %edx,%ebx
  2003bb:	89 d1                	mov    %edx,%ecx
  2003bd:	89 d6                	mov    %edx,%esi
  2003bf:	89 d7                	mov    %edx,%edi
  2003c1:	cd 80                	int    $0x80
  2003c3:	5b                   	pop    %ebx
  2003c4:	5e                   	pop    %esi
  2003c5:	5f                   	pop    %edi
  2003c6:	5d                   	pop    %ebp
  2003c7:	c3                   	ret    
