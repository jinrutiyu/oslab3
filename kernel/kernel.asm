
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
  10007b:	8b 0d 00 20 10 00    	mov    0x102000,%ecx
  100081:	8b 15 20 21 10 00    	mov    0x102120,%edx
  100087:	8d 1c 89             	lea    (%ecx,%ecx,4),%ebx
  10008a:	c1 e3 04             	shl    $0x4,%ebx
  10008d:	01 d3                	add    %edx,%ebx
  10008f:	66 98                	cbtw   
  100091:	05 00 0c 00 00       	add    $0xc00,%eax
  100096:	66 89 84 1b 00 80 0b 	mov    %ax,0xb8000(%ebx,%ebx,1)
  10009d:	00 
  10009e:	8d 42 01             	lea    0x1(%edx),%eax
  1000a1:	a3 20 21 10 00       	mov    %eax,0x102120
  1000a6:	83 f8 50             	cmp    $0x50,%eax
  1000a9:	74 19                	je     1000c4 <showCharInScreen+0x54>
  1000ab:	5b                   	pop    %ebx
  1000ac:	5d                   	pop    %ebp
  1000ad:	c3                   	ret    
  1000ae:	66 90                	xchg   %ax,%ax
  1000b0:	ff 05 00 20 10 00    	incl   0x102000
  1000b6:	c7 05 20 21 10 00 00 	movl   $0x0,0x102120
  1000bd:	00 00 00 
  1000c0:	5b                   	pop    %ebx
  1000c1:	5d                   	pop    %ebp
  1000c2:	c3                   	ret    
  1000c3:	90                   	nop
  1000c4:	41                   	inc    %ecx
  1000c5:	89 0d 00 20 10 00    	mov    %ecx,0x102000
  1000cb:	c7 05 20 21 10 00 00 	movl   $0x0,0x102120
  1000d2:	00 00 00 
  1000d5:	5b                   	pop    %ebx
  1000d6:	5d                   	pop    %ebp
  1000d7:	c3                   	ret    

001000d8 <timerHandle>:
  1000d8:	55                   	push   %ebp
  1000d9:	89 e5                	mov    %esp,%ebp
  1000db:	83 ec 08             	sub    $0x8,%esp
  1000de:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  1000e3:	3d 40 2a 10 00       	cmp    $0x102a40,%eax
  1000e8:	0f 84 ba 00 00 00    	je     1001a8 <timerHandle+0xd0>
  1000ee:	3d c0 3a 10 00       	cmp    $0x103ac0,%eax
  1000f3:	0f 84 c3 00 00 00    	je     1001bc <timerHandle+0xe4>
  1000f9:	3d 30 4b 10 00       	cmp    $0x104b30,%eax
  1000fe:	0f 84 90 00 00 00    	je     100194 <timerHandle+0xbc>
  100104:	83 ec 08             	sub    $0x8,%esp
  100107:	6a 35                	push   $0x35
  100109:	68 e4 10 10 00       	push   $0x1010e4
  10010e:	e8 6d 0e 00 00       	call   100f80 <abort>
  100113:	83 c4 10             	add    $0x10,%esp
  100116:	83 3d 10 4b 10 00 01 	cmpl   $0x1,0x104b10
  10011d:	74 25                	je     100144 <timerHandle+0x6c>
  10011f:	83 3d 80 5b 10 00 01 	cmpl   $0x1,0x105b80
  100126:	74 38                	je     100160 <timerHandle+0x88>
  100128:	8b 15 b0 3a 10 00    	mov    0x103ab0,%edx
  10012e:	8b 82 54 10 00 00    	mov    0x1054(%edx),%eax
  100134:	85 c0                	test   %eax,%eax
  100136:	74 4a                	je     100182 <timerHandle+0xaa>
  100138:	48                   	dec    %eax
  100139:	89 82 54 10 00 00    	mov    %eax,0x1054(%edx)
  10013f:	c9                   	leave  
  100140:	c3                   	ret    
  100141:	8d 76 00             	lea    0x0(%esi),%esi
  100144:	ff 0d 18 4b 10 00    	decl   0x104b18
  10014a:	75 d3                	jne    10011f <timerHandle+0x47>
  10014c:	c7 05 10 4b 10 00 02 	movl   $0x2,0x104b10
  100153:	00 00 00 
  100156:	83 3d 80 5b 10 00 01 	cmpl   $0x1,0x105b80
  10015d:	75 c9                	jne    100128 <timerHandle+0x50>
  10015f:	90                   	nop
  100160:	ff 0d 88 5b 10 00    	decl   0x105b88
  100166:	75 c0                	jne    100128 <timerHandle+0x50>
  100168:	c7 05 80 5b 10 00 02 	movl   $0x2,0x105b80
  10016f:	00 00 00 
  100172:	8b 15 b0 3a 10 00    	mov    0x103ab0,%edx
  100178:	8b 82 54 10 00 00    	mov    0x1054(%edx),%eax
  10017e:	85 c0                	test   %eax,%eax
  100180:	75 b6                	jne    100138 <timerHandle+0x60>
  100182:	c7 82 50 10 00 00 02 	movl   $0x2,0x1050(%edx)
  100189:	00 00 00 
  10018c:	c9                   	leave  
  10018d:	e9 ea 06 00 00       	jmp    10087c <schedule>
  100192:	66 90                	xchg   %ax,%ax
  100194:	83 ec 0c             	sub    $0xc,%esp
  100197:	6a 32                	push   $0x32
  100199:	e8 5e 05 00 00       	call   1006fc <putChar>
  10019e:	83 c4 10             	add    $0x10,%esp
  1001a1:	e9 70 ff ff ff       	jmp    100116 <timerHandle+0x3e>
  1001a6:	66 90                	xchg   %ax,%ax
  1001a8:	83 ec 0c             	sub    $0xc,%esp
  1001ab:	6a 2e                	push   $0x2e
  1001ad:	e8 4a 05 00 00       	call   1006fc <putChar>
  1001b2:	83 c4 10             	add    $0x10,%esp
  1001b5:	e9 5c ff ff ff       	jmp    100116 <timerHandle+0x3e>
  1001ba:	66 90                	xchg   %ax,%ax
  1001bc:	83 ec 0c             	sub    $0xc,%esp
  1001bf:	6a 31                	push   $0x31
  1001c1:	e8 36 05 00 00       	call   1006fc <putChar>
  1001c6:	83 c4 10             	add    $0x10,%esp
  1001c9:	e9 48 ff ff ff       	jmp    100116 <timerHandle+0x3e>
  1001ce:	66 90                	xchg   %ax,%ax

001001d0 <do_sys_write>:
  1001d0:	55                   	push   %ebp
  1001d1:	89 e5                	mov    %esp,%ebp
  1001d3:	57                   	push   %edi
  1001d4:	56                   	push   %esi
  1001d5:	53                   	push   %ebx
  1001d6:	83 ec 1c             	sub    $0x1c,%esp
  1001d9:	8b 45 08             	mov    0x8(%ebp),%eax
  1001dc:	8b 40 10             	mov    0x10(%eax),%eax
  1001df:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1001e2:	48                   	dec    %eax
  1001e3:	83 f8 01             	cmp    $0x1,%eax
  1001e6:	76 20                	jbe    100208 <do_sys_write+0x38>
  1001e8:	83 ec 08             	sub    $0x8,%esp
  1001eb:	68 91 00 00 00       	push   $0x91
  1001f0:	68 e4 10 10 00       	push   $0x1010e4
  1001f5:	e8 86 0d 00 00       	call   100f80 <abort>
  1001fa:	83 c4 10             	add    $0x10,%esp
  1001fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100200:	5b                   	pop    %ebx
  100201:	5e                   	pop    %esi
  100202:	5f                   	pop    %edi
  100203:	5d                   	pop    %ebp
  100204:	c3                   	ret    
  100205:	8d 76 00             	lea    0x0(%esi),%esi
  100208:	8b 45 08             	mov    0x8(%ebp),%eax
  10020b:	8b 70 18             	mov    0x18(%eax),%esi
  10020e:	8b 40 14             	mov    0x14(%eax),%eax
  100211:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100214:	85 c0                	test   %eax,%eax
  100216:	74 39                	je     100251 <do_sys_write+0x81>
  100218:	8a 06                	mov    (%esi),%al
  10021a:	84 c0                	test   %al,%al
  10021c:	74 54                	je     100272 <do_sys_write+0xa2>
  10021e:	bf 01 00 00 00       	mov    $0x1,%edi
  100223:	eb 10                	jmp    100235 <do_sys_write+0x65>
  100225:	8d 76 00             	lea    0x0(%esi),%esi
  100228:	8d 4f 01             	lea    0x1(%edi),%ecx
  10022b:	8a 44 31 ff          	mov    -0x1(%ecx,%esi,1),%al
  10022f:	84 c0                	test   %al,%al
  100231:	74 31                	je     100264 <do_sys_write+0x94>
  100233:	89 cf                	mov    %ecx,%edi
  100235:	0f be d8             	movsbl %al,%ebx
  100238:	83 ec 0c             	sub    $0xc,%esp
  10023b:	53                   	push   %ebx
  10023c:	e8 bb 04 00 00       	call   1006fc <putChar>
  100241:	89 1c 24             	mov    %ebx,(%esp)
  100244:	e8 27 fe ff ff       	call   100070 <showCharInScreen>
  100249:	83 c4 10             	add    $0x10,%esp
  10024c:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  10024f:	75 d7                	jne    100228 <do_sys_write+0x58>
  100251:	8b 45 08             	mov    0x8(%ebp),%eax
  100254:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100257:	89 50 1c             	mov    %edx,0x1c(%eax)
  10025a:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10025d:	5b                   	pop    %ebx
  10025e:	5e                   	pop    %esi
  10025f:	5f                   	pop    %edi
  100260:	5d                   	pop    %ebp
  100261:	c3                   	ret    
  100262:	66 90                	xchg   %ax,%ax
  100264:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  100267:	8b 45 08             	mov    0x8(%ebp),%eax
  10026a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10026d:	89 50 1c             	mov    %edx,0x1c(%eax)
  100270:	eb e8                	jmp    10025a <do_sys_write+0x8a>
  100272:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  100279:	eb d6                	jmp    100251 <do_sys_write+0x81>
  10027b:	90                   	nop

