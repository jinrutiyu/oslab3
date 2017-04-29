
kernel/kMain.elf：     文件格式 elf32-i386


Disassembly of section .text:

00100000 <initIntr>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	ba 21 00 00 00       	mov    $0x21,%edx
  100008:	b0 ff                	mov    $0xff,%al
  10000a:	ee                   	out    %al,(%dx)
  10000b:	ba a1 00 00 00       	mov    $0xa1,%edx
  100010:	ee                   	out    %al,(%dx)
  100011:	ba 20 00 00 00       	mov    $0x20,%edx
  100016:	b0 11                	mov    $0x11,%al
  100018:	ee                   	out    %al,(%dx)
  100019:	ba 21 00 00 00       	mov    $0x21,%edx
  10001e:	b0 20                	mov    $0x20,%al
  100020:	ee                   	out    %al,(%dx)
  100021:	b0 04                	mov    $0x4,%al
  100023:	ee                   	out    %al,(%dx)
  100024:	b0 03                	mov    $0x3,%al
  100026:	ee                   	out    %al,(%dx)
  100027:	ba a0 00 00 00       	mov    $0xa0,%edx
  10002c:	b0 11                	mov    $0x11,%al
  10002e:	ee                   	out    %al,(%dx)
  10002f:	ba a1 00 00 00       	mov    $0xa1,%edx
  100034:	b0 28                	mov    $0x28,%al
  100036:	ee                   	out    %al,(%dx)
  100037:	b0 02                	mov    $0x2,%al
  100039:	ee                   	out    %al,(%dx)
  10003a:	b0 03                	mov    $0x3,%al
  10003c:	ee                   	out    %al,(%dx)
  10003d:	ba 20 00 00 00       	mov    $0x20,%edx
  100042:	b0 68                	mov    $0x68,%al
  100044:	ee                   	out    %al,(%dx)
  100045:	b0 0a                	mov    $0xa,%al
  100047:	ee                   	out    %al,(%dx)
  100048:	ba a0 00 00 00       	mov    $0xa0,%edx
  10004d:	b0 68                	mov    $0x68,%al
  10004f:	ee                   	out    %al,(%dx)
  100050:	b0 0a                	mov    $0xa,%al
  100052:	ee                   	out    %al,(%dx)
  100053:	5d                   	pop    %ebp
  100054:	c3                   	ret    
  100055:	8d 76 00             	lea    0x0(%esi),%esi

00100058 <initTimer>:
  100058:	55                   	push   %ebp
  100059:	89 e5                	mov    %esp,%ebp
  10005b:	ba 43 00 00 00       	mov    $0x43,%edx
  100060:	b0 34                	mov    $0x34,%al
  100062:	ee                   	out    %al,(%dx)
  100063:	ba 40 00 00 00       	mov    $0x40,%edx
  100068:	b0 9b                	mov    $0x9b,%al
  10006a:	ee                   	out    %al,(%dx)
  10006b:	b0 2e                	mov    $0x2e,%al
  10006d:	ee                   	out    %al,(%dx)
  10006e:	5d                   	pop    %ebp
  10006f:	c3                   	ret    

00100070 <showCharInScreen>:
  100070:	55                   	push   %ebp
  100071:	89 e5                	mov    %esp,%ebp
  100073:	53                   	push   %ebx
  100074:	8b 45 08             	mov    0x8(%ebp),%eax
  100077:	3c 0a                	cmp    $0xa,%al
  100079:	74 35                	je     1000b0 <showCharInScreen+0x40>
  10007b:	8b 0d 60 21 10 00    	mov    0x102160,%ecx
  100081:	8b 15 80 22 10 00    	mov    0x102280,%edx
  100087:	8d 1c 89             	lea    (%ecx,%ecx,4),%ebx
  10008a:	c1 e3 04             	shl    $0x4,%ebx
  10008d:	01 d3                	add    %edx,%ebx
  10008f:	66 98                	cbtw   
  100091:	05 00 0c 00 00       	add    $0xc00,%eax
  100096:	66 89 84 1b 00 80 0b 	mov    %ax,0xb8000(%ebx,%ebx,1)
  10009d:	00 
  10009e:	8d 42 01             	lea    0x1(%edx),%eax
  1000a1:	a3 80 22 10 00       	mov    %eax,0x102280
  1000a6:	83 f8 50             	cmp    $0x50,%eax
  1000a9:	74 19                	je     1000c4 <showCharInScreen+0x54>
  1000ab:	5b                   	pop    %ebx
  1000ac:	5d                   	pop    %ebp
  1000ad:	c3                   	ret    
  1000ae:	66 90                	xchg   %ax,%ax
  1000b0:	ff 05 60 21 10 00    	incl   0x102160
  1000b6:	c7 05 80 22 10 00 00 	movl   $0x0,0x102280
  1000bd:	00 00 00 
  1000c0:	5b                   	pop    %ebx
  1000c1:	5d                   	pop    %ebp
  1000c2:	c3                   	ret    
  1000c3:	90                   	nop
  1000c4:	41                   	inc    %ecx
  1000c5:	89 0d 60 21 10 00    	mov    %ecx,0x102160
  1000cb:	c7 05 80 22 10 00 00 	movl   $0x0,0x102280
  1000d2:	00 00 00 
  1000d5:	5b                   	pop    %ebx
  1000d6:	5d                   	pop    %ebp
  1000d7:	c3                   	ret    

001000d8 <syscallHandle>:
  1000d8:	55                   	push   %ebp
  1000d9:	89 e5                	mov    %esp,%ebp
  1000db:	57                   	push   %edi
  1000dc:	56                   	push   %esi
  1000dd:	53                   	push   %ebx
  1000de:	83 ec 1c             	sub    $0x1c,%esp
  1000e1:	8b 45 08             	mov    0x8(%ebp),%eax
  1000e4:	8b 40 1c             	mov    0x1c(%eax),%eax
  1000e7:	83 f8 04             	cmp    $0x4,%eax
  1000ea:	74 34                	je     100120 <syscallHandle+0x48>
  1000ec:	77 22                	ja     100110 <syscallHandle+0x38>
  1000ee:	48                   	dec    %eax
  1000ef:	83 f8 01             	cmp    $0x1,%eax
  1000f2:	76 12                	jbe    100106 <syscallHandle+0x2e>
  1000f4:	83 ec 08             	sub    $0x8,%esp
  1000f7:	6a 78                	push   $0x78
  1000f9:	68 4c 0d 10 00       	push   $0x100d4c
  1000fe:	e8 0d 0b 00 00       	call   100c10 <abort>
  100103:	83 c4 10             	add    $0x10,%esp
  100106:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100109:	5b                   	pop    %ebx
  10010a:	5e                   	pop    %esi
  10010b:	5f                   	pop    %edi
  10010c:	5d                   	pop    %ebp
  10010d:	c3                   	ret    
  10010e:	66 90                	xchg   %ax,%ax
  100110:	3d a2 00 00 00       	cmp    $0xa2,%eax
  100115:	75 dd                	jne    1000f4 <syscallHandle+0x1c>
  100117:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10011a:	5b                   	pop    %ebx
  10011b:	5e                   	pop    %esi
  10011c:	5f                   	pop    %edi
  10011d:	5d                   	pop    %ebp
  10011e:	c3                   	ret    
  10011f:	90                   	nop
  100120:	8b 45 08             	mov    0x8(%ebp),%eax
  100123:	8b 40 10             	mov    0x10(%eax),%eax
  100126:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100129:	48                   	dec    %eax
  10012a:	83 f8 01             	cmp    $0x1,%eax
  10012d:	77 59                	ja     100188 <syscallHandle+0xb0>
  10012f:	8b 45 08             	mov    0x8(%ebp),%eax
  100132:	8b 78 18             	mov    0x18(%eax),%edi
  100135:	8b 40 14             	mov    0x14(%eax),%eax
  100138:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  10013b:	85 c0                	test   %eax,%eax
  10013d:	74 36                	je     100175 <syscallHandle+0x9d>
  10013f:	8a 07                	mov    (%edi),%al
  100141:	84 c0                	test   %al,%al
  100143:	74 64                	je     1001a9 <syscallHandle+0xd1>
  100145:	bb 01 00 00 00       	mov    $0x1,%ebx
  10014a:	eb 0d                	jmp    100159 <syscallHandle+0x81>
  10014c:	8d 4b 01             	lea    0x1(%ebx),%ecx
  10014f:	8a 44 39 ff          	mov    -0x1(%ecx,%edi,1),%al
  100153:	84 c0                	test   %al,%al
  100155:	74 4d                	je     1001a4 <syscallHandle+0xcc>
  100157:	89 cb                	mov    %ecx,%ebx
  100159:	0f be f0             	movsbl %al,%esi
  10015c:	83 ec 0c             	sub    $0xc,%esp
  10015f:	56                   	push   %esi
  100160:	e8 67 04 00 00       	call   1005cc <putChar>
  100165:	89 34 24             	mov    %esi,(%esp)
  100168:	e8 03 ff ff ff       	call   100070 <showCharInScreen>
  10016d:	83 c4 10             	add    $0x10,%esp
  100170:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  100173:	75 d7                	jne    10014c <syscallHandle+0x74>
  100175:	8b 45 08             	mov    0x8(%ebp),%eax
  100178:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10017b:	89 50 1c             	mov    %edx,0x1c(%eax)
  10017e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100181:	5b                   	pop    %ebx
  100182:	5e                   	pop    %esi
  100183:	5f                   	pop    %edi
  100184:	5d                   	pop    %ebp
  100185:	c3                   	ret    
  100186:	66 90                	xchg   %ax,%ax
  100188:	83 ec 08             	sub    $0x8,%esp
  10018b:	6a 67                	push   $0x67
  10018d:	68 4c 0d 10 00       	push   $0x100d4c
  100192:	e8 79 0a 00 00       	call   100c10 <abort>
  100197:	83 c4 10             	add    $0x10,%esp
  10019a:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10019d:	5b                   	pop    %ebx
  10019e:	5e                   	pop    %esi
  10019f:	5f                   	pop    %edi
  1001a0:	5d                   	pop    %ebp
  1001a1:	c3                   	ret    
  1001a2:	66 90                	xchg   %ax,%ax
  1001a4:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
  1001a7:	eb cc                	jmp    100175 <syscallHandle+0x9d>
  1001a9:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1001b0:	eb c3                	jmp    100175 <syscallHandle+0x9d>
  1001b2:	66 90                	xchg   %ax,%ax