0010027c <syscallHandle>:
  10027c:	55                   	push   %ebp
  10027d:	89 e5                	mov    %esp,%ebp
  10027f:	83 ec 08             	sub    $0x8,%esp
  100282:	8b 55 08             	mov    0x8(%ebp),%edx
  100285:	8b 42 1c             	mov    0x1c(%edx),%eax
  100288:	83 f8 04             	cmp    $0x4,%eax
  10028b:	74 2b                	je     1002b8 <syscallHandle+0x3c>
  10028d:	77 1d                	ja     1002ac <syscallHandle+0x30>
  10028f:	48                   	dec    %eax
  100290:	83 f8 01             	cmp    $0x1,%eax
  100293:	76 15                	jbe    1002aa <syscallHandle+0x2e>
  100295:	83 ec 08             	sub    $0x8,%esp
  100298:	68 9d 00 00 00       	push   $0x9d
  10029d:	68 e4 10 10 00       	push   $0x1010e4
  1002a2:	e8 d9 0c 00 00       	call   100f80 <abort>
  1002a7:	83 c4 10             	add    $0x10,%esp
  1002aa:	c9                   	leave  
  1002ab:	c3                   	ret    
  1002ac:	3d a2 00 00 00       	cmp    $0xa2,%eax
  1002b1:	75 e2                	jne    100295 <syscallHandle+0x19>
  1002b3:	c9                   	leave  
  1002b4:	c3                   	ret    
  1002b5:	8d 76 00             	lea    0x0(%esi),%esi
  1002b8:	89 55 08             	mov    %edx,0x8(%ebp)
  1002bb:	c9                   	leave  
  1002bc:	e9 0f ff ff ff       	jmp    1001d0 <do_sys_write>
  1002c1:	8d 76 00             	lea    0x0(%esi),%esi

001002c4 <irqHandle>:
  1002c4:	55                   	push   %ebp
  1002c5:	89 e5                	mov    %esp,%ebp
  1002c7:	83 ec 08             	sub    $0x8,%esp
  1002ca:	8b 55 08             	mov    0x8(%ebp),%edx
  1002cd:	b8 10 00 00 00       	mov    $0x10,%eax
  1002d2:	8e c0                	mov    %eax,%es
  1002d4:	8e d8                	mov    %eax,%ds
  1002d6:	8e e0                	mov    %eax,%fs
  1002d8:	8e e8                	mov    %eax,%gs
  1002da:	8b 42 30             	mov    0x30(%edx),%eax
  1002dd:	83 f8 0d             	cmp    $0xd,%eax
  1002e0:	74 62                	je     100344 <irqHandle+0x80>
  1002e2:	7e 38                	jle    10031c <irqHandle+0x58>
  1002e4:	3d 80 00 00 00       	cmp    $0x80,%eax
  1002e9:	74 25                	je     100310 <irqHandle+0x4c>
  1002eb:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  1002f0:	75 2f                	jne    100321 <irqHandle+0x5d>
  1002f2:	e8 e1 fd ff ff       	call   1000d8 <timerHandle>
  1002f7:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  1002fc:	3d 40 2a 10 00       	cmp    $0x102a40,%eax
  100301:	74 59                	je     10035c <irqHandle+0x98>
  100303:	05 00 10 00 00       	add    $0x1000,%eax
  100308:	a3 2c 22 10 00       	mov    %eax,0x10222c
  10030d:	c9                   	leave  
  10030e:	c3                   	ret    
  10030f:	90                   	nop
  100310:	89 55 08             	mov    %edx,0x8(%ebp)
  100313:	c9                   	leave  
  100314:	e9 63 ff ff ff       	jmp    10027c <syscallHandle>
  100319:	8d 76 00             	lea    0x0(%esi),%esi
  10031c:	83 f8 ff             	cmp    $0xffffffff,%eax
  10031f:	74 ec                	je     10030d <irqHandle+0x49>
  100321:	83 ec 08             	sub    $0x8,%esp
  100324:	50                   	push   %eax
  100325:	68 f7 10 10 00       	push   $0x1010f7
  10032a:	e8 e9 0a 00 00       	call   100e18 <Log>
  10032f:	58                   	pop    %eax
  100330:	5a                   	pop    %edx
  100331:	6a 73                	push   $0x73
  100333:	68 e4 10 10 00       	push   $0x1010e4
  100338:	e8 43 0c 00 00       	call   100f80 <abort>
  10033d:	83 c4 10             	add    $0x10,%esp
  100340:	c9                   	leave  
  100341:	c3                   	ret    
  100342:	66 90                	xchg   %ax,%ax
  100344:	83 ec 08             	sub    $0x8,%esp
  100347:	68 a2 00 00 00       	push   $0xa2
  10034c:	68 e4 10 10 00       	push   $0x1010e4
  100351:	e8 2a 0c 00 00       	call   100f80 <abort>
  100356:	83 c4 10             	add    $0x10,%esp
  100359:	c9                   	leave  
  10035a:	c3                   	ret    
  10035b:	90                   	nop
  10035c:	c7 05 2c 22 10 00 00 	movl   $0x0,0x10222c
  100363:	00 00 00 
  100366:	c9                   	leave  
  100367:	c3                   	ret    

00100368 <GProtectFaultHandle>:
  100368:	55                   	push   %ebp
  100369:	89 e5                	mov    %esp,%ebp
  10036b:	83 ec 10             	sub    $0x10,%esp
  10036e:	68 a2 00 00 00       	push   $0xa2
  100373:	68 e4 10 10 00       	push   $0x1010e4
  100378:	e8 03 0c 00 00       	call   100f80 <abort>
  10037d:	83 c4 10             	add    $0x10,%esp
  100380:	c9                   	leave  
  100381:	c3                   	ret    
  100382:	66 90                	xchg   %ax,%ax