001001b4 <irqHandle>:
  1001b4:	55                   	push   %ebp
  1001b5:	89 e5                	mov    %esp,%ebp
  1001b7:	83 ec 08             	sub    $0x8,%esp
  1001ba:	8b 55 08             	mov    0x8(%ebp),%edx
  1001bd:	1e                   	push   %ds
  1001be:	06                   	push   %es
  1001bf:	0f a0                	push   %fs
  1001c1:	0f a8                	push   %gs
  1001c3:	b8 10 00 00 00       	mov    $0x10,%eax
  1001c8:	8e c0                	mov    %eax,%es
  1001ca:	8e d8                	mov    %eax,%ds
  1001cc:	8e e0                	mov    %eax,%fs
  1001ce:	8b 42 20             	mov    0x20(%edx),%eax
  1001d1:	83 f8 0d             	cmp    $0xd,%eax
  1001d4:	74 52                	je     100228 <irqHandle+0x74>
  1001d6:	7e 38                	jle    100210 <irqHandle+0x5c>
  1001d8:	3d 80 00 00 00       	cmp    $0x80,%eax
  1001dd:	74 21                	je     100200 <irqHandle+0x4c>
  1001df:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  1001e4:	75 2f                	jne    100215 <irqHandle+0x61>
  1001e6:	83 ec 0c             	sub    $0xc,%esp
  1001e9:	68 5f 0d 10 00       	push   $0x100d5f
  1001ee:	e8 ad 08 00 00       	call   100aa0 <Log>
  1001f3:	83 c4 10             	add    $0x10,%esp
  1001f6:	0f a9                	pop    %gs
  1001f8:	0f a1                	pop    %fs
  1001fa:	07                   	pop    %es
  1001fb:	1f                   	pop    %ds
  1001fc:	c9                   	leave  
  1001fd:	c3                   	ret    
  1001fe:	66 90                	xchg   %ax,%ax
  100200:	83 ec 0c             	sub    $0xc,%esp
  100203:	52                   	push   %edx
  100204:	e8 cf fe ff ff       	call   1000d8 <syscallHandle>
  100209:	83 c4 10             	add    $0x10,%esp
  10020c:	eb e8                	jmp    1001f6 <irqHandle+0x42>
  10020e:	66 90                	xchg   %ax,%ax
  100210:	83 f8 ff             	cmp    $0xffffffff,%eax
  100213:	74 e1                	je     1001f6 <irqHandle+0x42>
  100215:	83 ec 08             	sub    $0x8,%esp
  100218:	50                   	push   %eax
  100219:	68 69 0d 10 00       	push   $0x100d69
  10021e:	e8 7d 08 00 00       	call   100aa0 <Log>
  100223:	83 c4 10             	add    $0x10,%esp
  100226:	eb ce                	jmp    1001f6 <irqHandle+0x42>
  100228:	83 ec 08             	sub    $0x8,%esp
  10022b:	6a 7d                	push   $0x7d
  10022d:	68 4c 0d 10 00       	push   $0x100d4c
  100232:	e8 d9 09 00 00       	call   100c10 <abort>
  100237:	83 c4 10             	add    $0x10,%esp
  10023a:	eb ba                	jmp    1001f6 <irqHandle+0x42>

0010023c <GProtectFaultHandle>:
  10023c:	55                   	push   %ebp
  10023d:	89 e5                	mov    %esp,%ebp
  10023f:	83 ec 10             	sub    $0x10,%esp
  100242:	6a 7d                	push   $0x7d
  100244:	68 4c 0d 10 00       	push   $0x100d4c
  100249:	e8 c2 09 00 00       	call   100c10 <abort>
  10024e:	83 c4 10             	add    $0x10,%esp
  100251:	c9                   	leave  
  100252:	c3                   	ret    
  100253:	90                   	nop