00100384 <initIdt>:
  100384:	55                   	push   %ebp
  100385:	89 e5                	mov    %esp,%ebp
  100387:	53                   	push   %ebx
  100388:	ba a6 10 10 00       	mov    $0x1010a6,%edx
  10038d:	89 d3                	mov    %edx,%ebx
  10038f:	c1 ea 10             	shr    $0x10,%edx
  100392:	b9 40 2a 10 00       	mov    $0x102a40,%ecx
  100397:	b8 40 22 10 00       	mov    $0x102240,%eax
  10039c:	66 89 18             	mov    %bx,(%eax)
  10039f:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  1003a5:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1003a9:	c6 40 05 8f          	movb   $0x8f,0x5(%eax)
  1003ad:	66 89 50 06          	mov    %dx,0x6(%eax)
  1003b1:	83 c0 08             	add    $0x8,%eax
  1003b4:	39 c1                	cmp    %eax,%ecx
  1003b6:	75 e4                	jne    10039c <initIdt+0x18>
  1003b8:	b8 4f 10 10 00       	mov    $0x10104f,%eax
  1003bd:	66 a3 40 22 10 00    	mov    %ax,0x102240
  1003c3:	66 c7 05 42 22 10 00 	movw   $0x8,0x102242
  1003ca:	08 00 
  1003cc:	c6 05 44 22 10 00 00 	movb   $0x0,0x102244
  1003d3:	c6 05 45 22 10 00 8f 	movb   $0x8f,0x102245
  1003da:	c1 e8 10             	shr    $0x10,%eax
  1003dd:	66 a3 46 22 10 00    	mov    %ax,0x102246
  1003e3:	b8 55 10 10 00       	mov    $0x101055,%eax
  1003e8:	66 a3 48 22 10 00    	mov    %ax,0x102248
  1003ee:	66 c7 05 4a 22 10 00 	movw   $0x8,0x10224a
  1003f5:	08 00 
  1003f7:	c6 05 4c 22 10 00 00 	movb   $0x0,0x10224c
  1003fe:	c6 05 4d 22 10 00 8f 	movb   $0x8f,0x10224d
  100405:	c1 e8 10             	shr    $0x10,%eax
  100408:	66 a3 4e 22 10 00    	mov    %ax,0x10224e
  10040e:	b8 5b 10 10 00       	mov    $0x10105b,%eax
  100413:	66 a3 50 22 10 00    	mov    %ax,0x102250
  100419:	66 c7 05 52 22 10 00 	movw   $0x8,0x102252
  100420:	08 00 
  100422:	c6 05 54 22 10 00 00 	movb   $0x0,0x102254
  100429:	c6 05 55 22 10 00 8f 	movb   $0x8f,0x102255
  100430:	c1 e8 10             	shr    $0x10,%eax
  100433:	66 a3 56 22 10 00    	mov    %ax,0x102256
  100439:	b8 61 10 10 00       	mov    $0x101061,%eax
  10043e:	66 a3 58 22 10 00    	mov    %ax,0x102258
  100444:	66 c7 05 5a 22 10 00 	movw   $0x8,0x10225a
  10044b:	08 00 
  10044d:	c6 05 5c 22 10 00 00 	movb   $0x0,0x10225c
  100454:	c6 05 5d 22 10 00 8f 	movb   $0x8f,0x10225d
  10045b:	c1 e8 10             	shr    $0x10,%eax
  10045e:	66 a3 5e 22 10 00    	mov    %ax,0x10225e
  100464:	b8 67 10 10 00       	mov    $0x101067,%eax
  100469:	66 a3 60 22 10 00    	mov    %ax,0x102260
  10046f:	66 c7 05 62 22 10 00 	movw   $0x8,0x102262
  100476:	08 00 
  100478:	c6 05 64 22 10 00 00 	movb   $0x0,0x102264
  10047f:	c6 05 65 22 10 00 8f 	movb   $0x8f,0x102265
  100486:	c1 e8 10             	shr    $0x10,%eax
  100489:	66 a3 66 22 10 00    	mov    %ax,0x102266
  10048f:	b8 6d 10 10 00       	mov    $0x10106d,%eax
  100494:	66 a3 68 22 10 00    	mov    %ax,0x102268
  10049a:	66 c7 05 6a 22 10 00 	movw   $0x8,0x10226a
  1004a1:	08 00 
  1004a3:	c6 05 6c 22 10 00 00 	movb   $0x0,0x10226c
  1004aa:	c6 05 6d 22 10 00 8f 	movb   $0x8f,0x10226d
  1004b1:	c1 e8 10             	shr    $0x10,%eax
  1004b4:	66 a3 6e 22 10 00    	mov    %ax,0x10226e
  1004ba:	b8 73 10 10 00       	mov    $0x101073,%eax
  1004bf:	66 a3 70 22 10 00    	mov    %ax,0x102270
  1004c5:	66 c7 05 72 22 10 00 	movw   $0x8,0x102272
  1004cc:	08 00 
  1004ce:	c6 05 74 22 10 00 00 	movb   $0x0,0x102274
  1004d5:	c6 05 75 22 10 00 8f 	movb   $0x8f,0x102275
  1004dc:	c1 e8 10             	shr    $0x10,%eax
  1004df:	66 a3 76 22 10 00    	mov    %ax,0x102276
  1004e5:	b8 79 10 10 00       	mov    $0x101079,%eax
  1004ea:	66 a3 78 22 10 00    	mov    %ax,0x102278
  1004f0:	66 c7 05 7a 22 10 00 	movw   $0x8,0x10227a
  1004f7:	08 00 
  1004f9:	c6 05 7c 22 10 00 00 	movb   $0x0,0x10227c
  100500:	c6 05 7d 22 10 00 8f 	movb   $0x8f,0x10227d
  100507:	c1 e8 10             	shr    $0x10,%eax
  10050a:	66 a3 7e 22 10 00    	mov    %ax,0x10227e
  100510:	b8 7f 10 10 00       	mov    $0x10107f,%eax
  100515:	66 a3 80 22 10 00    	mov    %ax,0x102280
  10051b:	66 c7 05 82 22 10 00 	movw   $0x8,0x102282
  100522:	08 00 
  100524:	c6 05 84 22 10 00 00 	movb   $0x0,0x102284
  10052b:	c6 05 85 22 10 00 8f 	movb   $0x8f,0x102285
  100532:	c1 e8 10             	shr    $0x10,%eax
  100535:	66 a3 86 22 10 00    	mov    %ax,0x102286
  10053b:	b8 83 10 10 00       	mov    $0x101083,%eax
  100540:	66 a3 88 22 10 00    	mov    %ax,0x102288
  100546:	66 c7 05 8a 22 10 00 	movw   $0x8,0x10228a
  10054d:	08 00 
  10054f:	c6 05 8c 22 10 00 00 	movb   $0x0,0x10228c
  100556:	c6 05 8d 22 10 00 8f 	movb   $0x8f,0x10228d
  10055d:	c1 e8 10             	shr    $0x10,%eax
  100560:	66 a3 8e 22 10 00    	mov    %ax,0x10228e
  100566:	b8 89 10 10 00       	mov    $0x101089,%eax
  10056b:	66 a3 90 22 10 00    	mov    %ax,0x102290
  100571:	66 c7 05 92 22 10 00 	movw   $0x8,0x102292
  100578:	08 00 
  10057a:	c6 05 94 22 10 00 00 	movb   $0x0,0x102294
  100581:	c6 05 95 22 10 00 8f 	movb   $0x8f,0x102295
  100588:	c1 e8 10             	shr    $0x10,%eax
  10058b:	66 a3 96 22 10 00    	mov    %ax,0x102296
  100591:	b8 8d 10 10 00       	mov    $0x10108d,%eax
  100596:	66 a3 98 22 10 00    	mov    %ax,0x102298
  10059c:	66 c7 05 9a 22 10 00 	movw   $0x8,0x10229a
  1005a3:	08 00 
  1005a5:	c6 05 9c 22 10 00 00 	movb   $0x0,0x10229c
  1005ac:	c6 05 9d 22 10 00 8f 	movb   $0x8f,0x10229d
  1005b3:	c1 e8 10             	shr    $0x10,%eax
  1005b6:	66 a3 9e 22 10 00    	mov    %ax,0x10229e
  1005bc:	b8 91 10 10 00       	mov    $0x101091,%eax
  1005c1:	66 a3 a0 22 10 00    	mov    %ax,0x1022a0
  1005c7:	66 c7 05 a2 22 10 00 	movw   $0x8,0x1022a2
  1005ce:	08 00 
  1005d0:	c6 05 a4 22 10 00 00 	movb   $0x0,0x1022a4
  1005d7:	c6 05 a5 22 10 00 8f 	movb   $0x8f,0x1022a5
  1005de:	c1 e8 10             	shr    $0x10,%eax
  1005e1:	66 a3 a6 22 10 00    	mov    %ax,0x1022a6
  1005e7:	66 c7 05 aa 22 10 00 	movw   $0x8,0x1022aa
  1005ee:	08 00 
  1005f0:	c6 05 ac 22 10 00 00 	movb   $0x0,0x1022ac
  1005f7:	c6 05 ad 22 10 00 8f 	movb   $0x8f,0x1022ad
  1005fe:	b8 99 10 10 00       	mov    $0x101099,%eax
  100603:	66 a3 b0 22 10 00    	mov    %ax,0x1022b0
  100609:	66 c7 05 b2 22 10 00 	movw   $0x8,0x1022b2
  100610:	08 00 
  100612:	c6 05 b4 22 10 00 00 	movb   $0x0,0x1022b4
  100619:	c6 05 b5 22 10 00 8f 	movb   $0x8f,0x1022b5
  100620:	c1 e8 10             	shr    $0x10,%eax
  100623:	66 a3 b6 22 10 00    	mov    %ax,0x1022b6
  100629:	b8 ac 10 10 00       	mov    $0x1010ac,%eax
  10062e:	66 a3 a8 22 10 00    	mov    %ax,0x1022a8
  100634:	c1 e8 10             	shr    $0x10,%eax
  100637:	66 a3 ae 22 10 00    	mov    %ax,0x1022ae
  10063d:	b8 b0 10 10 00       	mov    $0x1010b0,%eax
  100642:	66 a3 40 26 10 00    	mov    %ax,0x102640
  100648:	66 c7 05 42 26 10 00 	movw   $0x8,0x102642
  10064f:	08 00 
  100651:	c6 05 44 26 10 00 00 	movb   $0x0,0x102644
  100658:	c6 05 45 26 10 00 ef 	movb   $0xef,0x102645
  10065f:	c1 e8 10             	shr    $0x10,%eax
  100662:	66 a3 46 26 10 00    	mov    %ax,0x102646
  100668:	b8 9d 10 10 00       	mov    $0x10109d,%eax
  10066d:	66 a3 40 23 10 00    	mov    %ax,0x102340
  100673:	66 c7 05 42 23 10 00 	movw   $0x8,0x102342
  10067a:	08 00 
  10067c:	c6 05 44 23 10 00 00 	movb   $0x0,0x102344
  100683:	c6 05 45 23 10 00 8e 	movb   $0x8e,0x102345
  10068a:	c1 e8 10             	shr    $0x10,%eax
  10068d:	66 a3 46 23 10 00    	mov    %ax,0x102346
  100693:	66 c7 05 24 21 10 00 	movw   $0x7ff,0x102124
  10069a:	ff 07 
  10069c:	b8 40 22 10 00       	mov    $0x102240,%eax
  1006a1:	66 a3 26 21 10 00    	mov    %ax,0x102126
  1006a7:	c1 e8 10             	shr    $0x10,%eax
  1006aa:	66 a3 28 21 10 00    	mov    %ax,0x102128
  1006b0:	b8 24 21 10 00       	mov    $0x102124,%eax
  1006b5:	0f 01 18             	lidtl  (%eax)
  1006b8:	5b                   	pop    %ebx
  1006b9:	5d                   	pop    %ebp
  1006ba:	c3                   	ret    
  1006bb:	90                   	nop

001006bc <initSerial>:
  1006bc:	55                   	push   %ebp
  1006bd:	89 e5                	mov    %esp,%ebp
  1006bf:	ba f9 03 00 00       	mov    $0x3f9,%edx
  1006c4:	31 c0                	xor    %eax,%eax
  1006c6:	ee                   	out    %al,(%dx)
  1006c7:	ba fb 03 00 00       	mov    $0x3fb,%edx
  1006cc:	b0 80                	mov    $0x80,%al
  1006ce:	ee                   	out    %al,(%dx)
  1006cf:	ba f8 03 00 00       	mov    $0x3f8,%edx
  1006d4:	b0 01                	mov    $0x1,%al
  1006d6:	ee                   	out    %al,(%dx)
  1006d7:	ba f9 03 00 00       	mov    $0x3f9,%edx
  1006dc:	31 c0                	xor    %eax,%eax
  1006de:	ee                   	out    %al,(%dx)
  1006df:	ba fb 03 00 00       	mov    $0x3fb,%edx
  1006e4:	b0 03                	mov    $0x3,%al
  1006e6:	ee                   	out    %al,(%dx)
  1006e7:	ba fa 03 00 00       	mov    $0x3fa,%edx
  1006ec:	b0 c7                	mov    $0xc7,%al
  1006ee:	ee                   	out    %al,(%dx)
  1006ef:	ba fc 03 00 00       	mov    $0x3fc,%edx
  1006f4:	b0 0b                	mov    $0xb,%al
  1006f6:	ee                   	out    %al,(%dx)
  1006f7:	5d                   	pop    %ebp
  1006f8:	c3                   	ret    
  1006f9:	8d 76 00             	lea    0x0(%esi),%esi

001006fc <putChar>:
  1006fc:	55                   	push   %ebp
  1006fd:	89 e5                	mov    %esp,%ebp
  1006ff:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100702:	ba fd 03 00 00       	mov    $0x3fd,%edx
  100707:	90                   	nop
  100708:	ec                   	in     (%dx),%al
  100709:	a8 20                	test   $0x20,%al
  10070b:	74 fb                	je     100708 <putChar+0xc>
  10070d:	ba f8 03 00 00       	mov    $0x3f8,%edx
  100712:	88 c8                	mov    %cl,%al
  100714:	ee                   	out    %al,(%dx)
  100715:	5d                   	pop    %ebp
  100716:	c3                   	ret    
  100717:	90                   	nop