00100254 <initIdt>:
  100254:	55                   	push   %ebp
  100255:	89 e5                	mov    %esp,%ebp
  100257:	53                   	push   %ebx
  100258:	ba 25 0d 10 00       	mov    $0x100d25,%edx
  10025d:	89 d3                	mov    %edx,%ebx
  10025f:	c1 ea 10             	shr    $0x10,%edx
  100262:	b9 40 2b 10 00       	mov    $0x102b40,%ecx
  100267:	b8 40 23 10 00       	mov    $0x102340,%eax
  10026c:	66 89 18             	mov    %bx,(%eax)
  10026f:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  100275:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100279:	c6 40 05 8f          	movb   $0x8f,0x5(%eax)
  10027d:	66 89 50 06          	mov    %dx,0x6(%eax)
  100281:	83 c0 08             	add    $0x8,%eax
  100284:	39 c1                	cmp    %eax,%ecx
  100286:	75 e4                	jne    10026c <initIdt+0x18>
  100288:	b8 ce 0c 10 00       	mov    $0x100cce,%eax
  10028d:	66 a3 40 23 10 00    	mov    %ax,0x102340
  100293:	66 c7 05 42 23 10 00 	movw   $0x8,0x102342
  10029a:	08 00 
  10029c:	c6 05 44 23 10 00 00 	movb   $0x0,0x102344
  1002a3:	c6 05 45 23 10 00 8f 	movb   $0x8f,0x102345
  1002aa:	c1 e8 10             	shr    $0x10,%eax
  1002ad:	66 a3 46 23 10 00    	mov    %ax,0x102346
  1002b3:	b8 d4 0c 10 00       	mov    $0x100cd4,%eax
  1002b8:	66 a3 48 23 10 00    	mov    %ax,0x102348
  1002be:	66 c7 05 4a 23 10 00 	movw   $0x8,0x10234a
  1002c5:	08 00 
  1002c7:	c6 05 4c 23 10 00 00 	movb   $0x0,0x10234c
  1002ce:	c6 05 4d 23 10 00 8f 	movb   $0x8f,0x10234d
  1002d5:	c1 e8 10             	shr    $0x10,%eax
  1002d8:	66 a3 4e 23 10 00    	mov    %ax,0x10234e
  1002de:	b8 da 0c 10 00       	mov    $0x100cda,%eax
  1002e3:	66 a3 50 23 10 00    	mov    %ax,0x102350
  1002e9:	66 c7 05 52 23 10 00 	movw   $0x8,0x102352
  1002f0:	08 00 
  1002f2:	c6 05 54 23 10 00 00 	movb   $0x0,0x102354
  1002f9:	c6 05 55 23 10 00 8f 	movb   $0x8f,0x102355
  100300:	c1 e8 10             	shr    $0x10,%eax
  100303:	66 a3 56 23 10 00    	mov    %ax,0x102356
  100309:	b8 e0 0c 10 00       	mov    $0x100ce0,%eax
  10030e:	66 a3 58 23 10 00    	mov    %ax,0x102358
  100314:	66 c7 05 5a 23 10 00 	movw   $0x8,0x10235a
  10031b:	08 00 
  10031d:	c6 05 5c 23 10 00 00 	movb   $0x0,0x10235c
  100324:	c6 05 5d 23 10 00 8f 	movb   $0x8f,0x10235d
  10032b:	c1 e8 10             	shr    $0x10,%eax
  10032e:	66 a3 5e 23 10 00    	mov    %ax,0x10235e
  100334:	b8 e6 0c 10 00       	mov    $0x100ce6,%eax
  100339:	66 a3 60 23 10 00    	mov    %ax,0x102360
  10033f:	66 c7 05 62 23 10 00 	movw   $0x8,0x102362
  100346:	08 00 
  100348:	c6 05 64 23 10 00 00 	movb   $0x0,0x102364
  10034f:	c6 05 65 23 10 00 8f 	movb   $0x8f,0x102365
  100356:	c1 e8 10             	shr    $0x10,%eax
  100359:	66 a3 66 23 10 00    	mov    %ax,0x102366
  10035f:	b8 ec 0c 10 00       	mov    $0x100cec,%eax
  100364:	66 a3 68 23 10 00    	mov    %ax,0x102368
  10036a:	66 c7 05 6a 23 10 00 	movw   $0x8,0x10236a
  100371:	08 00 
  100373:	c6 05 6c 23 10 00 00 	movb   $0x0,0x10236c
  10037a:	c6 05 6d 23 10 00 8f 	movb   $0x8f,0x10236d
  100381:	c1 e8 10             	shr    $0x10,%eax
  100384:	66 a3 6e 23 10 00    	mov    %ax,0x10236e
  10038a:	b8 f2 0c 10 00       	mov    $0x100cf2,%eax
  10038f:	66 a3 70 23 10 00    	mov    %ax,0x102370
  100395:	66 c7 05 72 23 10 00 	movw   $0x8,0x102372
  10039c:	08 00 
  10039e:	c6 05 74 23 10 00 00 	movb   $0x0,0x102374
  1003a5:	c6 05 75 23 10 00 8f 	movb   $0x8f,0x102375
  1003ac:	c1 e8 10             	shr    $0x10,%eax
  1003af:	66 a3 76 23 10 00    	mov    %ax,0x102376
  1003b5:	b8 f8 0c 10 00       	mov    $0x100cf8,%eax
  1003ba:	66 a3 78 23 10 00    	mov    %ax,0x102378
  1003c0:	66 c7 05 7a 23 10 00 	movw   $0x8,0x10237a
  1003c7:	08 00 
  1003c9:	c6 05 7c 23 10 00 00 	movb   $0x0,0x10237c
  1003d0:	c6 05 7d 23 10 00 8f 	movb   $0x8f,0x10237d
  1003d7:	c1 e8 10             	shr    $0x10,%eax
  1003da:	66 a3 7e 23 10 00    	mov    %ax,0x10237e
  1003e0:	b8 fe 0c 10 00       	mov    $0x100cfe,%eax
  1003e5:	66 a3 80 23 10 00    	mov    %ax,0x102380
  1003eb:	66 c7 05 82 23 10 00 	movw   $0x8,0x102382
  1003f2:	08 00 
  1003f4:	c6 05 84 23 10 00 00 	movb   $0x0,0x102384
  1003fb:	c6 05 85 23 10 00 8f 	movb   $0x8f,0x102385
  100402:	c1 e8 10             	shr    $0x10,%eax
  100405:	66 a3 86 23 10 00    	mov    %ax,0x102386
  10040b:	b8 02 0d 10 00       	mov    $0x100d02,%eax
  100410:	66 a3 88 23 10 00    	mov    %ax,0x102388
  100416:	66 c7 05 8a 23 10 00 	movw   $0x8,0x10238a
  10041d:	08 00 
  10041f:	c6 05 8c 23 10 00 00 	movb   $0x0,0x10238c
  100426:	c6 05 8d 23 10 00 8f 	movb   $0x8f,0x10238d
  10042d:	c1 e8 10             	shr    $0x10,%eax
  100430:	66 a3 8e 23 10 00    	mov    %ax,0x10238e
  100436:	b8 08 0d 10 00       	mov    $0x100d08,%eax
  10043b:	66 a3 90 23 10 00    	mov    %ax,0x102390
  100441:	66 c7 05 92 23 10 00 	movw   $0x8,0x102392
  100448:	08 00 
  10044a:	c6 05 94 23 10 00 00 	movb   $0x0,0x102394
  100451:	c6 05 95 23 10 00 8f 	movb   $0x8f,0x102395
  100458:	c1 e8 10             	shr    $0x10,%eax
  10045b:	66 a3 96 23 10 00    	mov    %ax,0x102396
  100461:	b8 0c 0d 10 00       	mov    $0x100d0c,%eax
  100466:	66 a3 98 23 10 00    	mov    %ax,0x102398
  10046c:	66 c7 05 9a 23 10 00 	movw   $0x8,0x10239a
  100473:	08 00 
  100475:	c6 05 9c 23 10 00 00 	movb   $0x0,0x10239c
  10047c:	c6 05 9d 23 10 00 8f 	movb   $0x8f,0x10239d
  100483:	c1 e8 10             	shr    $0x10,%eax
  100486:	66 a3 9e 23 10 00    	mov    %ax,0x10239e
  10048c:	b8 10 0d 10 00       	mov    $0x100d10,%eax
  100491:	66 a3 a0 23 10 00    	mov    %ax,0x1023a0
  100497:	66 c7 05 a2 23 10 00 	movw   $0x8,0x1023a2
  10049e:	08 00 
  1004a0:	c6 05 a4 23 10 00 00 	movb   $0x0,0x1023a4
  1004a7:	c6 05 a5 23 10 00 8f 	movb   $0x8f,0x1023a5
  1004ae:	c1 e8 10             	shr    $0x10,%eax
  1004b1:	66 a3 a6 23 10 00    	mov    %ax,0x1023a6
  1004b7:	66 c7 05 aa 23 10 00 	movw   $0x8,0x1023aa
  1004be:	08 00 
  1004c0:	c6 05 ac 23 10 00 00 	movb   $0x0,0x1023ac
  1004c7:	c6 05 ad 23 10 00 8f 	movb   $0x8f,0x1023ad
  1004ce:	b8 18 0d 10 00       	mov    $0x100d18,%eax
  1004d3:	66 a3 b0 23 10 00    	mov    %ax,0x1023b0
  1004d9:	66 c7 05 b2 23 10 00 	movw   $0x8,0x1023b2
  1004e0:	08 00 
  1004e2:	c6 05 b4 23 10 00 00 	movb   $0x0,0x1023b4
  1004e9:	c6 05 b5 23 10 00 8f 	movb   $0x8f,0x1023b5
  1004f0:	c1 e8 10             	shr    $0x10,%eax
  1004f3:	66 a3 b6 23 10 00    	mov    %ax,0x1023b6
  1004f9:	b8 2b 0d 10 00       	mov    $0x100d2b,%eax
  1004fe:	66 a3 a8 23 10 00    	mov    %ax,0x1023a8
  100504:	c1 e8 10             	shr    $0x10,%eax
  100507:	66 a3 ae 23 10 00    	mov    %ax,0x1023ae
  10050d:	b8 2f 0d 10 00       	mov    $0x100d2f,%eax
  100512:	66 a3 40 27 10 00    	mov    %ax,0x102740
  100518:	66 c7 05 42 27 10 00 	movw   $0x8,0x102742
  10051f:	08 00 
  100521:	c6 05 44 27 10 00 00 	movb   $0x0,0x102744
  100528:	c6 05 45 27 10 00 ef 	movb   $0xef,0x102745
  10052f:	c1 e8 10             	shr    $0x10,%eax
  100532:	66 a3 46 27 10 00    	mov    %ax,0x102746
  100538:	b8 1c 0d 10 00       	mov    $0x100d1c,%eax
  10053d:	66 a3 40 24 10 00    	mov    %ax,0x102440
  100543:	66 c7 05 42 24 10 00 	movw   $0x8,0x102442
  10054a:	08 00 
  10054c:	c6 05 44 24 10 00 00 	movb   $0x0,0x102444
  100553:	c6 05 45 24 10 00 8e 	movb   $0x8e,0x102445
  10055a:	c1 e8 10             	shr    $0x10,%eax
  10055d:	66 a3 46 24 10 00    	mov    %ax,0x102446
  100563:	66 c7 05 84 22 10 00 	movw   $0x7ff,0x102284
  10056a:	ff 07 
  10056c:	b8 40 23 10 00       	mov    $0x102340,%eax
  100571:	66 a3 86 22 10 00    	mov    %ax,0x102286
  100577:	c1 e8 10             	shr    $0x10,%eax
  10057a:	66 a3 88 22 10 00    	mov    %ax,0x102288
  100580:	b8 84 22 10 00       	mov    $0x102284,%eax
  100585:	0f 01 18             	lidtl  (%eax)
  100588:	5b                   	pop    %ebx
  100589:	5d                   	pop    %ebp
  10058a:	c3                   	ret    
  10058b:	90                   	nop

0010058c <initSerial>:
  10058c:	55                   	push   %ebp
  10058d:	89 e5                	mov    %esp,%ebp
  10058f:	ba f9 03 00 00       	mov    $0x3f9,%edx
  100594:	31 c0                	xor    %eax,%eax
  100596:	ee                   	out    %al,(%dx)
  100597:	ba fb 03 00 00       	mov    $0x3fb,%edx
  10059c:	b0 80                	mov    $0x80,%al
  10059e:	ee                   	out    %al,(%dx)
  10059f:	ba f8 03 00 00       	mov    $0x3f8,%edx
  1005a4:	b0 01                	mov    $0x1,%al
  1005a6:	ee                   	out    %al,(%dx)
  1005a7:	ba f9 03 00 00       	mov    $0x3f9,%edx
  1005ac:	31 c0                	xor    %eax,%eax
  1005ae:	ee                   	out    %al,(%dx)
  1005af:	ba fb 03 00 00       	mov    $0x3fb,%edx
  1005b4:	b0 03                	mov    $0x3,%al
  1005b6:	ee                   	out    %al,(%dx)
  1005b7:	ba fa 03 00 00       	mov    $0x3fa,%edx
  1005bc:	b0 c7                	mov    $0xc7,%al
  1005be:	ee                   	out    %al,(%dx)
  1005bf:	ba fc 03 00 00       	mov    $0x3fc,%edx
  1005c4:	b0 0b                	mov    $0xb,%al
  1005c6:	ee                   	out    %al,(%dx)
  1005c7:	5d                   	pop    %ebp
  1005c8:	c3                   	ret    
  1005c9:	8d 76 00             	lea    0x0(%esi),%esi

001005cc <putChar>:
  1005cc:	55                   	push   %ebp
  1005cd:	89 e5                	mov    %esp,%ebp
  1005cf:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1005d2:	ba fd 03 00 00       	mov    $0x3fd,%edx
  1005d7:	90                   	nop
  1005d8:	ec                   	in     (%dx),%al
  1005d9:	a8 20                	test   $0x20,%al
  1005db:	74 fb                	je     1005d8 <putChar+0xc>
  1005dd:	ba f8 03 00 00       	mov    $0x3f8,%edx
  1005e2:	88 c8                	mov    %cl,%al
  1005e4:	ee                   	out    %al,(%dx)
  1005e5:	5d                   	pop    %ebp
  1005e6:	c3                   	ret    
  1005e7:	90                   	nop

001005e8 <waitDisk>:
  1005e8:	55                   	push   %ebp
  1005e9:	89 e5                	mov    %esp,%ebp
  1005eb:	ba f7 01 00 00       	mov    $0x1f7,%edx
  1005f0:	ec                   	in     (%dx),%al
  1005f1:	83 e0 c0             	and    $0xffffffc0,%eax
  1005f4:	3c 40                	cmp    $0x40,%al
  1005f6:	75 f8                	jne    1005f0 <waitDisk+0x8>
  1005f8:	5d                   	pop    %ebp
  1005f9:	c3                   	ret    
  1005fa:	66 90                	xchg   %ax,%ax

001005fc <readSect>:
  1005fc:	55                   	push   %ebp
  1005fd:	89 e5                	mov    %esp,%ebp
  1005ff:	53                   	push   %ebx
  100600:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  100603:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100608:	ec                   	in     (%dx),%al
  100609:	83 e0 c0             	and    $0xffffffc0,%eax
  10060c:	3c 40                	cmp    $0x40,%al
  10060e:	75 f8                	jne    100608 <readSect+0xc>
  100610:	ba f2 01 00 00       	mov    $0x1f2,%edx
  100615:	b0 01                	mov    $0x1,%al
  100617:	ee                   	out    %al,(%dx)
  100618:	ba f3 01 00 00       	mov    $0x1f3,%edx
  10061d:	88 c8                	mov    %cl,%al
  10061f:	ee                   	out    %al,(%dx)
  100620:	89 c8                	mov    %ecx,%eax
  100622:	c1 f8 08             	sar    $0x8,%eax
  100625:	ba f4 01 00 00       	mov    $0x1f4,%edx
  10062a:	ee                   	out    %al,(%dx)
  10062b:	89 c8                	mov    %ecx,%eax
  10062d:	c1 f8 10             	sar    $0x10,%eax
  100630:	ba f5 01 00 00       	mov    $0x1f5,%edx
  100635:	ee                   	out    %al,(%dx)
  100636:	89 c8                	mov    %ecx,%eax
  100638:	c1 f8 18             	sar    $0x18,%eax
  10063b:	83 c8 e0             	or     $0xffffffe0,%eax
  10063e:	ba f6 01 00 00       	mov    $0x1f6,%edx
  100643:	ee                   	out    %al,(%dx)
  100644:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100649:	b0 20                	mov    $0x20,%al
  10064b:	ee                   	out    %al,(%dx)
  10064c:	ec                   	in     (%dx),%al
  10064d:	83 e0 c0             	and    $0xffffffc0,%eax
  100650:	3c 40                	cmp    $0x40,%al
  100652:	75 f8                	jne    10064c <readSect+0x50>
  100654:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100657:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  10065d:	ba f0 01 00 00       	mov    $0x1f0,%edx
  100662:	66 90                	xchg   %ax,%ax
  100664:	ed                   	in     (%dx),%eax
  100665:	89 01                	mov    %eax,(%ecx)
  100667:	83 c1 04             	add    $0x4,%ecx
  10066a:	39 d9                	cmp    %ebx,%ecx
  10066c:	75 f6                	jne    100664 <readSect+0x68>
  10066e:	5b                   	pop    %ebx
  10066f:	5d                   	pop    %ebp
  100670:	c3                   	ret    
  100671:	8d 76 00             	lea    0x0(%esi),%esi

00100674 <initSeg>:
  100674:	55                   	push   %ebp
  100675:	89 e5                	mov    %esp,%ebp
  100677:	ba 40 2b 10 00       	mov    $0x102b40,%edx
  10067c:	66 c7 05 48 2b 10 00 	movw   $0xffff,0x102b48
  100683:	ff ff 
  100685:	66 c7 05 4a 2b 10 00 	movw   $0x0,0x102b4a
  10068c:	00 00 
  10068e:	c6 05 4c 2b 10 00 00 	movb   $0x0,0x102b4c
  100695:	c6 05 4d 2b 10 00 9a 	movb   $0x9a,0x102b4d
  10069c:	c6 05 4e 2b 10 00 cf 	movb   $0xcf,0x102b4e
  1006a3:	c6 05 4f 2b 10 00 00 	movb   $0x0,0x102b4f
  1006aa:	66 c7 05 50 2b 10 00 	movw   $0xffff,0x102b50
  1006b1:	ff ff 
  1006b3:	66 c7 05 52 2b 10 00 	movw   $0x0,0x102b52
  1006ba:	00 00 
  1006bc:	c6 05 54 2b 10 00 00 	movb   $0x0,0x102b54
  1006c3:	c6 05 55 2b 10 00 92 	movb   $0x92,0x102b55
  1006ca:	c6 05 56 2b 10 00 cf 	movb   $0xcf,0x102b56
  1006d1:	c6 05 57 2b 10 00 00 	movb   $0x0,0x102b57
  1006d8:	66 c7 05 58 2b 10 00 	movw   $0xffff,0x102b58
  1006df:	ff ff 
  1006e1:	66 c7 05 5a 2b 10 00 	movw   $0x0,0x102b5a
  1006e8:	00 00 
  1006ea:	c6 05 5c 2b 10 00 00 	movb   $0x0,0x102b5c
  1006f1:	c6 05 5d 2b 10 00 fa 	movb   $0xfa,0x102b5d
  1006f8:	c6 05 5e 2b 10 00 cf 	movb   $0xcf,0x102b5e
  1006ff:	c6 05 5f 2b 10 00 00 	movb   $0x0,0x102b5f
  100706:	66 c7 05 60 2b 10 00 	movw   $0xffff,0x102b60
  10070d:	ff ff 
  10070f:	66 c7 05 62 2b 10 00 	movw   $0x0,0x102b62
  100716:	00 00 
  100718:	c6 05 64 2b 10 00 00 	movb   $0x0,0x102b64
  10071f:	c6 05 65 2b 10 00 f2 	movb   $0xf2,0x102b65
  100726:	c6 05 66 2b 10 00 cf 	movb   $0xcf,0x102b66
  10072d:	c6 05 67 2b 10 00 00 	movb   $0x0,0x102b67
  100734:	66 c7 05 68 2b 10 00 	movw   $0x63,0x102b68
  10073b:	63 00 
  10073d:	b8 80 2b 10 00       	mov    $0x102b80,%eax
  100742:	66 a3 6a 2b 10 00    	mov    %ax,0x102b6a
  100748:	89 c1                	mov    %eax,%ecx
  10074a:	c1 e9 10             	shr    $0x10,%ecx
  10074d:	88 0d 6c 2b 10 00    	mov    %cl,0x102b6c
  100753:	c6 05 6d 2b 10 00 89 	movb   $0x89,0x102b6d
  10075a:	c6 05 6e 2b 10 00 40 	movb   $0x40,0x102b6e
  100761:	c1 e8 18             	shr    $0x18,%eax
  100764:	a2 6f 2b 10 00       	mov    %al,0x102b6f
  100769:	66 c7 05 8c 22 10 00 	movw   $0x37,0x10228c
  100770:	37 00 
  100772:	66 89 15 8e 22 10 00 	mov    %dx,0x10228e
  100779:	c1 ea 10             	shr    $0x10,%edx
  10077c:	66 89 15 90 22 10 00 	mov    %dx,0x102290
  100783:	b8 8c 22 10 00       	mov    $0x10228c,%eax
  100788:	0f 01 10             	lgdtl  (%eax)
  10078b:	b8 28 00 00 00       	mov    $0x28,%eax
  100790:	0f 00 d8             	ltr    %ax
  100793:	c7 05 88 2b 10 00 10 	movl   $0x10,0x102b88
  10079a:	00 00 00 
  10079d:	c7 05 84 2b 10 00 00 	movl   $0x200000,0x102b84
  1007a4:	00 20 00 
  1007a7:	b8 10 00 00 00       	mov    $0x10,%eax
  1007ac:	8e c0                	mov    %eax,%es
  1007ae:	8e d8                	mov    %eax,%ds
  1007b0:	8e e8                	mov    %eax,%gs
  1007b2:	8e e0                	mov    %eax,%fs
  1007b4:	8e d0                	mov    %eax,%ss
  1007b6:	31 c0                	xor    %eax,%eax
  1007b8:	0f 00 d0             	lldt   %ax
  1007bb:	5d                   	pop    %ebp
  1007bc:	c3                   	ret    
  1007bd:	8d 76 00             	lea    0x0(%esi),%esi