00100718 <initProcess>:
  100718:	55                   	push   %ebp
  100719:	89 e5                	mov    %esp,%ebp
  10071b:	57                   	push   %edi
  10071c:	56                   	push   %esi
  10071d:	53                   	push   %ebx
  10071e:	83 ec 0c             	sub    $0xc,%esp
  100721:	c7 05 90 3a 10 00 00 	movl   $0x0,0x103a90
  100728:	00 00 00 
  10072b:	c7 05 94 3a 10 00 05 	movl   $0x5,0x103a94
  100732:	00 00 00 
  100735:	b9 c0 3a 10 00       	mov    $0x103ac0,%ecx
  10073a:	31 ff                	xor    %edi,%edi
  10073c:	c7 81 50 10 00 00 03 	movl   $0x3,0x1050(%ecx)
  100743:	00 00 00 
  100746:	c7 81 24 10 00 00 23 	movl   $0x23,0x1024(%ecx)
  10074d:	00 00 00 
  100750:	c7 81 28 10 00 00 23 	movl   $0x23,0x1028(%ecx)
  100757:	00 00 00 
  10075a:	c7 81 2c 10 00 00 23 	movl   $0x23,0x102c(%ecx)
  100761:	00 00 00 
  100764:	c7 81 30 10 00 00 23 	movl   $0x23,0x1030(%ecx)
  10076b:	00 00 00 
  10076e:	c7 81 40 10 00 00 1b 	movl   $0x1b,0x1040(%ecx)
  100775:	00 00 00 
  100778:	c7 81 44 10 00 00 02 	movl   $0x202,0x1044(%ecx)
  10077f:	02 00 00 
  100782:	c7 81 48 10 00 00 00 	movl   $0x200000,0x1048(%ecx)
  100789:	00 20 00 
  10078c:	c7 81 4c 10 00 00 23 	movl   $0x23,0x104c(%ecx)
  100793:	00 00 00 
  100796:	8d 77 01             	lea    0x1(%edi),%esi
  100799:	89 b1 5c 10 00 00    	mov    %esi,0x105c(%ecx)
  10079f:	89 fb                	mov    %edi,%ebx
  1007a1:	c1 e3 14             	shl    $0x14,%ebx
  1007a4:	81 c3 00 00 30 00    	add    $0x300000,%ebx
  1007aa:	c1 eb 10             	shr    $0x10,%ebx
  1007ad:	89 fa                	mov    %edi,%edx
  1007af:	c1 e2 06             	shl    $0x6,%edx
  1007b2:	01 fa                	add    %edi,%edx
  1007b4:	01 d2                	add    %edx,%edx
  1007b6:	01 fa                	add    %edi,%edx
  1007b8:	8d 04 12             	lea    (%edx,%edx,1),%eax
  1007bb:	01 f8                	add    %edi,%eax
  1007bd:	c1 e0 04             	shl    $0x4,%eax
  1007c0:	8d 90 c0 3a 10 00    	lea    0x103ac0(%eax),%edx
  1007c6:	66 c7 80 20 4b 10 00 	movw   $0xffff,0x104b20(%eax)
  1007cd:	ff ff 
  1007cf:	66 c7 80 22 4b 10 00 	movw   $0x0,0x104b22(%eax)
  1007d6:	00 00 
  1007d8:	88 98 24 4b 10 00    	mov    %bl,0x104b24(%eax)
  1007de:	c6 80 25 4b 10 00 fa 	movb   $0xfa,0x104b25(%eax)
  1007e5:	c6 80 26 4b 10 00 cf 	movb   $0xcf,0x104b26(%eax)
  1007ec:	c6 80 27 4b 10 00 00 	movb   $0x0,0x104b27(%eax)
  1007f3:	66 c7 80 28 4b 10 00 	movw   $0xffff,0x104b28(%eax)
  1007fa:	ff ff 
  1007fc:	66 c7 80 2a 4b 10 00 	movw   $0x0,0x104b2a(%eax)
  100803:	00 00 
  100805:	88 98 2c 4b 10 00    	mov    %bl,0x104b2c(%eax)
  10080b:	c6 80 2d 4b 10 00 f2 	movb   $0xf2,0x104b2d(%eax)
  100812:	c6 80 2e 4b 10 00 cf 	movb   $0xcf,0x104b2e(%eax)
  100819:	c6 82 6f 10 00 00 00 	movb   $0x0,0x106f(%edx)
  100820:	81 c1 70 10 00 00    	add    $0x1070,%ecx
  100826:	89 f7                	mov    %esi,%edi
  100828:	83 fe 02             	cmp    $0x2,%esi
  10082b:	0f 85 0b ff ff ff    	jne    10073c <initProcess+0x24>
  100831:	50                   	push   %eax
  100832:	68 00 92 01 00       	push   $0x19200
  100837:	68 00 02 00 00       	push   $0x200
  10083c:	68 00 80 00 00       	push   $0x8000
  100841:	e8 12 03 00 00       	call   100b58 <readseg>
  100846:	5a                   	pop    %edx
  100847:	59                   	pop    %ecx
  100848:	68 00 00 30 00       	push   $0x300000
  10084d:	68 00 80 00 00       	push   $0x8000
  100852:	e8 5d 03 00 00       	call   100bb4 <loader>
  100857:	a3 fc 4a 10 00       	mov    %eax,0x104afc
  10085c:	c7 05 10 4b 10 00 02 	movl   $0x2,0x104b10
  100863:	00 00 00 
  100866:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  10086d:	2a 10 00 
  100870:	83 c4 10             	add    $0x10,%esp
  100873:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100876:	5b                   	pop    %ebx
  100877:	5e                   	pop    %esi
  100878:	5f                   	pop    %edi
  100879:	5d                   	pop    %ebp
  10087a:	c3                   	ret    
  10087b:	90                   	nop

0010087c <schedule>:
  10087c:	55                   	push   %ebp
  10087d:	89 e5                	mov    %esp,%ebp
  10087f:	83 ec 08             	sub    $0x8,%esp
  100882:	83 3d 10 4b 10 00 02 	cmpl   $0x2,0x104b10
  100889:	74 25                	je     1008b0 <schedule+0x34>
  10088b:	83 3d 80 5b 10 00 02 	cmpl   $0x2,0x105b80
  100892:	0f 84 e4 00 00 00    	je     10097c <schedule+0x100>
  100898:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  10089f:	2a 10 00 
  1008a2:	c7 05 94 3a 10 00 0a 	movl   $0xa,0x103a94
  1008a9:	00 00 00 
  1008ac:	c9                   	leave  
  1008ad:	c3                   	ret    
  1008ae:	66 90                	xchg   %ax,%ax
  1008b0:	b8 c0 3a 10 00       	mov    $0x103ac0,%eax
  1008b5:	a3 b0 3a 10 00       	mov    %eax,0x103ab0
  1008ba:	c7 80 54 10 00 00 0a 	movl   $0xa,0x1054(%eax)
  1008c1:	00 00 00 
  1008c4:	c7 80 50 10 00 00 00 	movl   $0x0,0x1050(%eax)
  1008cb:	00 00 00 
  1008ce:	05 50 10 00 00       	add    $0x1050,%eax
  1008d3:	a3 e4 5b 10 00       	mov    %eax,0x105be4
  1008d8:	83 ec 08             	sub    $0x8,%esp
  1008db:	ff 35 00 4b 10 00    	pushl  0x104b00
  1008e1:	68 01 11 10 00       	push   $0x101101
  1008e6:	e8 2d 05 00 00       	call   100e18 <Log>
  1008eb:	58                   	pop    %eax
  1008ec:	5a                   	pop    %edx
  1008ed:	ff 35 fc 4a 10 00    	pushl  0x104afc
  1008f3:	68 08 11 10 00       	push   $0x101108
  1008f8:	e8 1b 05 00 00       	call   100e18 <Log>
  1008fd:	59                   	pop    %ecx
  1008fe:	58                   	pop    %eax
  1008ff:	0f b7 05 ba 5b 10 00 	movzwl 0x105bba,%eax
  100906:	50                   	push   %eax
  100907:	68 10 11 10 00       	push   $0x101110
  10090c:	e8 07 05 00 00       	call   100e18 <Log>
  100911:	58                   	pop    %eax
  100912:	5a                   	pop    %edx
  100913:	0f b6 05 bc 5b 10 00 	movzbl 0x105bbc,%eax
  10091a:	50                   	push   %eax
  10091b:	68 24 11 10 00       	push   $0x101124
  100920:	e8 f3 04 00 00       	call   100e18 <Log>
  100925:	59                   	pop    %ecx
  100926:	58                   	pop    %eax
  100927:	0f b6 05 bf 5b 10 00 	movzbl 0x105bbf,%eax
  10092e:	50                   	push   %eax
  10092f:	68 39 11 10 00       	push   $0x101139
  100934:	e8 df 04 00 00       	call   100e18 <Log>
  100939:	58                   	pop    %eax
  10093a:	5a                   	pop    %edx
  10093b:	0f b7 05 c2 5b 10 00 	movzwl 0x105bc2,%eax
  100942:	50                   	push   %eax
  100943:	68 4e 11 10 00       	push   $0x10114e
  100948:	e8 cb 04 00 00       	call   100e18 <Log>
  10094d:	59                   	pop    %ecx
  10094e:	58                   	pop    %eax
  10094f:	0f b6 05 c4 5b 10 00 	movzbl 0x105bc4,%eax
  100956:	50                   	push   %eax
  100957:	68 62 11 10 00       	push   $0x101162
  10095c:	e8 b7 04 00 00       	call   100e18 <Log>
  100961:	58                   	pop    %eax
  100962:	5a                   	pop    %edx
  100963:	0f b6 05 c7 5b 10 00 	movzbl 0x105bc7,%eax
  10096a:	50                   	push   %eax
  10096b:	68 77 11 10 00       	push   $0x101177
  100970:	e8 a3 04 00 00       	call   100e18 <Log>
  100975:	83 c4 10             	add    $0x10,%esp
  100978:	c9                   	leave  
  100979:	c3                   	ret    
  10097a:	66 90                	xchg   %ax,%ax
  10097c:	b8 30 4b 10 00       	mov    $0x104b30,%eax
  100981:	e9 2f ff ff ff       	jmp    1008b5 <schedule+0x39>
  100986:	66 90                	xchg   %ax,%ax

00100988 <waitDisk>:
  100988:	55                   	push   %ebp
  100989:	89 e5                	mov    %esp,%ebp
  10098b:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100990:	ec                   	in     (%dx),%al
  100991:	83 e0 c0             	and    $0xffffffc0,%eax
  100994:	3c 40                	cmp    $0x40,%al
  100996:	75 f8                	jne    100990 <waitDisk+0x8>
  100998:	5d                   	pop    %ebp
  100999:	c3                   	ret    
  10099a:	66 90                	xchg   %ax,%ax

0010099c <readSect>:
  10099c:	55                   	push   %ebp
  10099d:	89 e5                	mov    %esp,%ebp
  10099f:	53                   	push   %ebx
  1009a0:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  1009a3:	ba f7 01 00 00       	mov    $0x1f7,%edx
  1009a8:	ec                   	in     (%dx),%al
  1009a9:	83 e0 c0             	and    $0xffffffc0,%eax
  1009ac:	3c 40                	cmp    $0x40,%al
  1009ae:	75 f8                	jne    1009a8 <readSect+0xc>
  1009b0:	ba f2 01 00 00       	mov    $0x1f2,%edx
  1009b5:	b0 01                	mov    $0x1,%al
  1009b7:	ee                   	out    %al,(%dx)
  1009b8:	ba f3 01 00 00       	mov    $0x1f3,%edx
  1009bd:	88 c8                	mov    %cl,%al
  1009bf:	ee                   	out    %al,(%dx)
  1009c0:	89 c8                	mov    %ecx,%eax
  1009c2:	c1 f8 08             	sar    $0x8,%eax
  1009c5:	ba f4 01 00 00       	mov    $0x1f4,%edx
  1009ca:	ee                   	out    %al,(%dx)
  1009cb:	89 c8                	mov    %ecx,%eax
  1009cd:	c1 f8 10             	sar    $0x10,%eax
  1009d0:	ba f5 01 00 00       	mov    $0x1f5,%edx
  1009d5:	ee                   	out    %al,(%dx)
  1009d6:	89 c8                	mov    %ecx,%eax
  1009d8:	c1 f8 18             	sar    $0x18,%eax
  1009db:	83 c8 e0             	or     $0xffffffe0,%eax
  1009de:	ba f6 01 00 00       	mov    $0x1f6,%edx
  1009e3:	ee                   	out    %al,(%dx)
  1009e4:	ba f7 01 00 00       	mov    $0x1f7,%edx
  1009e9:	b0 20                	mov    $0x20,%al
  1009eb:	ee                   	out    %al,(%dx)
  1009ec:	ec                   	in     (%dx),%al
  1009ed:	83 e0 c0             	and    $0xffffffc0,%eax
  1009f0:	3c 40                	cmp    $0x40,%al
  1009f2:	75 f8                	jne    1009ec <readSect+0x50>
  1009f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1009f7:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  1009fd:	ba f0 01 00 00       	mov    $0x1f0,%edx
  100a02:	66 90                	xchg   %ax,%ax
  100a04:	ed                   	in     (%dx),%eax
  100a05:	89 01                	mov    %eax,(%ecx)
  100a07:	83 c1 04             	add    $0x4,%ecx
  100a0a:	39 d9                	cmp    %ebx,%ecx
  100a0c:	75 f6                	jne    100a04 <readSect+0x68>
  100a0e:	5b                   	pop    %ebx
  100a0f:	5d                   	pop    %ebp
  100a10:	c3                   	ret    
  100a11:	8d 76 00             	lea    0x0(%esi),%esi

00100a14 <initSeg>:
  100a14:	55                   	push   %ebp
  100a15:	89 e5                	mov    %esp,%ebp
  100a17:	b9 a0 5b 10 00       	mov    $0x105ba0,%ecx
  100a1c:	66 c7 05 a8 5b 10 00 	movw   $0xffff,0x105ba8
  100a23:	ff ff 
  100a25:	66 c7 05 aa 5b 10 00 	movw   $0x0,0x105baa
  100a2c:	00 00 
  100a2e:	c6 05 ac 5b 10 00 00 	movb   $0x0,0x105bac
  100a35:	c6 05 ad 5b 10 00 9a 	movb   $0x9a,0x105bad
  100a3c:	c6 05 ae 5b 10 00 cf 	movb   $0xcf,0x105bae
  100a43:	c6 05 af 5b 10 00 00 	movb   $0x0,0x105baf
  100a4a:	66 c7 05 b0 5b 10 00 	movw   $0xffff,0x105bb0
  100a51:	ff ff 
  100a53:	66 c7 05 b2 5b 10 00 	movw   $0x0,0x105bb2
  100a5a:	00 00 
  100a5c:	c6 05 b4 5b 10 00 00 	movb   $0x0,0x105bb4
  100a63:	c6 05 b5 5b 10 00 92 	movb   $0x92,0x105bb5
  100a6a:	c6 05 b6 5b 10 00 cf 	movb   $0xcf,0x105bb6
  100a71:	c6 05 b7 5b 10 00 00 	movb   $0x0,0x105bb7
  100a78:	a1 8c 11 10 00       	mov    0x10118c,%eax
  100a7d:	8b 15 90 11 10 00    	mov    0x101190,%edx
  100a83:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100a88:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100a8e:	a1 94 11 10 00       	mov    0x101194,%eax
  100a93:	8b 15 98 11 10 00    	mov    0x101198,%edx
  100a99:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  100a9e:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100aa4:	66 c7 05 c8 5b 10 00 	movw   $0x63,0x105bc8
  100aab:	63 00 
  100aad:	b8 e0 5b 10 00       	mov    $0x105be0,%eax
  100ab2:	66 a3 ca 5b 10 00    	mov    %ax,0x105bca
  100ab8:	89 c2                	mov    %eax,%edx
  100aba:	c1 ea 10             	shr    $0x10,%edx
  100abd:	88 15 cc 5b 10 00    	mov    %dl,0x105bcc
  100ac3:	c6 05 cd 5b 10 00 89 	movb   $0x89,0x105bcd
  100aca:	c6 05 ce 5b 10 00 40 	movb   $0x40,0x105bce
  100ad1:	c1 e8 18             	shr    $0x18,%eax
  100ad4:	a2 cf 5b 10 00       	mov    %al,0x105bcf
  100ad9:	66 c7 05 2c 21 10 00 	movw   $0x37,0x10212c
  100ae0:	37 00 
  100ae2:	66 89 0d 2e 21 10 00 	mov    %cx,0x10212e
  100ae9:	c1 e9 10             	shr    $0x10,%ecx
  100aec:	66 89 0d 30 21 10 00 	mov    %cx,0x102130
  100af3:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  100af8:	0f 01 10             	lgdtl  (%eax)
  100afb:	b8 28 00 00 00       	mov    $0x28,%eax
  100b00:	0f 00 d8             	ltr    %ax
  100b03:	c7 05 e8 5b 10 00 10 	movl   $0x10,0x105be8
  100b0a:	00 00 00 
  100b0d:	c7 05 e4 5b 10 00 90 	movl   $0x103a90,0x105be4
  100b14:	3a 10 00 
  100b17:	b8 10 00 00 00       	mov    $0x10,%eax
  100b1c:	8e c0                	mov    %eax,%es
  100b1e:	8e d8                	mov    %eax,%ds
  100b20:	8e e8                	mov    %eax,%gs
  100b22:	8e e0                	mov    %eax,%fs
  100b24:	8e d0                	mov    %eax,%ss
  100b26:	31 c0                	xor    %eax,%eax
  100b28:	0f 00 d0             	lldt   %ax
  100b2b:	5d                   	pop    %ebp
  100b2c:	c3                   	ret    
  100b2d:	8d 76 00             	lea    0x0(%esi),%esi

00100b30 <enterUserSpace>:
  100b30:	55                   	push   %ebp
  100b31:	89 e5                	mov    %esp,%ebp
  100b33:	b8 23 00 00 00       	mov    $0x23,%eax
  100b38:	fa                   	cli    
  100b39:	8e c0                	mov    %eax,%es
  100b3b:	8e e0                	mov    %eax,%fs
  100b3d:	8e d8                	mov    %eax,%ds
  100b3f:	8e e8                	mov    %eax,%gs
  100b41:	66 6a 23             	pushw  $0x23
  100b44:	68 00 00 40 00       	push   $0x400000
  100b49:	68 02 02 00 00       	push   $0x202
  100b4e:	6a 1b                	push   $0x1b
  100b50:	ff 75 08             	pushl  0x8(%ebp)
  100b53:	fb                   	sti    
  100b54:	cf                   	iret   
  100b55:	5d                   	pop    %ebp
  100b56:	c3                   	ret    
  100b57:	90                   	nop

00100b58 <readseg>:
  100b58:	55                   	push   %ebp
  100b59:	89 e5                	mov    %esp,%ebp
  100b5b:	57                   	push   %edi
  100b5c:	56                   	push   %esi
  100b5d:	53                   	push   %ebx
  100b5e:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100b61:	8b 7d 10             	mov    0x10(%ebp),%edi
  100b64:	8b 75 0c             	mov    0xc(%ebp),%esi
  100b67:	01 de                	add    %ebx,%esi
  100b69:	89 f8                	mov    %edi,%eax
  100b6b:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100b70:	78 2a                	js     100b9c <readseg+0x44>
  100b72:	29 c3                	sub    %eax,%ebx
  100b74:	85 ff                	test   %edi,%edi
  100b76:	78 31                	js     100ba9 <readseg+0x51>
  100b78:	c1 ff 09             	sar    $0x9,%edi
  100b7b:	39 de                	cmp    %ebx,%esi
  100b7d:	76 15                	jbe    100b94 <readseg+0x3c>
  100b7f:	90                   	nop
  100b80:	57                   	push   %edi
  100b81:	53                   	push   %ebx
  100b82:	e8 15 fe ff ff       	call   10099c <readSect>
  100b87:	81 c3 00 02 00 00    	add    $0x200,%ebx
  100b8d:	47                   	inc    %edi
  100b8e:	58                   	pop    %eax
  100b8f:	5a                   	pop    %edx
  100b90:	39 de                	cmp    %ebx,%esi
  100b92:	77 ec                	ja     100b80 <readseg+0x28>
  100b94:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100b97:	5b                   	pop    %ebx
  100b98:	5e                   	pop    %esi
  100b99:	5f                   	pop    %edi
  100b9a:	5d                   	pop    %ebp
  100b9b:	c3                   	ret    
  100b9c:	48                   	dec    %eax
  100b9d:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100ba2:	40                   	inc    %eax
  100ba3:	29 c3                	sub    %eax,%ebx
  100ba5:	85 ff                	test   %edi,%edi
  100ba7:	79 cf                	jns    100b78 <readseg+0x20>
  100ba9:	81 c7 ff 01 00 00    	add    $0x1ff,%edi
  100baf:	eb c7                	jmp    100b78 <readseg+0x20>
  100bb1:	8d 76 00             	lea    0x0(%esi),%esi