001007c0 <enterUserSpace>:
  1007c0:	55                   	push   %ebp
  1007c1:	89 e5                	mov    %esp,%ebp
  1007c3:	b8 23 00 00 00       	mov    $0x23,%eax
  1007c8:	fa                   	cli    
  1007c9:	8e c0                	mov    %eax,%es
  1007cb:	8e e0                	mov    %eax,%fs
  1007cd:	8e d8                	mov    %eax,%ds
  1007cf:	66 6a 23             	pushw  $0x23
  1007d2:	68 00 00 40 00       	push   $0x400000
  1007d7:	68 02 02 00 00       	push   $0x202
  1007dc:	6a 1b                	push   $0x1b
  1007de:	ff 75 08             	pushl  0x8(%ebp)
  1007e1:	fb                   	sti    
  1007e2:	cf                   	iret   
  1007e3:	5d                   	pop    %ebp
  1007e4:	c3                   	ret    
  1007e5:	8d 76 00             	lea    0x0(%esi),%esi

001007e8 <readseg>:
  1007e8:	55                   	push   %ebp
  1007e9:	89 e5                	mov    %esp,%ebp
  1007eb:	57                   	push   %edi
  1007ec:	56                   	push   %esi
  1007ed:	53                   	push   %ebx
  1007ee:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1007f1:	8b 7d 10             	mov    0x10(%ebp),%edi
  1007f4:	8b 75 0c             	mov    0xc(%ebp),%esi
  1007f7:	01 de                	add    %ebx,%esi
  1007f9:	89 f8                	mov    %edi,%eax
  1007fb:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100800:	78 2a                	js     10082c <readseg+0x44>
  100802:	29 c3                	sub    %eax,%ebx
  100804:	85 ff                	test   %edi,%edi
  100806:	78 31                	js     100839 <readseg+0x51>
  100808:	c1 ff 09             	sar    $0x9,%edi
  10080b:	39 de                	cmp    %ebx,%esi
  10080d:	76 15                	jbe    100824 <readseg+0x3c>
  10080f:	90                   	nop
  100810:	57                   	push   %edi
  100811:	53                   	push   %ebx
  100812:	e8 e5 fd ff ff       	call   1005fc <readSect>
  100817:	81 c3 00 02 00 00    	add    $0x200,%ebx
  10081d:	47                   	inc    %edi
  10081e:	58                   	pop    %eax
  10081f:	5a                   	pop    %edx
  100820:	39 de                	cmp    %ebx,%esi
  100822:	77 ec                	ja     100810 <readseg+0x28>
  100824:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100827:	5b                   	pop    %ebx
  100828:	5e                   	pop    %esi
  100829:	5f                   	pop    %edi
  10082a:	5d                   	pop    %ebp
  10082b:	c3                   	ret    
  10082c:	48                   	dec    %eax
  10082d:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100832:	40                   	inc    %eax
  100833:	29 c3                	sub    %eax,%ebx
  100835:	85 ff                	test   %edi,%edi
  100837:	79 cf                	jns    100808 <readseg+0x20>
  100839:	81 c7 ff 01 00 00    	add    $0x1ff,%edi
  10083f:	eb c7                	jmp    100808 <readseg+0x20>
  100841:	8d 76 00             	lea    0x0(%esi),%esi

00100844 <loader>:
  100844:	55                   	push   %ebp
  100845:	89 e5                	mov    %esp,%ebp
  100847:	57                   	push   %edi
  100848:	56                   	push   %esi
  100849:	53                   	push   %ebx
  10084a:	83 ec 2c             	sub    $0x2c,%esp
  10084d:	8b 55 08             	mov    0x8(%ebp),%edx
  100850:	8b 42 2c             	mov    0x2c(%edx),%eax
  100853:	66 83 f8 ff          	cmp    $0xffff,%ax
  100857:	0f 84 87 00 00 00    	je     1008e4 <loader+0xa0>
  10085d:	0f b7 c8             	movzwl %ax,%ecx
  100860:	85 c9                	test   %ecx,%ecx
  100862:	74 6e                	je     1008d2 <loader+0x8e>
  100864:	31 ff                	xor    %edi,%edi
  100866:	89 d6                	mov    %edx,%esi
  100868:	eb 07                	jmp    100871 <loader+0x2d>
  10086a:	66 90                	xchg   %ax,%ax
  10086c:	47                   	inc    %edi
  10086d:	39 cf                	cmp    %ecx,%edi
  10086f:	7d 5f                	jge    1008d0 <loader+0x8c>
  100871:	0f b7 46 2a          	movzwl 0x2a(%esi),%eax
  100875:	0f af c7             	imul   %edi,%eax
  100878:	03 46 1c             	add    0x1c(%esi),%eax
  10087b:	01 f0                	add    %esi,%eax
  10087d:	83 38 01             	cmpl   $0x1,(%eax)
  100880:	75 ea                	jne    10086c <loader+0x28>
  100882:	89 4d d0             	mov    %ecx,-0x30(%ebp)
  100885:	8b 50 08             	mov    0x8(%eax),%edx
  100888:	8b 58 10             	mov    0x10(%eax),%ebx
  10088b:	8b 48 14             	mov    0x14(%eax),%ecx
  10088e:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  100891:	51                   	push   %ecx
  100892:	8b 40 04             	mov    0x4(%eax),%eax
  100895:	05 00 92 01 00       	add    $0x19200,%eax
  10089a:	50                   	push   %eax
  10089b:	53                   	push   %ebx
  10089c:	52                   	push   %edx
  10089d:	89 55 cc             	mov    %edx,-0x34(%ebp)
  1008a0:	e8 43 ff ff ff       	call   1007e8 <readseg>
  1008a5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  1008a8:	29 d8                	sub    %ebx,%eax
  1008aa:	83 c4 10             	add    $0x10,%esp
  1008ad:	85 c0                	test   %eax,%eax
  1008af:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  1008b2:	7e b8                	jle    10086c <loader+0x28>
  1008b4:	8b 55 cc             	mov    -0x34(%ebp),%edx
  1008b7:	01 d3                	add    %edx,%ebx
  1008b9:	03 55 d4             	add    -0x2c(%ebp),%edx
  1008bc:	39 d3                	cmp    %edx,%ebx
  1008be:	73 ac                	jae    10086c <loader+0x28>
  1008c0:	43                   	inc    %ebx
  1008c1:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
  1008c5:	39 d3                	cmp    %edx,%ebx
  1008c7:	75 f7                	jne    1008c0 <loader+0x7c>
  1008c9:	47                   	inc    %edi
  1008ca:	39 cf                	cmp    %ecx,%edi
  1008cc:	7c a3                	jl     100871 <loader+0x2d>
  1008ce:	66 90                	xchg   %ax,%ax
  1008d0:	89 f2                	mov    %esi,%edx
  1008d2:	8b 42 18             	mov    0x18(%edx),%eax
  1008d5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1008d8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1008db:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1008de:	5b                   	pop    %ebx
  1008df:	5e                   	pop    %esi
  1008e0:	5f                   	pop    %edi
  1008e1:	5d                   	pop    %ebp
  1008e2:	c3                   	ret    
  1008e3:	90                   	nop
  1008e4:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  1008e7:	83 ec 08             	sub    $0x8,%esp
  1008ea:	6a 7b                	push   $0x7b
  1008ec:	68 6c 0d 10 00       	push   $0x100d6c
  1008f1:	e8 1a 03 00 00       	call   100c10 <abort>
  1008f6:	83 c4 10             	add    $0x10,%esp
  1008f9:	b9 ff ff 00 00       	mov    $0xffff,%ecx
  1008fe:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100901:	e9 5e ff ff ff       	jmp    100864 <loader+0x20>
  100906:	66 90                	xchg   %ax,%ax