00100bb4 <loader>:
  100bb4:	55                   	push   %ebp
  100bb5:	89 e5                	mov    %esp,%ebp
  100bb7:	57                   	push   %edi
  100bb8:	56                   	push   %esi
  100bb9:	53                   	push   %ebx
  100bba:	83 ec 2c             	sub    $0x2c,%esp
  100bbd:	8b 55 08             	mov    0x8(%ebp),%edx
  100bc0:	8b 42 2c             	mov    0x2c(%edx),%eax
  100bc3:	66 83 f8 ff          	cmp    $0xffff,%ax
  100bc7:	0f 84 8b 00 00 00    	je     100c58 <loader+0xa4>
  100bcd:	0f b7 c8             	movzwl %ax,%ecx
  100bd0:	85 c9                	test   %ecx,%ecx
  100bd2:	74 72                	je     100c46 <loader+0x92>
  100bd4:	31 ff                	xor    %edi,%edi
  100bd6:	89 d6                	mov    %edx,%esi
  100bd8:	eb 07                	jmp    100be1 <loader+0x2d>
  100bda:	66 90                	xchg   %ax,%ax
  100bdc:	47                   	inc    %edi
  100bdd:	39 cf                	cmp    %ecx,%edi
  100bdf:	7d 63                	jge    100c44 <loader+0x90>
  100be1:	0f b7 46 2a          	movzwl 0x2a(%esi),%eax
  100be5:	0f af c7             	imul   %edi,%eax
  100be8:	03 46 1c             	add    0x1c(%esi),%eax
  100beb:	01 f0                	add    %esi,%eax
  100bed:	83 38 01             	cmpl   $0x1,(%eax)
  100bf0:	75 ea                	jne    100bdc <loader+0x28>
  100bf2:	89 4d d0             	mov    %ecx,-0x30(%ebp)
  100bf5:	8b 55 0c             	mov    0xc(%ebp),%edx
  100bf8:	03 50 08             	add    0x8(%eax),%edx
  100bfb:	8b 58 10             	mov    0x10(%eax),%ebx
  100bfe:	8b 48 14             	mov    0x14(%eax),%ecx
  100c01:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  100c04:	51                   	push   %ecx
  100c05:	8b 40 04             	mov    0x4(%eax),%eax
  100c08:	05 00 92 01 00       	add    $0x19200,%eax
  100c0d:	50                   	push   %eax
  100c0e:	53                   	push   %ebx
  100c0f:	52                   	push   %edx
  100c10:	89 55 cc             	mov    %edx,-0x34(%ebp)
  100c13:	e8 40 ff ff ff       	call   100b58 <readseg>
  100c18:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100c1b:	29 d8                	sub    %ebx,%eax
  100c1d:	83 c4 10             	add    $0x10,%esp
  100c20:	85 c0                	test   %eax,%eax
  100c22:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  100c25:	7e b5                	jle    100bdc <loader+0x28>
  100c27:	8b 55 cc             	mov    -0x34(%ebp),%edx
  100c2a:	01 d3                	add    %edx,%ebx
  100c2c:	03 55 d4             	add    -0x2c(%ebp),%edx
  100c2f:	39 d3                	cmp    %edx,%ebx
  100c31:	73 a9                	jae    100bdc <loader+0x28>
  100c33:	90                   	nop
  100c34:	43                   	inc    %ebx
  100c35:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
  100c39:	39 d3                	cmp    %edx,%ebx
  100c3b:	75 f7                	jne    100c34 <loader+0x80>
  100c3d:	47                   	inc    %edi
  100c3e:	39 cf                	cmp    %ecx,%edi
  100c40:	7c 9f                	jl     100be1 <loader+0x2d>
  100c42:	66 90                	xchg   %ax,%ax
  100c44:	89 f2                	mov    %esi,%edx
  100c46:	8b 42 18             	mov    0x18(%edx),%eax
  100c49:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100c4c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100c4f:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100c52:	5b                   	pop    %ebx
  100c53:	5e                   	pop    %esi
  100c54:	5f                   	pop    %edi
  100c55:	5d                   	pop    %ebp
  100c56:	c3                   	ret    
  100c57:	90                   	nop
  100c58:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  100c5b:	83 ec 08             	sub    $0x8,%esp
  100c5e:	6a 7e                	push   $0x7e
  100c60:	68 9c 11 10 00       	push   $0x10119c
  100c65:	e8 16 03 00 00       	call   100f80 <abort>
  100c6a:	83 c4 10             	add    $0x10,%esp
  100c6d:	b9 ff ff 00 00       	mov    $0xffff,%ecx
  100c72:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100c75:	e9 5a ff ff ff       	jmp    100bd4 <loader+0x20>
  100c7a:	66 90                	xchg   %ax,%ax

00100c7c <loadUMain>:
  100c7c:	55                   	push   %ebp
  100c7d:	89 e5                	mov    %esp,%ebp
  100c7f:	83 ec 18             	sub    $0x18,%esp
  100c82:	68 c9 00 00 00       	push   $0xc9
  100c87:	68 00 80 00 00       	push   $0x8000
  100c8c:	e8 0b fd ff ff       	call   10099c <readSect>
  100c91:	6a 00                	push   $0x0
  100c93:	68 00 80 00 00       	push   $0x8000
  100c98:	e8 17 ff ff ff       	call   100bb4 <loader>
  100c9d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100ca0:	b8 23 00 00 00       	mov    $0x23,%eax
  100ca5:	fa                   	cli    
  100ca6:	8e c0                	mov    %eax,%es
  100ca8:	8e e0                	mov    %eax,%fs
  100caa:	8e d8                	mov    %eax,%ds
  100cac:	8e e8                	mov    %eax,%gs
  100cae:	66 6a 23             	pushw  $0x23
  100cb1:	68 00 00 40 00       	push   $0x400000
  100cb6:	68 02 02 00 00       	push   $0x202
  100cbb:	6a 1b                	push   $0x1b
  100cbd:	ff 75 f4             	pushl  -0xc(%ebp)
  100cc0:	fb                   	sti    
  100cc1:	cf                   	iret   
  100cc2:	83 c4 10             	add    $0x10,%esp
  100cc5:	c9                   	leave  
  100cc6:	c3                   	ret    
  100cc7:	90                   	nop

00100cc8 <addString2Buff>:
  100cc8:	55                   	push   %ebp
  100cc9:	89 e5                	mov    %esp,%ebp
  100ccb:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100cce:	8a 11                	mov    (%ecx),%dl
  100cd0:	84 d2                	test   %dl,%dl
  100cd2:	74 1b                	je     100cef <addString2Buff+0x27>
  100cd4:	a1 08 22 10 00       	mov    0x102208,%eax
  100cd9:	29 c1                	sub    %eax,%ecx
  100cdb:	90                   	nop
  100cdc:	40                   	inc    %eax
  100cdd:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100ce3:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  100ce6:	84 d2                	test   %dl,%dl
  100ce8:	75 f2                	jne    100cdc <addString2Buff+0x14>
  100cea:	a3 08 22 10 00       	mov    %eax,0x102208
  100cef:	5d                   	pop    %ebp
  100cf0:	c3                   	ret    
  100cf1:	8d 76 00             	lea    0x0(%esi),%esi

00100cf4 <addCh2Buff>:
  100cf4:	55                   	push   %ebp
  100cf5:	89 e5                	mov    %esp,%ebp
  100cf7:	a1 08 22 10 00       	mov    0x102208,%eax
  100cfc:	8d 50 01             	lea    0x1(%eax),%edx
  100cff:	89 15 08 22 10 00    	mov    %edx,0x102208
  100d05:	8b 55 08             	mov    0x8(%ebp),%edx
  100d08:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100d0e:	5d                   	pop    %ebp
  100d0f:	c3                   	ret    

00100d10 <addDec2Buff>:
  100d10:	55                   	push   %ebp
  100d11:	89 e5                	mov    %esp,%ebp
  100d13:	56                   	push   %esi
  100d14:	53                   	push   %ebx
  100d15:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100d18:	85 db                	test   %ebx,%ebx
  100d1a:	0f 89 92 00 00 00    	jns    100db2 <addDec2Buff+0xa2>
  100d20:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  100d26:	74 58                	je     100d80 <addDec2Buff+0x70>
  100d28:	a1 08 22 10 00       	mov    0x102208,%eax
  100d2d:	c6 80 40 21 10 00 2d 	movb   $0x2d,0x102140(%eax)
  100d34:	40                   	inc    %eax
  100d35:	f7 db                	neg    %ebx
  100d37:	a3 08 22 10 00       	mov    %eax,0x102208
  100d3c:	83 ec 0c             	sub    $0xc,%esp
  100d3f:	b8 67 66 66 66       	mov    $0x66666667,%eax
  100d44:	f7 eb                	imul   %ebx
  100d46:	89 d6                	mov    %edx,%esi
  100d48:	c1 fe 02             	sar    $0x2,%esi
  100d4b:	89 d8                	mov    %ebx,%eax
  100d4d:	c1 f8 1f             	sar    $0x1f,%eax
  100d50:	29 c6                	sub    %eax,%esi
  100d52:	56                   	push   %esi
  100d53:	e8 b8 ff ff ff       	call   100d10 <addDec2Buff>
  100d58:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100d5e:	8d 42 01             	lea    0x1(%edx),%eax
  100d61:	a3 08 22 10 00       	mov    %eax,0x102208
  100d66:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  100d69:	01 c0                	add    %eax,%eax
  100d6b:	29 c3                	sub    %eax,%ebx
  100d6d:	83 c3 30             	add    $0x30,%ebx
  100d70:	88 9a 40 21 10 00    	mov    %bl,0x102140(%edx)
  100d76:	83 c4 10             	add    $0x10,%esp
  100d79:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100d7c:	5b                   	pop    %ebx
  100d7d:	5e                   	pop    %esi
  100d7e:	5d                   	pop    %ebp
  100d7f:	c3                   	ret    
  100d80:	8b 1d 08 22 10 00    	mov    0x102208,%ebx
  100d86:	8d 43 01             	lea    0x1(%ebx),%eax
  100d89:	b2 2d                	mov    $0x2d,%dl
  100d8b:	b9 a9 11 10 00       	mov    $0x1011a9,%ecx
  100d90:	29 d9                	sub    %ebx,%ecx
  100d92:	66 90                	xchg   %ax,%ax
  100d94:	89 c3                	mov    %eax,%ebx
  100d96:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100d9c:	40                   	inc    %eax
  100d9d:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  100da1:	84 d2                	test   %dl,%dl
  100da3:	75 ef                	jne    100d94 <addDec2Buff+0x84>
  100da5:	89 1d 08 22 10 00    	mov    %ebx,0x102208
  100dab:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100dae:	5b                   	pop    %ebx
  100daf:	5e                   	pop    %esi
  100db0:	5d                   	pop    %ebp
  100db1:	c3                   	ret    
  100db2:	74 c5                	je     100d79 <addDec2Buff+0x69>
  100db4:	eb 86                	jmp    100d3c <addDec2Buff+0x2c>
  100db6:	66 90                	xchg   %ax,%ax