00100908 <loadUMain>:
  100908:	55                   	push   %ebp
  100909:	89 e5                	mov    %esp,%ebp
  10090b:	83 ec 18             	sub    $0x18,%esp
  10090e:	68 c9 00 00 00       	push   $0xc9
  100913:	68 00 80 00 00       	push   $0x8000
  100918:	e8 df fc ff ff       	call   1005fc <readSect>
  10091d:	50                   	push   %eax
  10091e:	68 00 80 00 00       	push   $0x8000
  100923:	e8 1c ff ff ff       	call   100844 <loader>
  100928:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10092b:	b8 23 00 00 00       	mov    $0x23,%eax
  100930:	fa                   	cli    
  100931:	8e c0                	mov    %eax,%es
  100933:	8e e0                	mov    %eax,%fs
  100935:	8e d8                	mov    %eax,%ds
  100937:	66 6a 23             	pushw  $0x23
  10093a:	68 00 00 40 00       	push   $0x400000
  10093f:	68 02 02 00 00       	push   $0x202
  100944:	6a 1b                	push   $0x1b
  100946:	ff 75 f4             	pushl  -0xc(%ebp)
  100949:	fb                   	sti    
  10094a:	cf                   	iret   
  10094b:	83 c4 10             	add    $0x10,%esp
  10094e:	c9                   	leave  
  10094f:	c3                   	ret    

00100950 <addString2Buff>:
  100950:	55                   	push   %ebp
  100951:	89 e5                	mov    %esp,%ebp
  100953:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100956:	8a 11                	mov    (%ecx),%dl
  100958:	84 d2                	test   %dl,%dl
  10095a:	74 1b                	je     100977 <addString2Buff+0x27>
  10095c:	a1 04 23 10 00       	mov    0x102304,%eax
  100961:	29 c1                	sub    %eax,%ecx
  100963:	90                   	nop
  100964:	40                   	inc    %eax
  100965:	88 90 9f 22 10 00    	mov    %dl,0x10229f(%eax)
  10096b:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  10096e:	84 d2                	test   %dl,%dl
  100970:	75 f2                	jne    100964 <addString2Buff+0x14>
  100972:	a3 04 23 10 00       	mov    %eax,0x102304
  100977:	5d                   	pop    %ebp
  100978:	c3                   	ret    
  100979:	8d 76 00             	lea    0x0(%esi),%esi

0010097c <addCh2Buff>:
  10097c:	55                   	push   %ebp
  10097d:	89 e5                	mov    %esp,%ebp
  10097f:	a1 04 23 10 00       	mov    0x102304,%eax
  100984:	8d 50 01             	lea    0x1(%eax),%edx
  100987:	89 15 04 23 10 00    	mov    %edx,0x102304
  10098d:	8b 55 08             	mov    0x8(%ebp),%edx
  100990:	88 90 a0 22 10 00    	mov    %dl,0x1022a0(%eax)
  100996:	5d                   	pop    %ebp
  100997:	c3                   	ret    

00100998 <addDec2Buff>:
  100998:	55                   	push   %ebp
  100999:	89 e5                	mov    %esp,%ebp
  10099b:	56                   	push   %esi
  10099c:	53                   	push   %ebx
  10099d:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1009a0:	85 db                	test   %ebx,%ebx
  1009a2:	0f 89 92 00 00 00    	jns    100a3a <addDec2Buff+0xa2>
  1009a8:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  1009ae:	74 58                	je     100a08 <addDec2Buff+0x70>
  1009b0:	a1 04 23 10 00       	mov    0x102304,%eax
  1009b5:	c6 80 a0 22 10 00 2d 	movb   $0x2d,0x1022a0(%eax)
  1009bc:	40                   	inc    %eax
  1009bd:	f7 db                	neg    %ebx
  1009bf:	a3 04 23 10 00       	mov    %eax,0x102304
  1009c4:	83 ec 0c             	sub    $0xc,%esp
  1009c7:	b8 67 66 66 66       	mov    $0x66666667,%eax
  1009cc:	f7 eb                	imul   %ebx
  1009ce:	89 d6                	mov    %edx,%esi
  1009d0:	c1 fe 02             	sar    $0x2,%esi
  1009d3:	89 d8                	mov    %ebx,%eax
  1009d5:	c1 f8 1f             	sar    $0x1f,%eax
  1009d8:	29 c6                	sub    %eax,%esi
  1009da:	56                   	push   %esi
  1009db:	e8 b8 ff ff ff       	call   100998 <addDec2Buff>
  1009e0:	8b 15 04 23 10 00    	mov    0x102304,%edx
  1009e6:	8d 42 01             	lea    0x1(%edx),%eax
  1009e9:	a3 04 23 10 00       	mov    %eax,0x102304
  1009ee:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  1009f1:	01 c0                	add    %eax,%eax
  1009f3:	29 c3                	sub    %eax,%ebx
  1009f5:	83 c3 30             	add    $0x30,%ebx
  1009f8:	88 9a a0 22 10 00    	mov    %bl,0x1022a0(%edx)
  1009fe:	83 c4 10             	add    $0x10,%esp
  100a01:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100a04:	5b                   	pop    %ebx
  100a05:	5e                   	pop    %esi
  100a06:	5d                   	pop    %ebp
  100a07:	c3                   	ret    
  100a08:	8b 1d 04 23 10 00    	mov    0x102304,%ebx
  100a0e:	8d 43 01             	lea    0x1(%ebx),%eax
  100a11:	b2 2d                	mov    $0x2d,%dl
  100a13:	b9 79 0d 10 00       	mov    $0x100d79,%ecx
  100a18:	29 d9                	sub    %ebx,%ecx
  100a1a:	66 90                	xchg   %ax,%ax
  100a1c:	89 c3                	mov    %eax,%ebx
  100a1e:	88 90 9f 22 10 00    	mov    %dl,0x10229f(%eax)
  100a24:	40                   	inc    %eax
  100a25:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  100a29:	84 d2                	test   %dl,%dl
  100a2b:	75 ef                	jne    100a1c <addDec2Buff+0x84>
  100a2d:	89 1d 04 23 10 00    	mov    %ebx,0x102304
  100a33:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100a36:	5b                   	pop    %ebx
  100a37:	5e                   	pop    %esi
  100a38:	5d                   	pop    %ebp
  100a39:	c3                   	ret    
  100a3a:	74 c5                	je     100a01 <addDec2Buff+0x69>
  100a3c:	eb 86                	jmp    1009c4 <addDec2Buff+0x2c>
  100a3e:	66 90                	xchg   %ax,%ax

00100a40 <addHex2Buff>:
  100a40:	55                   	push   %ebp
  100a41:	89 e5                	mov    %esp,%ebp
  100a43:	8b 45 08             	mov    0x8(%ebp),%eax
  100a46:	85 c0                	test   %eax,%eax
  100a48:	75 02                	jne    100a4c <addHex2Buff+0xc>
  100a4a:	5d                   	pop    %ebp
  100a4b:	c3                   	ret    
  100a4c:	5d                   	pop    %ebp
  100a4d:	eb 01                	jmp    100a50 <addHex2Buff.part.1>
  100a4f:	90                   	nop

00100a50 <addHex2Buff.part.1>:
  100a50:	55                   	push   %ebp
  100a51:	89 e5                	mov    %esp,%ebp
  100a53:	53                   	push   %ebx
  100a54:	83 ec 10             	sub    $0x10,%esp
  100a57:	89 c3                	mov    %eax,%ebx
  100a59:	89 c2                	mov    %eax,%edx
  100a5b:	c1 ea 04             	shr    $0x4,%edx
  100a5e:	52                   	push   %edx
  100a5f:	e8 dc ff ff ff       	call   100a40 <addHex2Buff>
  100a64:	89 d8                	mov    %ebx,%eax
  100a66:	83 e0 0f             	and    $0xf,%eax
  100a69:	83 c4 10             	add    $0x10,%esp
  100a6c:	8b 15 04 23 10 00    	mov    0x102304,%edx
  100a72:	8d 4a 01             	lea    0x1(%edx),%ecx
  100a75:	89 0d 04 23 10 00    	mov    %ecx,0x102304
  100a7b:	83 f8 09             	cmp    $0x9,%eax
  100a7e:	76 10                	jbe    100a90 <addHex2Buff.part.1+0x40>
  100a80:	83 c0 57             	add    $0x57,%eax
  100a83:	88 82 a0 22 10 00    	mov    %al,0x1022a0(%edx)
  100a89:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100a8c:	c9                   	leave  
  100a8d:	c3                   	ret    
  100a8e:	66 90                	xchg   %ax,%ax
  100a90:	83 c0 30             	add    $0x30,%eax
  100a93:	88 82 a0 22 10 00    	mov    %al,0x1022a0(%edx)
  100a99:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100a9c:	c9                   	leave  
  100a9d:	c3                   	ret    
  100a9e:	66 90                	xchg   %ax,%ax