00100db8 <addHex2Buff>:
  100db8:	55                   	push   %ebp
  100db9:	89 e5                	mov    %esp,%ebp
  100dbb:	8b 45 08             	mov    0x8(%ebp),%eax
  100dbe:	85 c0                	test   %eax,%eax
  100dc0:	75 02                	jne    100dc4 <addHex2Buff+0xc>
  100dc2:	5d                   	pop    %ebp
  100dc3:	c3                   	ret    
  100dc4:	5d                   	pop    %ebp
  100dc5:	eb 01                	jmp    100dc8 <addHex2Buff.part.1>
  100dc7:	90                   	nop

00100dc8 <addHex2Buff.part.1>:
  100dc8:	55                   	push   %ebp
  100dc9:	89 e5                	mov    %esp,%ebp
  100dcb:	53                   	push   %ebx
  100dcc:	83 ec 10             	sub    $0x10,%esp
  100dcf:	89 c3                	mov    %eax,%ebx
  100dd1:	89 c2                	mov    %eax,%edx
  100dd3:	c1 ea 04             	shr    $0x4,%edx
  100dd6:	52                   	push   %edx
  100dd7:	e8 dc ff ff ff       	call   100db8 <addHex2Buff>
  100ddc:	89 d8                	mov    %ebx,%eax
  100dde:	83 e0 0f             	and    $0xf,%eax
  100de1:	83 c4 10             	add    $0x10,%esp
  100de4:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100dea:	8d 4a 01             	lea    0x1(%edx),%ecx
  100ded:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100df3:	83 f8 09             	cmp    $0x9,%eax
  100df6:	76 10                	jbe    100e08 <addHex2Buff.part.1+0x40>
  100df8:	83 c0 57             	add    $0x57,%eax
  100dfb:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100e01:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e04:	c9                   	leave  
  100e05:	c3                   	ret    
  100e06:	66 90                	xchg   %ax,%ax
  100e08:	83 c0 30             	add    $0x30,%eax
  100e0b:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100e11:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e14:	c9                   	leave  
  100e15:	c3                   	ret    
  100e16:	66 90                	xchg   %ax,%ax

00100e18 <Log>:
  100e18:	55                   	push   %ebp
  100e19:	89 e5                	mov    %esp,%ebp
  100e1b:	57                   	push   %edi
  100e1c:	56                   	push   %esi
  100e1d:	53                   	push   %ebx
  100e1e:	83 ec 0c             	sub    $0xc,%esp
  100e21:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100e24:	8d 75 0c             	lea    0xc(%ebp),%esi
  100e27:	8a 03                	mov    (%ebx),%al
  100e29:	84 c0                	test   %al,%al
  100e2b:	74 21                	je     100e4e <Log+0x36>
  100e2d:	3c 25                	cmp    $0x25,%al
  100e2f:	74 5f                	je     100e90 <Log+0x78>
  100e31:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100e37:	8d 4a 01             	lea    0x1(%edx),%ecx
  100e3a:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100e40:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100e46:	8a 43 01             	mov    0x1(%ebx),%al
  100e49:	43                   	inc    %ebx
  100e4a:	84 c0                	test   %al,%al
  100e4c:	75 df                	jne    100e2d <Log+0x15>
  100e4e:	a1 08 22 10 00       	mov    0x102208,%eax
  100e53:	c6 80 40 21 10 00 00 	movb   $0x0,0x102140(%eax)
  100e5a:	85 c0                	test   %eax,%eax
  100e5c:	7e 1e                	jle    100e7c <Log+0x64>
  100e5e:	31 db                	xor    %ebx,%ebx
  100e60:	83 ec 0c             	sub    $0xc,%esp
  100e63:	0f be 83 40 21 10 00 	movsbl 0x102140(%ebx),%eax
  100e6a:	50                   	push   %eax
  100e6b:	e8 8c f8 ff ff       	call   1006fc <putChar>
  100e70:	43                   	inc    %ebx
  100e71:	83 c4 10             	add    $0x10,%esp
  100e74:	39 1d 08 22 10 00    	cmp    %ebx,0x102208
  100e7a:	7f e4                	jg     100e60 <Log+0x48>
  100e7c:	c7 05 08 22 10 00 00 	movl   $0x0,0x102208
  100e83:	00 00 00 
  100e86:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100e89:	5b                   	pop    %ebx
  100e8a:	5e                   	pop    %esi
  100e8b:	5f                   	pop    %edi
  100e8c:	5d                   	pop    %ebp
  100e8d:	c3                   	ret    
  100e8e:	66 90                	xchg   %ax,%ax
  100e90:	8a 43 01             	mov    0x1(%ebx),%al
  100e93:	3c 64                	cmp    $0x64,%al
  100e95:	74 5e                	je     100ef5 <Log+0xdd>
  100e97:	7f 33                	jg     100ecc <Log+0xb4>
  100e99:	3c 25                	cmp    $0x25,%al
  100e9b:	0f 84 b3 00 00 00    	je     100f54 <Log+0x13c>
  100ea1:	3c 63                	cmp    $0x63,%al
  100ea3:	75 4a                	jne    100eef <Log+0xd7>
  100ea5:	8b 16                	mov    (%esi),%edx
  100ea7:	a1 08 22 10 00       	mov    0x102208,%eax
  100eac:	8d 48 01             	lea    0x1(%eax),%ecx
  100eaf:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100eb5:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100ebb:	8a 43 02             	mov    0x2(%ebx),%al
  100ebe:	83 c6 04             	add    $0x4,%esi
  100ec1:	83 c3 02             	add    $0x2,%ebx
  100ec4:	e9 60 ff ff ff       	jmp    100e29 <Log+0x11>
  100ec9:	8d 76 00             	lea    0x0(%esi),%esi
  100ecc:	3c 73                	cmp    $0x73,%al
  100ece:	74 47                	je     100f17 <Log+0xff>
  100ed0:	3c 78                	cmp    $0x78,%al
  100ed2:	75 1b                	jne    100eef <Log+0xd7>
  100ed4:	89 f0                	mov    %esi,%eax
  100ed6:	83 c6 04             	add    $0x4,%esi
  100ed9:	8b 00                	mov    (%eax),%eax
  100edb:	85 c0                	test   %eax,%eax
  100edd:	74 21                	je     100f00 <Log+0xe8>
  100edf:	e8 e4 fe ff ff       	call   100dc8 <addHex2Buff.part.1>
  100ee4:	8a 43 02             	mov    0x2(%ebx),%al
  100ee7:	83 c3 02             	add    $0x2,%ebx
  100eea:	e9 3a ff ff ff       	jmp    100e29 <Log+0x11>
  100eef:	43                   	inc    %ebx
  100ef0:	e9 34 ff ff ff       	jmp    100e29 <Log+0x11>
  100ef5:	89 f0                	mov    %esi,%eax
  100ef7:	83 c6 04             	add    $0x4,%esi
  100efa:	8b 00                	mov    (%eax),%eax
  100efc:	85 c0                	test   %eax,%eax
  100efe:	75 6e                	jne    100f6e <Log+0x156>
  100f00:	a1 08 22 10 00       	mov    0x102208,%eax
  100f05:	8d 50 01             	lea    0x1(%eax),%edx
  100f08:	89 15 08 22 10 00    	mov    %edx,0x102208
  100f0e:	c6 80 40 21 10 00 30 	movb   $0x30,0x102140(%eax)
  100f15:	eb cd                	jmp    100ee4 <Log+0xcc>
  100f17:	8d 4e 04             	lea    0x4(%esi),%ecx
  100f1a:	8b 36                	mov    (%esi),%esi
  100f1c:	8a 16                	mov    (%esi),%dl
  100f1e:	84 d2                	test   %dl,%dl
  100f20:	74 25                	je     100f47 <Log+0x12f>
  100f22:	8b 3d 08 22 10 00    	mov    0x102208,%edi
  100f28:	8d 47 01             	lea    0x1(%edi),%eax
  100f2b:	29 fe                	sub    %edi,%esi
  100f2d:	8d 76 00             	lea    0x0(%esi),%esi
  100f30:	89 c7                	mov    %eax,%edi
  100f32:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100f38:	40                   	inc    %eax
  100f39:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  100f3d:	84 d2                	test   %dl,%dl
  100f3f:	75 ef                	jne    100f30 <Log+0x118>
  100f41:	89 3d 08 22 10 00    	mov    %edi,0x102208
  100f47:	8a 43 02             	mov    0x2(%ebx),%al
  100f4a:	89 ce                	mov    %ecx,%esi
  100f4c:	83 c3 02             	add    $0x2,%ebx
  100f4f:	e9 d5 fe ff ff       	jmp    100e29 <Log+0x11>
  100f54:	a1 08 22 10 00       	mov    0x102208,%eax
  100f59:	8d 50 01             	lea    0x1(%eax),%edx
  100f5c:	89 15 08 22 10 00    	mov    %edx,0x102208
  100f62:	c6 80 40 21 10 00 25 	movb   $0x25,0x102140(%eax)
  100f69:	e9 76 ff ff ff       	jmp    100ee4 <Log+0xcc>
  100f6e:	83 ec 0c             	sub    $0xc,%esp
  100f71:	50                   	push   %eax
  100f72:	e8 99 fd ff ff       	call   100d10 <addDec2Buff>
  100f77:	83 c4 10             	add    $0x10,%esp
  100f7a:	e9 65 ff ff ff       	jmp    100ee4 <Log+0xcc>
  100f7f:	90                   	nop