00100aa0 <Log>:
  100aa0:	55                   	push   %ebp
  100aa1:	89 e5                	mov    %esp,%ebp
  100aa3:	57                   	push   %edi
  100aa4:	56                   	push   %esi
  100aa5:	53                   	push   %ebx
  100aa6:	83 ec 0c             	sub    $0xc,%esp
  100aa9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100aac:	8d 75 0c             	lea    0xc(%ebp),%esi
  100aaf:	8a 03                	mov    (%ebx),%al
  100ab1:	84 c0                	test   %al,%al
  100ab3:	74 21                	je     100ad6 <Log+0x36>
  100ab5:	3c 25                	cmp    $0x25,%al
  100ab7:	74 67                	je     100b20 <Log+0x80>
  100ab9:	8b 15 04 23 10 00    	mov    0x102304,%edx
  100abf:	8d 4a 01             	lea    0x1(%edx),%ecx
  100ac2:	89 0d 04 23 10 00    	mov    %ecx,0x102304
  100ac8:	88 82 a0 22 10 00    	mov    %al,0x1022a0(%edx)
  100ace:	8a 43 01             	mov    0x1(%ebx),%al
  100ad1:	43                   	inc    %ebx
  100ad2:	84 c0                	test   %al,%al
  100ad4:	75 df                	jne    100ab5 <Log+0x15>
  100ad6:	a1 04 23 10 00       	mov    0x102304,%eax
  100adb:	c6 80 a0 22 10 00 00 	movb   $0x0,0x1022a0(%eax)
  100ae2:	85 c0                	test   %eax,%eax
  100ae4:	7e 1e                	jle    100b04 <Log+0x64>
  100ae6:	31 db                	xor    %ebx,%ebx
  100ae8:	83 ec 0c             	sub    $0xc,%esp
  100aeb:	0f be 83 a0 22 10 00 	movsbl 0x1022a0(%ebx),%eax
  100af2:	50                   	push   %eax
  100af3:	e8 d4 fa ff ff       	call   1005cc <putChar>
  100af8:	43                   	inc    %ebx
  100af9:	83 c4 10             	add    $0x10,%esp
  100afc:	39 1d 04 23 10 00    	cmp    %ebx,0x102304
  100b02:	7f e4                	jg     100ae8 <Log+0x48>
  100b04:	83 ec 0c             	sub    $0xc,%esp
  100b07:	6a 0a                	push   $0xa
  100b09:	e8 be fa ff ff       	call   1005cc <putChar>
  100b0e:	c7 05 04 23 10 00 00 	movl   $0x0,0x102304
  100b15:	00 00 00 
  100b18:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100b1b:	5b                   	pop    %ebx
  100b1c:	5e                   	pop    %esi
  100b1d:	5f                   	pop    %edi
  100b1e:	5d                   	pop    %ebp
  100b1f:	c3                   	ret    
  100b20:	8a 43 01             	mov    0x1(%ebx),%al
  100b23:	3c 64                	cmp    $0x64,%al
  100b25:	74 5e                	je     100b85 <Log+0xe5>
  100b27:	7f 33                	jg     100b5c <Log+0xbc>
  100b29:	3c 25                	cmp    $0x25,%al
  100b2b:	0f 84 b3 00 00 00    	je     100be4 <Log+0x144>
  100b31:	3c 63                	cmp    $0x63,%al
  100b33:	75 4a                	jne    100b7f <Log+0xdf>
  100b35:	8b 16                	mov    (%esi),%edx
  100b37:	a1 04 23 10 00       	mov    0x102304,%eax
  100b3c:	8d 48 01             	lea    0x1(%eax),%ecx
  100b3f:	89 0d 04 23 10 00    	mov    %ecx,0x102304
  100b45:	88 90 a0 22 10 00    	mov    %dl,0x1022a0(%eax)
  100b4b:	8a 43 02             	mov    0x2(%ebx),%al
  100b4e:	83 c6 04             	add    $0x4,%esi
  100b51:	83 c3 02             	add    $0x2,%ebx
  100b54:	e9 58 ff ff ff       	jmp    100ab1 <Log+0x11>
  100b59:	8d 76 00             	lea    0x0(%esi),%esi
  100b5c:	3c 73                	cmp    $0x73,%al
  100b5e:	74 47                	je     100ba7 <Log+0x107>
  100b60:	3c 78                	cmp    $0x78,%al
  100b62:	75 1b                	jne    100b7f <Log+0xdf>
  100b64:	89 f0                	mov    %esi,%eax
  100b66:	83 c6 04             	add    $0x4,%esi
  100b69:	8b 00                	mov    (%eax),%eax
  100b6b:	85 c0                	test   %eax,%eax
  100b6d:	74 21                	je     100b90 <Log+0xf0>
  100b6f:	e8 dc fe ff ff       	call   100a50 <addHex2Buff.part.1>
  100b74:	8a 43 02             	mov    0x2(%ebx),%al
  100b77:	83 c3 02             	add    $0x2,%ebx
  100b7a:	e9 32 ff ff ff       	jmp    100ab1 <Log+0x11>
  100b7f:	43                   	inc    %ebx
  100b80:	e9 2c ff ff ff       	jmp    100ab1 <Log+0x11>
  100b85:	89 f0                	mov    %esi,%eax
  100b87:	83 c6 04             	add    $0x4,%esi
  100b8a:	8b 00                	mov    (%eax),%eax
  100b8c:	85 c0                	test   %eax,%eax
  100b8e:	75 6e                	jne    100bfe <Log+0x15e>
  100b90:	a1 04 23 10 00       	mov    0x102304,%eax
  100b95:	8d 50 01             	lea    0x1(%eax),%edx
  100b98:	89 15 04 23 10 00    	mov    %edx,0x102304
  100b9e:	c6 80 a0 22 10 00 30 	movb   $0x30,0x1022a0(%eax)
  100ba5:	eb cd                	jmp    100b74 <Log+0xd4>
  100ba7:	8d 4e 04             	lea    0x4(%esi),%ecx
  100baa:	8b 36                	mov    (%esi),%esi
  100bac:	8a 16                	mov    (%esi),%dl
  100bae:	84 d2                	test   %dl,%dl
  100bb0:	74 25                	je     100bd7 <Log+0x137>
  100bb2:	8b 3d 04 23 10 00    	mov    0x102304,%edi
  100bb8:	8d 47 01             	lea    0x1(%edi),%eax
  100bbb:	29 fe                	sub    %edi,%esi
  100bbd:	8d 76 00             	lea    0x0(%esi),%esi
  100bc0:	89 c7                	mov    %eax,%edi
  100bc2:	88 90 9f 22 10 00    	mov    %dl,0x10229f(%eax)
  100bc8:	40                   	inc    %eax
  100bc9:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  100bcd:	84 d2                	test   %dl,%dl
  100bcf:	75 ef                	jne    100bc0 <Log+0x120>
  100bd1:	89 3d 04 23 10 00    	mov    %edi,0x102304
  100bd7:	8a 43 02             	mov    0x2(%ebx),%al
  100bda:	89 ce                	mov    %ecx,%esi
  100bdc:	83 c3 02             	add    $0x2,%ebx
  100bdf:	e9 cd fe ff ff       	jmp    100ab1 <Log+0x11>
  100be4:	a1 04 23 10 00       	mov    0x102304,%eax
  100be9:	8d 50 01             	lea    0x1(%eax),%edx
  100bec:	89 15 04 23 10 00    	mov    %edx,0x102304
  100bf2:	c6 80 a0 22 10 00 25 	movb   $0x25,0x1022a0(%eax)
  100bf9:	e9 76 ff ff ff       	jmp    100b74 <Log+0xd4>
  100bfe:	83 ec 0c             	sub    $0xc,%esp
  100c01:	50                   	push   %eax
  100c02:	e8 91 fd ff ff       	call   100998 <addDec2Buff>
  100c07:	83 c4 10             	add    $0x10,%esp
  100c0a:	e9 65 ff ff ff       	jmp    100b74 <Log+0xd4>
  100c0f:	90                   	nop

00100c10 <abort>:
  100c10:	55                   	push   %ebp
  100c11:	89 e5                	mov    %esp,%ebp
  100c13:	57                   	push   %edi
  100c14:	56                   	push   %esi
  100c15:	53                   	push   %ebx
  100c16:	83 ec 1c             	sub    $0x1c,%esp
  100c19:	8b 55 08             	mov    0x8(%ebp),%edx
  100c1c:	fa                   	cli    
  100c1d:	8a 02                	mov    (%edx),%al
  100c1f:	b9 92 21 10 00       	mov    $0x102192,%ecx
  100c24:	84 c0                	test   %al,%al
  100c26:	74 0b                	je     100c33 <abort+0x23>
  100c28:	41                   	inc    %ecx
  100c29:	42                   	inc    %edx
  100c2a:	88 41 ff             	mov    %al,-0x1(%ecx)
  100c2d:	8a 02                	mov    (%edx),%al
  100c2f:	84 c0                	test   %al,%al
  100c31:	75 f5                	jne    100c28 <abort+0x18>
  100c33:	c6 01 3a             	movb   $0x3a,(%ecx)
  100c36:	bb 25 23 10 00       	mov    $0x102325,%ebx
  100c3b:	be 0a 00 00 00       	mov    $0xa,%esi
  100c40:	bf 67 66 66 66       	mov    $0x66666667,%edi
  100c45:	4b                   	dec    %ebx
  100c46:	8b 45 0c             	mov    0xc(%ebp),%eax
  100c49:	99                   	cltd   
  100c4a:	f7 fe                	idiv   %esi
  100c4c:	8d 42 30             	lea    0x30(%edx),%eax
  100c4f:	88 45 e7             	mov    %al,-0x19(%ebp)
  100c52:	88 03                	mov    %al,(%ebx)
  100c54:	89 f8                	mov    %edi,%eax
  100c56:	f7 6d 0c             	imull  0xc(%ebp)
  100c59:	c1 fa 02             	sar    $0x2,%edx
  100c5c:	8b 45 0c             	mov    0xc(%ebp),%eax
  100c5f:	c1 f8 1f             	sar    $0x1f,%eax
  100c62:	29 c2                	sub    %eax,%edx
  100c64:	89 55 0c             	mov    %edx,0xc(%ebp)
  100c67:	75 dc                	jne    100c45 <abort+0x35>
  100c69:	41                   	inc    %ecx
  100c6a:	41                   	inc    %ecx
  100c6b:	43                   	inc    %ebx
  100c6c:	8a 45 e7             	mov    -0x19(%ebp),%al
  100c6f:	88 41 ff             	mov    %al,-0x1(%ecx)
  100c72:	8a 03                	mov    (%ebx),%al
  100c74:	88 45 e7             	mov    %al,-0x19(%ebp)
  100c77:	84 c0                	test   %al,%al
  100c79:	75 ef                	jne    100c6a <abort+0x5a>
  100c7b:	c6 01 0a             	movb   $0xa,(%ecx)
  100c7e:	0f be 05 80 21 10 00 	movsbl 0x102180,%eax
  100c85:	84 c0                	test   %al,%al
  100c87:	74 1b                	je     100ca4 <abort+0x94>
  100c89:	bb 80 21 10 00       	mov    $0x102180,%ebx
  100c8e:	83 ec 0c             	sub    $0xc,%esp
  100c91:	50                   	push   %eax
  100c92:	e8 35 f9 ff ff       	call   1005cc <putChar>
  100c97:	43                   	inc    %ebx
  100c98:	0f be 03             	movsbl (%ebx),%eax
  100c9b:	83 c4 10             	add    $0x10,%esp
  100c9e:	84 c0                	test   %al,%al
  100ca0:	75 ec                	jne    100c8e <abort+0x7e>
  100ca2:	66 90                	xchg   %ax,%ax
  100ca4:	f4                   	hlt    
  100ca5:	eb fd                	jmp    100ca4 <abort+0x94>
  100ca7:	90                   	nop

00100ca8 <kEntry>:
  100ca8:	55                   	push   %ebp
  100ca9:	89 e5                	mov    %esp,%ebp
  100cab:	83 ec 08             	sub    $0x8,%esp
  100cae:	e8 d9 f8 ff ff       	call   10058c <initSerial>
  100cb3:	e8 a0 f3 ff ff       	call   100058 <initTimer>
  100cb8:	e8 97 f5 ff ff       	call   100254 <initIdt>
  100cbd:	e8 3e f3 ff ff       	call   100000 <initIntr>
  100cc2:	e8 ad f9 ff ff       	call   100674 <initSeg>
  100cc7:	e8 3c fc ff ff       	call   100908 <loadUMain>
  100ccc:	eb fe                	jmp    100ccc <kEntry+0x24>

00100cce <no0>:
  100cce:	6a 00                	push   $0x0
  100cd0:	6a 00                	push   $0x0
  100cd2:	eb 64                	jmp    100d38 <asmDoIrq>

00100cd4 <no1>:
  100cd4:	6a 00                	push   $0x0
  100cd6:	6a 01                	push   $0x1
  100cd8:	eb 5e                	jmp    100d38 <asmDoIrq>

00100cda <no2>:
  100cda:	6a 00                	push   $0x0
  100cdc:	6a 02                	push   $0x2
  100cde:	eb 58                	jmp    100d38 <asmDoIrq>

00100ce0 <no3>:
  100ce0:	6a 00                	push   $0x0
  100ce2:	6a 03                	push   $0x3
  100ce4:	eb 52                	jmp    100d38 <asmDoIrq>

00100ce6 <no4>:
  100ce6:	6a 00                	push   $0x0
  100ce8:	6a 04                	push   $0x4
  100cea:	eb 4c                	jmp    100d38 <asmDoIrq>

00100cec <no5>:
  100cec:	6a 00                	push   $0x0
  100cee:	6a 05                	push   $0x5
  100cf0:	eb 46                	jmp    100d38 <asmDoIrq>

00100cf2 <no6>:
  100cf2:	6a 00                	push   $0x0
  100cf4:	6a 06                	push   $0x6
  100cf6:	eb 40                	jmp    100d38 <asmDoIrq>

00100cf8 <no7>:
  100cf8:	6a 00                	push   $0x0
  100cfa:	6a 07                	push   $0x7
  100cfc:	eb 3a                	jmp    100d38 <asmDoIrq>

00100cfe <no8>:
  100cfe:	6a 08                	push   $0x8
  100d00:	eb 36                	jmp    100d38 <asmDoIrq>

00100d02 <no9>:
  100d02:	6a 00                	push   $0x0
  100d04:	6a 09                	push   $0x9
  100d06:	eb 30                	jmp    100d38 <asmDoIrq>

00100d08 <no10>:
  100d08:	6a 0a                	push   $0xa
  100d0a:	eb 2c                	jmp    100d38 <asmDoIrq>

00100d0c <no11>:
  100d0c:	6a 0b                	push   $0xb
  100d0e:	eb 28                	jmp    100d38 <asmDoIrq>

00100d10 <no12>:
  100d10:	6a 0c                	push   $0xc
  100d12:	eb 24                	jmp    100d38 <asmDoIrq>

00100d14 <no13>:
  100d14:	6a 0d                	push   $0xd
  100d16:	eb 20                	jmp    100d38 <asmDoIrq>

00100d18 <no14>:
  100d18:	6a 0e                	push   $0xe
  100d1a:	eb 1c                	jmp    100d38 <asmDoIrq>

00100d1c <intr0>:
  100d1c:	6a 00                	push   $0x0
  100d1e:	68 e8 03 00 00       	push   $0x3e8
  100d23:	eb 13                	jmp    100d38 <asmDoIrq>

00100d25 <irqEmpty>:
  100d25:	6a 00                	push   $0x0
  100d27:	6a ff                	push   $0xffffffff
  100d29:	eb 0d                	jmp    100d38 <asmDoIrq>

00100d2b <irqGProtectFault>:
  100d2b:	6a 0d                	push   $0xd
  100d2d:	eb 09                	jmp    100d38 <asmDoIrq>

00100d2f <irqSyscall>:
  100d2f:	6a 00                	push   $0x0
  100d31:	68 80 00 00 00       	push   $0x80
  100d36:	eb 00                	jmp    100d38 <asmDoIrq>

00100d38 <asmDoIrq>:
  100d38:	fa                   	cli    
  100d39:	60                   	pusha  
  100d3a:	54                   	push   %esp
  100d3b:	e8 74 f4 ff ff       	call   1001b4 <irqHandle>
  100d40:	83 c4 04             	add    $0x4,%esp
  100d43:	61                   	popa   
  100d44:	83 c4 04             	add    $0x4,%esp
  100d47:	83 c4 04             	add    $0x4,%esp
  100d4a:	fb                   	sti    
  100d4b:	cf                   	iret   