00100f80 <abort>:
  100f80:	55                   	push   %ebp
  100f81:	89 e5                	mov    %esp,%ebp
  100f83:	57                   	push   %edi
  100f84:	56                   	push   %esi
  100f85:	53                   	push   %ebx
  100f86:	83 ec 1c             	sub    $0x1c,%esp
  100f89:	8b 55 08             	mov    0x8(%ebp),%edx
  100f8c:	fa                   	cli    
  100f8d:	8a 02                	mov    (%edx),%al
  100f8f:	b9 32 20 10 00       	mov    $0x102032,%ecx
  100f94:	84 c0                	test   %al,%al
  100f96:	74 0b                	je     100fa3 <abort+0x23>
  100f98:	41                   	inc    %ecx
  100f99:	42                   	inc    %edx
  100f9a:	88 41 ff             	mov    %al,-0x1(%ecx)
  100f9d:	8a 02                	mov    (%edx),%al
  100f9f:	84 c0                	test   %al,%al
  100fa1:	75 f5                	jne    100f98 <abort+0x18>
  100fa3:	c6 01 3a             	movb   $0x3a,(%ecx)
  100fa6:	bb 29 22 10 00       	mov    $0x102229,%ebx
  100fab:	be 0a 00 00 00       	mov    $0xa,%esi
  100fb0:	bf 67 66 66 66       	mov    $0x66666667,%edi
  100fb5:	4b                   	dec    %ebx
  100fb6:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fb9:	99                   	cltd   
  100fba:	f7 fe                	idiv   %esi
  100fbc:	8d 42 30             	lea    0x30(%edx),%eax
  100fbf:	88 45 e7             	mov    %al,-0x19(%ebp)
  100fc2:	88 03                	mov    %al,(%ebx)
  100fc4:	89 f8                	mov    %edi,%eax
  100fc6:	f7 6d 0c             	imull  0xc(%ebp)
  100fc9:	c1 fa 02             	sar    $0x2,%edx
  100fcc:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fcf:	c1 f8 1f             	sar    $0x1f,%eax
  100fd2:	29 c2                	sub    %eax,%edx
  100fd4:	89 55 0c             	mov    %edx,0xc(%ebp)
  100fd7:	75 dc                	jne    100fb5 <abort+0x35>
  100fd9:	41                   	inc    %ecx
  100fda:	41                   	inc    %ecx
  100fdb:	43                   	inc    %ebx
  100fdc:	8a 45 e7             	mov    -0x19(%ebp),%al
  100fdf:	88 41 ff             	mov    %al,-0x1(%ecx)
  100fe2:	8a 03                	mov    (%ebx),%al
  100fe4:	88 45 e7             	mov    %al,-0x19(%ebp)
  100fe7:	84 c0                	test   %al,%al
  100fe9:	75 ef                	jne    100fda <abort+0x5a>
  100feb:	c6 01 0a             	movb   $0xa,(%ecx)
  100fee:	0f be 05 20 20 10 00 	movsbl 0x102020,%eax
  100ff5:	84 c0                	test   %al,%al
  100ff7:	74 1b                	je     101014 <abort+0x94>
  100ff9:	bb 20 20 10 00       	mov    $0x102020,%ebx
  100ffe:	83 ec 0c             	sub    $0xc,%esp
  101001:	50                   	push   %eax
  101002:	e8 f5 f6 ff ff       	call   1006fc <putChar>
  101007:	43                   	inc    %ebx
  101008:	0f be 03             	movsbl (%ebx),%eax
  10100b:	83 c4 10             	add    $0x10,%esp
  10100e:	84 c0                	test   %al,%al
  101010:	75 ec                	jne    100ffe <abort+0x7e>
  101012:	66 90                	xchg   %ax,%ax
  101014:	f4                   	hlt    
  101015:	eb fd                	jmp    101014 <abort+0x94>
  101017:	90                   	nop

00101018 <idle_fun>:
  101018:	55                   	push   %ebp
  101019:	89 e5                	mov    %esp,%ebp
  10101b:	90                   	nop
  10101c:	f4                   	hlt    
  10101d:	eb fd                	jmp    10101c <idle_fun+0x4>
  10101f:	90                   	nop

00101020 <kEntry>:
  101020:	55                   	push   %ebp
  101021:	89 e5                	mov    %esp,%ebp
  101023:	83 ec 08             	sub    $0x8,%esp
  101026:	e8 91 f6 ff ff       	call   1006bc <initSerial>
  10102b:	e8 28 f0 ff ff       	call   100058 <initTimer>
  101030:	e8 4f f3 ff ff       	call   100384 <initIdt>
  101035:	e8 c6 ef ff ff       	call   100000 <initIntr>
  10103a:	e8 d5 f9 ff ff       	call   100a14 <initSeg>
  10103f:	e8 d4 f6 ff ff       	call   100718 <initProcess>
  101044:	b8 88 3a 10 00       	mov    $0x103a88,%eax
  101049:	89 c4                	mov    %eax,%esp
  10104b:	fb                   	sti    
  10104c:	f4                   	hlt    
  10104d:	eb fd                	jmp    10104c <kEntry+0x2c>

0010104f <no0>:
  10104f:	6a 00                	push   $0x0
  101051:	6a 00                	push   $0x0
  101053:	eb 64                	jmp    1010b9 <asmDoIrq>

00101055 <no1>:
  101055:	6a 00                	push   $0x0
  101057:	6a 01                	push   $0x1
  101059:	eb 5e                	jmp    1010b9 <asmDoIrq>

0010105b <no2>:
  10105b:	6a 00                	push   $0x0
  10105d:	6a 02                	push   $0x2
  10105f:	eb 58                	jmp    1010b9 <asmDoIrq>

00101061 <no3>:
  101061:	6a 00                	push   $0x0
  101063:	6a 03                	push   $0x3
  101065:	eb 52                	jmp    1010b9 <asmDoIrq>

00101067 <no4>:
  101067:	6a 00                	push   $0x0
  101069:	6a 04                	push   $0x4
  10106b:	eb 4c                	jmp    1010b9 <asmDoIrq>

0010106d <no5>:
  10106d:	6a 00                	push   $0x0
  10106f:	6a 05                	push   $0x5
  101071:	eb 46                	jmp    1010b9 <asmDoIrq>

00101073 <no6>:
  101073:	6a 00                	push   $0x0
  101075:	6a 06                	push   $0x6
  101077:	eb 40                	jmp    1010b9 <asmDoIrq>

00101079 <no7>:
  101079:	6a 00                	push   $0x0
  10107b:	6a 07                	push   $0x7
  10107d:	eb 3a                	jmp    1010b9 <asmDoIrq>

0010107f <no8>:
  10107f:	6a 08                	push   $0x8
  101081:	eb 36                	jmp    1010b9 <asmDoIrq>

00101083 <no9>:
  101083:	6a 00                	push   $0x0
  101085:	6a 09                	push   $0x9
  101087:	eb 30                	jmp    1010b9 <asmDoIrq>

00101089 <no10>:
  101089:	6a 0a                	push   $0xa
  10108b:	eb 2c                	jmp    1010b9 <asmDoIrq>

0010108d <no11>:
  10108d:	6a 0b                	push   $0xb
  10108f:	eb 28                	jmp    1010b9 <asmDoIrq>

00101091 <no12>:
  101091:	6a 0c                	push   $0xc
  101093:	eb 24                	jmp    1010b9 <asmDoIrq>

00101095 <no13>:
  101095:	6a 0d                	push   $0xd
  101097:	eb 20                	jmp    1010b9 <asmDoIrq>

00101099 <no14>:
  101099:	6a 0e                	push   $0xe
  10109b:	eb 1c                	jmp    1010b9 <asmDoIrq>

0010109d <intr0>:
  10109d:	6a 00                	push   $0x0
  10109f:	68 e8 03 00 00       	push   $0x3e8
  1010a4:	eb 13                	jmp    1010b9 <asmDoIrq>

001010a6 <irqEmpty>:
  1010a6:	6a 00                	push   $0x0
  1010a8:	6a ff                	push   $0xffffffff
  1010aa:	eb 0d                	jmp    1010b9 <asmDoIrq>

001010ac <irqGProtectFault>:
  1010ac:	6a 0d                	push   $0xd
  1010ae:	eb 09                	jmp    1010b9 <asmDoIrq>

001010b0 <irqSyscall>:
  1010b0:	6a 00                	push   $0x0
  1010b2:	68 80 00 00 00       	push   $0x80
  1010b7:	eb 00                	jmp    1010b9 <asmDoIrq>

001010b9 <asmDoIrq>:
  1010b9:	fa                   	cli    
  1010ba:	1e                   	push   %ds
  1010bb:	06                   	push   %es
  1010bc:	0f a0                	push   %fs
  1010be:	0f a8                	push   %gs
  1010c0:	60                   	pusha  
  1010c1:	54                   	push   %esp
  1010c2:	e8 fd f1 ff ff       	call   1002c4 <irqHandle>
  1010c7:	a1 2c 22 10 00       	mov    0x10222c,%eax
  1010cc:	85 c0                	test   %eax,%eax
  1010ce:	74 02                	je     1010d2 <switch>
  1010d0:	89 c4                	mov    %eax,%esp

001010d2 <switch>:
  1010d2:	83 c4 04             	add    $0x4,%esp
  1010d5:	61                   	popa   
  1010d6:	0f a9                	pop    %gs
  1010d8:	0f a1                	pop    %fs
  1010da:	07                   	pop    %es
  1010db:	1f                   	pop    %ds
  1010dc:	83 c4 04             	add    $0x4,%esp
  1010df:	83 c4 04             	add    $0x4,%esp
  1010e2:	fb                   	sti    
  1010e3:	cf                   	iret   
