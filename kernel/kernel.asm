
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
  100109:	68 90 11 10 00       	push   $0x101190
  10010e:	e8 19 0f 00 00       	call   10102c <abort>
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
  10018d:	e9 0e 07 00 00       	jmp    1008a0 <schedule>
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
  1001f0:	68 90 11 10 00       	push   $0x101190
  1001f5:	e8 32 0e 00 00       	call   10102c <abort>
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
  10029d:	68 90 11 10 00       	push   $0x101190
  1002a2:	e8 85 0d 00 00       	call   10102c <abort>
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
  100325:	68 a3 11 10 00       	push   $0x1011a3
  10032a:	e8 95 0b 00 00       	call   100ec4 <Log>
  10032f:	58                   	pop    %eax
  100330:	5a                   	pop    %edx
  100331:	6a 73                	push   $0x73
  100333:	68 90 11 10 00       	push   $0x101190
  100338:	e8 ef 0c 00 00       	call   10102c <abort>
  10033d:	83 c4 10             	add    $0x10,%esp
  100340:	c9                   	leave  
  100341:	c3                   	ret    
  100342:	66 90                	xchg   %ax,%ax
  100344:	83 ec 08             	sub    $0x8,%esp
  100347:	68 a2 00 00 00       	push   $0xa2
  10034c:	68 90 11 10 00       	push   $0x101190
  100351:	e8 d6 0c 00 00       	call   10102c <abort>
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
  100373:	68 90 11 10 00       	push   $0x101190
  100378:	e8 af 0c 00 00       	call   10102c <abort>
  10037d:	83 c4 10             	add    $0x10,%esp
  100380:	c9                   	leave  
  100381:	c3                   	ret    
  100382:	66 90                	xchg   %ax,%ax

00100384 <initIdt>:
  100384:	55                   	push   %ebp
  100385:	89 e5                	mov    %esp,%ebp
  100387:	53                   	push   %ebx
  100388:	ba 52 11 10 00       	mov    $0x101152,%edx
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
  1003b8:	b8 fb 10 10 00       	mov    $0x1010fb,%eax
  1003bd:	66 a3 40 22 10 00    	mov    %ax,0x102240
  1003c3:	66 c7 05 42 22 10 00 	movw   $0x8,0x102242
  1003ca:	08 00 
  1003cc:	c6 05 44 22 10 00 00 	movb   $0x0,0x102244
  1003d3:	c6 05 45 22 10 00 8f 	movb   $0x8f,0x102245
  1003da:	c1 e8 10             	shr    $0x10,%eax
  1003dd:	66 a3 46 22 10 00    	mov    %ax,0x102246
  1003e3:	b8 01 11 10 00       	mov    $0x101101,%eax
  1003e8:	66 a3 48 22 10 00    	mov    %ax,0x102248
  1003ee:	66 c7 05 4a 22 10 00 	movw   $0x8,0x10224a
  1003f5:	08 00 
  1003f7:	c6 05 4c 22 10 00 00 	movb   $0x0,0x10224c
  1003fe:	c6 05 4d 22 10 00 8f 	movb   $0x8f,0x10224d
  100405:	c1 e8 10             	shr    $0x10,%eax
  100408:	66 a3 4e 22 10 00    	mov    %ax,0x10224e
  10040e:	b8 07 11 10 00       	mov    $0x101107,%eax
  100413:	66 a3 50 22 10 00    	mov    %ax,0x102250
  100419:	66 c7 05 52 22 10 00 	movw   $0x8,0x102252
  100420:	08 00 
  100422:	c6 05 54 22 10 00 00 	movb   $0x0,0x102254
  100429:	c6 05 55 22 10 00 8f 	movb   $0x8f,0x102255
  100430:	c1 e8 10             	shr    $0x10,%eax
  100433:	66 a3 56 22 10 00    	mov    %ax,0x102256
  100439:	b8 0d 11 10 00       	mov    $0x10110d,%eax
  10043e:	66 a3 58 22 10 00    	mov    %ax,0x102258
  100444:	66 c7 05 5a 22 10 00 	movw   $0x8,0x10225a
  10044b:	08 00 
  10044d:	c6 05 5c 22 10 00 00 	movb   $0x0,0x10225c
  100454:	c6 05 5d 22 10 00 8f 	movb   $0x8f,0x10225d
  10045b:	c1 e8 10             	shr    $0x10,%eax
  10045e:	66 a3 5e 22 10 00    	mov    %ax,0x10225e
  100464:	b8 13 11 10 00       	mov    $0x101113,%eax
  100469:	66 a3 60 22 10 00    	mov    %ax,0x102260
  10046f:	66 c7 05 62 22 10 00 	movw   $0x8,0x102262
  100476:	08 00 
  100478:	c6 05 64 22 10 00 00 	movb   $0x0,0x102264
  10047f:	c6 05 65 22 10 00 8f 	movb   $0x8f,0x102265
  100486:	c1 e8 10             	shr    $0x10,%eax
  100489:	66 a3 66 22 10 00    	mov    %ax,0x102266
  10048f:	b8 19 11 10 00       	mov    $0x101119,%eax
  100494:	66 a3 68 22 10 00    	mov    %ax,0x102268
  10049a:	66 c7 05 6a 22 10 00 	movw   $0x8,0x10226a
  1004a1:	08 00 
  1004a3:	c6 05 6c 22 10 00 00 	movb   $0x0,0x10226c
  1004aa:	c6 05 6d 22 10 00 8f 	movb   $0x8f,0x10226d
  1004b1:	c1 e8 10             	shr    $0x10,%eax
  1004b4:	66 a3 6e 22 10 00    	mov    %ax,0x10226e
  1004ba:	b8 1f 11 10 00       	mov    $0x10111f,%eax
  1004bf:	66 a3 70 22 10 00    	mov    %ax,0x102270
  1004c5:	66 c7 05 72 22 10 00 	movw   $0x8,0x102272
  1004cc:	08 00 
  1004ce:	c6 05 74 22 10 00 00 	movb   $0x0,0x102274
  1004d5:	c6 05 75 22 10 00 8f 	movb   $0x8f,0x102275
  1004dc:	c1 e8 10             	shr    $0x10,%eax
  1004df:	66 a3 76 22 10 00    	mov    %ax,0x102276
  1004e5:	b8 25 11 10 00       	mov    $0x101125,%eax
  1004ea:	66 a3 78 22 10 00    	mov    %ax,0x102278
  1004f0:	66 c7 05 7a 22 10 00 	movw   $0x8,0x10227a
  1004f7:	08 00 
  1004f9:	c6 05 7c 22 10 00 00 	movb   $0x0,0x10227c
  100500:	c6 05 7d 22 10 00 8f 	movb   $0x8f,0x10227d
  100507:	c1 e8 10             	shr    $0x10,%eax
  10050a:	66 a3 7e 22 10 00    	mov    %ax,0x10227e
  100510:	b8 2b 11 10 00       	mov    $0x10112b,%eax
  100515:	66 a3 80 22 10 00    	mov    %ax,0x102280
  10051b:	66 c7 05 82 22 10 00 	movw   $0x8,0x102282
  100522:	08 00 
  100524:	c6 05 84 22 10 00 00 	movb   $0x0,0x102284
  10052b:	c6 05 85 22 10 00 8f 	movb   $0x8f,0x102285
  100532:	c1 e8 10             	shr    $0x10,%eax
  100535:	66 a3 86 22 10 00    	mov    %ax,0x102286
  10053b:	b8 2f 11 10 00       	mov    $0x10112f,%eax
  100540:	66 a3 88 22 10 00    	mov    %ax,0x102288
  100546:	66 c7 05 8a 22 10 00 	movw   $0x8,0x10228a
  10054d:	08 00 
  10054f:	c6 05 8c 22 10 00 00 	movb   $0x0,0x10228c
  100556:	c6 05 8d 22 10 00 8f 	movb   $0x8f,0x10228d
  10055d:	c1 e8 10             	shr    $0x10,%eax
  100560:	66 a3 8e 22 10 00    	mov    %ax,0x10228e
  100566:	b8 35 11 10 00       	mov    $0x101135,%eax
  10056b:	66 a3 90 22 10 00    	mov    %ax,0x102290
  100571:	66 c7 05 92 22 10 00 	movw   $0x8,0x102292
  100578:	08 00 
  10057a:	c6 05 94 22 10 00 00 	movb   $0x0,0x102294
  100581:	c6 05 95 22 10 00 8f 	movb   $0x8f,0x102295
  100588:	c1 e8 10             	shr    $0x10,%eax
  10058b:	66 a3 96 22 10 00    	mov    %ax,0x102296
  100591:	b8 39 11 10 00       	mov    $0x101139,%eax
  100596:	66 a3 98 22 10 00    	mov    %ax,0x102298
  10059c:	66 c7 05 9a 22 10 00 	movw   $0x8,0x10229a
  1005a3:	08 00 
  1005a5:	c6 05 9c 22 10 00 00 	movb   $0x0,0x10229c
  1005ac:	c6 05 9d 22 10 00 8f 	movb   $0x8f,0x10229d
  1005b3:	c1 e8 10             	shr    $0x10,%eax
  1005b6:	66 a3 9e 22 10 00    	mov    %ax,0x10229e
  1005bc:	b8 3d 11 10 00       	mov    $0x10113d,%eax
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
  1005fe:	b8 45 11 10 00       	mov    $0x101145,%eax
  100603:	66 a3 b0 22 10 00    	mov    %ax,0x1022b0
  100609:	66 c7 05 b2 22 10 00 	movw   $0x8,0x1022b2
  100610:	08 00 
  100612:	c6 05 b4 22 10 00 00 	movb   $0x0,0x1022b4
  100619:	c6 05 b5 22 10 00 8f 	movb   $0x8f,0x1022b5
  100620:	c1 e8 10             	shr    $0x10,%eax
  100623:	66 a3 b6 22 10 00    	mov    %ax,0x1022b6
  100629:	b8 58 11 10 00       	mov    $0x101158,%eax
  10062e:	66 a3 a8 22 10 00    	mov    %ax,0x1022a8
  100634:	c1 e8 10             	shr    $0x10,%eax
  100637:	66 a3 ae 22 10 00    	mov    %ax,0x1022ae
  10063d:	b8 5c 11 10 00       	mov    $0x10115c,%eax
  100642:	66 a3 40 26 10 00    	mov    %ax,0x102640
  100648:	66 c7 05 42 26 10 00 	movw   $0x8,0x102642
  10064f:	08 00 
  100651:	c6 05 44 26 10 00 00 	movb   $0x0,0x102644
  100658:	c6 05 45 26 10 00 ef 	movb   $0xef,0x102645
  10065f:	c1 e8 10             	shr    $0x10,%eax
  100662:	66 a3 46 26 10 00    	mov    %ax,0x102646
  100668:	b8 49 11 10 00       	mov    $0x101149,%eax
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
  100841:	e8 be 03 00 00       	call   100c04 <readseg>
  100846:	5a                   	pop    %edx
  100847:	59                   	pop    %ecx
  100848:	68 00 00 30 00       	push   $0x300000
  10084d:	68 00 80 00 00       	push   $0x8000
  100852:	e8 09 04 00 00       	call   100c60 <loader>
  100857:	a3 fc 4a 10 00       	mov    %eax,0x104afc
  10085c:	c7 05 10 4b 10 00 02 	movl   $0x2,0x104b10
  100863:	00 00 00 
  100866:	5b                   	pop    %ebx
  100867:	5e                   	pop    %esi
  100868:	ff 35 00 4b 10 00    	pushl  0x104b00
  10086e:	68 ad 11 10 00       	push   $0x1011ad
  100873:	e8 4c 06 00 00       	call   100ec4 <Log>
  100878:	5f                   	pop    %edi
  100879:	58                   	pop    %eax
  10087a:	ff 35 fc 4a 10 00    	pushl  0x104afc
  100880:	68 b4 11 10 00       	push   $0x1011b4
  100885:	e8 3a 06 00 00       	call   100ec4 <Log>
  10088a:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  100891:	2a 10 00 
  100894:	83 c4 10             	add    $0x10,%esp
  100897:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10089a:	5b                   	pop    %ebx
  10089b:	5e                   	pop    %esi
  10089c:	5f                   	pop    %edi
  10089d:	5d                   	pop    %ebp
  10089e:	c3                   	ret    
  10089f:	90                   	nop

001008a0 <schedule>:
  1008a0:	55                   	push   %ebp
  1008a1:	89 e5                	mov    %esp,%ebp
  1008a3:	53                   	push   %ebx
  1008a4:	51                   	push   %ecx
  1008a5:	83 3d 10 4b 10 00 02 	cmpl   $0x2,0x104b10
  1008ac:	74 26                	je     1008d4 <schedule+0x34>
  1008ae:	83 3d 80 5b 10 00 02 	cmpl   $0x2,0x105b80
  1008b5:	0f 84 3d 01 00 00    	je     1009f8 <schedule+0x158>
  1008bb:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  1008c2:	2a 10 00 
  1008c5:	c7 05 94 3a 10 00 0a 	movl   $0xa,0x103a94
  1008cc:	00 00 00 
  1008cf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1008d2:	c9                   	leave  
  1008d3:	c3                   	ret    
  1008d4:	b9 c0 3a 10 00       	mov    $0x103ac0,%ecx
  1008d9:	89 0d b0 3a 10 00    	mov    %ecx,0x103ab0
  1008df:	c7 81 54 10 00 00 0a 	movl   $0xa,0x1054(%ecx)
  1008e6:	00 00 00 
  1008e9:	c7 81 50 10 00 00 00 	movl   $0x0,0x1050(%ecx)
  1008f0:	00 00 00 
  1008f3:	8d 81 50 10 00 00    	lea    0x1050(%ecx),%eax
  1008f9:	a3 e4 5b 10 00       	mov    %eax,0x105be4
  1008fe:	bb a0 5b 10 00       	mov    $0x105ba0,%ebx
  100903:	8b 81 60 10 00 00    	mov    0x1060(%ecx),%eax
  100909:	8b 91 64 10 00 00    	mov    0x1064(%ecx),%edx
  10090f:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100914:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  10091a:	8b 81 68 10 00 00    	mov    0x1068(%ecx),%eax
  100920:	8b 91 6c 10 00 00    	mov    0x106c(%ecx),%edx
  100926:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  10092b:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100931:	66 c7 05 2c 21 10 00 	movw   $0x37,0x10212c
  100938:	37 00 
  10093a:	66 89 1d 2e 21 10 00 	mov    %bx,0x10212e
  100941:	c1 eb 10             	shr    $0x10,%ebx
  100944:	66 89 1d 30 21 10 00 	mov    %bx,0x102130
  10094b:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  100950:	0f 01 10             	lgdtl  (%eax)
  100953:	83 ec 08             	sub    $0x8,%esp
  100956:	ff 35 00 4b 10 00    	pushl  0x104b00
  10095c:	68 ad 11 10 00       	push   $0x1011ad
  100961:	e8 5e 05 00 00       	call   100ec4 <Log>
  100966:	58                   	pop    %eax
  100967:	5a                   	pop    %edx
  100968:	ff 35 fc 4a 10 00    	pushl  0x104afc
  10096e:	68 b4 11 10 00       	push   $0x1011b4
  100973:	e8 4c 05 00 00       	call   100ec4 <Log>
  100978:	59                   	pop    %ecx
  100979:	5b                   	pop    %ebx
  10097a:	0f b7 05 ba 5b 10 00 	movzwl 0x105bba,%eax
  100981:	50                   	push   %eax
  100982:	68 bc 11 10 00       	push   $0x1011bc
  100987:	e8 38 05 00 00       	call   100ec4 <Log>
  10098c:	58                   	pop    %eax
  10098d:	5a                   	pop    %edx
  10098e:	0f b6 05 bc 5b 10 00 	movzbl 0x105bbc,%eax
  100995:	50                   	push   %eax
  100996:	68 d0 11 10 00       	push   $0x1011d0
  10099b:	e8 24 05 00 00       	call   100ec4 <Log>
  1009a0:	59                   	pop    %ecx
  1009a1:	5b                   	pop    %ebx
  1009a2:	0f b6 05 bf 5b 10 00 	movzbl 0x105bbf,%eax
  1009a9:	50                   	push   %eax
  1009aa:	68 e5 11 10 00       	push   $0x1011e5
  1009af:	e8 10 05 00 00       	call   100ec4 <Log>
  1009b4:	58                   	pop    %eax
  1009b5:	5a                   	pop    %edx
  1009b6:	0f b7 05 c2 5b 10 00 	movzwl 0x105bc2,%eax
  1009bd:	50                   	push   %eax
  1009be:	68 fa 11 10 00       	push   $0x1011fa
  1009c3:	e8 fc 04 00 00       	call   100ec4 <Log>
  1009c8:	59                   	pop    %ecx
  1009c9:	5b                   	pop    %ebx
  1009ca:	0f b6 05 c4 5b 10 00 	movzbl 0x105bc4,%eax
  1009d1:	50                   	push   %eax
  1009d2:	68 0e 12 10 00       	push   $0x10120e
  1009d7:	e8 e8 04 00 00       	call   100ec4 <Log>
  1009dc:	58                   	pop    %eax
  1009dd:	5a                   	pop    %edx
  1009de:	0f b6 05 c7 5b 10 00 	movzbl 0x105bc7,%eax
  1009e5:	50                   	push   %eax
  1009e6:	68 23 12 10 00       	push   $0x101223
  1009eb:	e8 d4 04 00 00       	call   100ec4 <Log>
  1009f0:	83 c4 10             	add    $0x10,%esp
  1009f3:	e9 d7 fe ff ff       	jmp    1008cf <schedule+0x2f>
  1009f8:	b9 30 4b 10 00       	mov    $0x104b30,%ecx
  1009fd:	e9 d7 fe ff ff       	jmp    1008d9 <schedule+0x39>
  100a02:	66 90                	xchg   %ax,%ax

00100a04 <waitDisk>:
  100a04:	55                   	push   %ebp
  100a05:	89 e5                	mov    %esp,%ebp
  100a07:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100a0c:	ec                   	in     (%dx),%al
  100a0d:	83 e0 c0             	and    $0xffffffc0,%eax
  100a10:	3c 40                	cmp    $0x40,%al
  100a12:	75 f8                	jne    100a0c <waitDisk+0x8>
  100a14:	5d                   	pop    %ebp
  100a15:	c3                   	ret    
  100a16:	66 90                	xchg   %ax,%ax

00100a18 <readSect>:
  100a18:	55                   	push   %ebp
  100a19:	89 e5                	mov    %esp,%ebp
  100a1b:	53                   	push   %ebx
  100a1c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  100a1f:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100a24:	ec                   	in     (%dx),%al
  100a25:	83 e0 c0             	and    $0xffffffc0,%eax
  100a28:	3c 40                	cmp    $0x40,%al
  100a2a:	75 f8                	jne    100a24 <readSect+0xc>
  100a2c:	ba f2 01 00 00       	mov    $0x1f2,%edx
  100a31:	b0 01                	mov    $0x1,%al
  100a33:	ee                   	out    %al,(%dx)
  100a34:	ba f3 01 00 00       	mov    $0x1f3,%edx
  100a39:	88 c8                	mov    %cl,%al
  100a3b:	ee                   	out    %al,(%dx)
  100a3c:	89 c8                	mov    %ecx,%eax
  100a3e:	c1 f8 08             	sar    $0x8,%eax
  100a41:	ba f4 01 00 00       	mov    $0x1f4,%edx
  100a46:	ee                   	out    %al,(%dx)
  100a47:	89 c8                	mov    %ecx,%eax
  100a49:	c1 f8 10             	sar    $0x10,%eax
  100a4c:	ba f5 01 00 00       	mov    $0x1f5,%edx
  100a51:	ee                   	out    %al,(%dx)
  100a52:	89 c8                	mov    %ecx,%eax
  100a54:	c1 f8 18             	sar    $0x18,%eax
  100a57:	83 c8 e0             	or     $0xffffffe0,%eax
  100a5a:	ba f6 01 00 00       	mov    $0x1f6,%edx
  100a5f:	ee                   	out    %al,(%dx)
  100a60:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100a65:	b0 20                	mov    $0x20,%al
  100a67:	ee                   	out    %al,(%dx)
  100a68:	ec                   	in     (%dx),%al
  100a69:	83 e0 c0             	and    $0xffffffc0,%eax
  100a6c:	3c 40                	cmp    $0x40,%al
  100a6e:	75 f8                	jne    100a68 <readSect+0x50>
  100a70:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100a73:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  100a79:	ba f0 01 00 00       	mov    $0x1f0,%edx
  100a7e:	66 90                	xchg   %ax,%ax
  100a80:	ed                   	in     (%dx),%eax
  100a81:	89 01                	mov    %eax,(%ecx)
  100a83:	83 c1 04             	add    $0x4,%ecx
  100a86:	39 d9                	cmp    %ebx,%ecx
  100a88:	75 f6                	jne    100a80 <readSect+0x68>
  100a8a:	5b                   	pop    %ebx
  100a8b:	5d                   	pop    %ebp
  100a8c:	c3                   	ret    
  100a8d:	8d 76 00             	lea    0x0(%esi),%esi

00100a90 <initSeg>:
  100a90:	55                   	push   %ebp
  100a91:	89 e5                	mov    %esp,%ebp
  100a93:	ba a0 5b 10 00       	mov    $0x105ba0,%edx
  100a98:	66 c7 05 a8 5b 10 00 	movw   $0xffff,0x105ba8
  100a9f:	ff ff 
  100aa1:	66 c7 05 aa 5b 10 00 	movw   $0x0,0x105baa
  100aa8:	00 00 
  100aaa:	c6 05 ac 5b 10 00 00 	movb   $0x0,0x105bac
  100ab1:	c6 05 ad 5b 10 00 9a 	movb   $0x9a,0x105bad
  100ab8:	c6 05 ae 5b 10 00 cf 	movb   $0xcf,0x105bae
  100abf:	c6 05 af 5b 10 00 00 	movb   $0x0,0x105baf
  100ac6:	66 c7 05 b0 5b 10 00 	movw   $0xffff,0x105bb0
  100acd:	ff ff 
  100acf:	66 c7 05 b2 5b 10 00 	movw   $0x0,0x105bb2
  100ad6:	00 00 
  100ad8:	c6 05 b4 5b 10 00 00 	movb   $0x0,0x105bb4
  100adf:	c6 05 b5 5b 10 00 92 	movb   $0x92,0x105bb5
  100ae6:	c6 05 b6 5b 10 00 cf 	movb   $0xcf,0x105bb6
  100aed:	c6 05 b7 5b 10 00 00 	movb   $0x0,0x105bb7
  100af4:	66 c7 05 b8 5b 10 00 	movw   $0xffff,0x105bb8
  100afb:	ff ff 
  100afd:	66 c7 05 ba 5b 10 00 	movw   $0x0,0x105bba
  100b04:	00 00 
  100b06:	c6 05 bc 5b 10 00 00 	movb   $0x0,0x105bbc
  100b0d:	c6 05 bd 5b 10 00 fa 	movb   $0xfa,0x105bbd
  100b14:	c6 05 be 5b 10 00 cf 	movb   $0xcf,0x105bbe
  100b1b:	c6 05 bf 5b 10 00 00 	movb   $0x0,0x105bbf
  100b22:	66 c7 05 c0 5b 10 00 	movw   $0xffff,0x105bc0
  100b29:	ff ff 
  100b2b:	66 c7 05 c2 5b 10 00 	movw   $0x0,0x105bc2
  100b32:	00 00 
  100b34:	c6 05 c4 5b 10 00 00 	movb   $0x0,0x105bc4
  100b3b:	c6 05 c5 5b 10 00 f2 	movb   $0xf2,0x105bc5
  100b42:	c6 05 c6 5b 10 00 cf 	movb   $0xcf,0x105bc6
  100b49:	c6 05 c7 5b 10 00 00 	movb   $0x0,0x105bc7
  100b50:	66 c7 05 c8 5b 10 00 	movw   $0x63,0x105bc8
  100b57:	63 00 
  100b59:	b8 e0 5b 10 00       	mov    $0x105be0,%eax
  100b5e:	66 a3 ca 5b 10 00    	mov    %ax,0x105bca
  100b64:	89 c1                	mov    %eax,%ecx
  100b66:	c1 e9 10             	shr    $0x10,%ecx
  100b69:	88 0d cc 5b 10 00    	mov    %cl,0x105bcc
  100b6f:	c6 05 cd 5b 10 00 89 	movb   $0x89,0x105bcd
  100b76:	c6 05 ce 5b 10 00 40 	movb   $0x40,0x105bce
  100b7d:	c1 e8 18             	shr    $0x18,%eax
  100b80:	a2 cf 5b 10 00       	mov    %al,0x105bcf
  100b85:	66 c7 05 34 21 10 00 	movw   $0x37,0x102134
  100b8c:	37 00 
  100b8e:	66 89 15 36 21 10 00 	mov    %dx,0x102136
  100b95:	c1 ea 10             	shr    $0x10,%edx
  100b98:	66 89 15 38 21 10 00 	mov    %dx,0x102138
  100b9f:	b8 34 21 10 00       	mov    $0x102134,%eax
  100ba4:	0f 01 10             	lgdtl  (%eax)
  100ba7:	b8 28 00 00 00       	mov    $0x28,%eax
  100bac:	0f 00 d8             	ltr    %ax
  100baf:	c7 05 e8 5b 10 00 10 	movl   $0x10,0x105be8
  100bb6:	00 00 00 
  100bb9:	c7 05 e4 5b 10 00 90 	movl   $0x103a90,0x105be4
  100bc0:	3a 10 00 
  100bc3:	b8 10 00 00 00       	mov    $0x10,%eax
  100bc8:	8e c0                	mov    %eax,%es
  100bca:	8e d8                	mov    %eax,%ds
  100bcc:	8e e8                	mov    %eax,%gs
  100bce:	8e e0                	mov    %eax,%fs
  100bd0:	8e d0                	mov    %eax,%ss
  100bd2:	31 c0                	xor    %eax,%eax
  100bd4:	0f 00 d0             	lldt   %ax
  100bd7:	5d                   	pop    %ebp
  100bd8:	c3                   	ret    
  100bd9:	8d 76 00             	lea    0x0(%esi),%esi

00100bdc <enterUserSpace>:
  100bdc:	55                   	push   %ebp
  100bdd:	89 e5                	mov    %esp,%ebp
  100bdf:	b8 23 00 00 00       	mov    $0x23,%eax
  100be4:	fa                   	cli    
  100be5:	8e c0                	mov    %eax,%es
  100be7:	8e e0                	mov    %eax,%fs
  100be9:	8e d8                	mov    %eax,%ds
  100beb:	8e e8                	mov    %eax,%gs
  100bed:	66 6a 23             	pushw  $0x23
  100bf0:	68 00 00 40 00       	push   $0x400000
  100bf5:	68 02 02 00 00       	push   $0x202
  100bfa:	6a 1b                	push   $0x1b
  100bfc:	ff 75 08             	pushl  0x8(%ebp)
  100bff:	fb                   	sti    
  100c00:	cf                   	iret   
  100c01:	5d                   	pop    %ebp
  100c02:	c3                   	ret    
  100c03:	90                   	nop

00100c04 <readseg>:
  100c04:	55                   	push   %ebp
  100c05:	89 e5                	mov    %esp,%ebp
  100c07:	57                   	push   %edi
  100c08:	56                   	push   %esi
  100c09:	53                   	push   %ebx
  100c0a:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100c0d:	8b 7d 10             	mov    0x10(%ebp),%edi
  100c10:	8b 75 0c             	mov    0xc(%ebp),%esi
  100c13:	01 de                	add    %ebx,%esi
  100c15:	89 f8                	mov    %edi,%eax
  100c17:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100c1c:	78 2a                	js     100c48 <readseg+0x44>
  100c1e:	29 c3                	sub    %eax,%ebx
  100c20:	85 ff                	test   %edi,%edi
  100c22:	78 31                	js     100c55 <readseg+0x51>
  100c24:	c1 ff 09             	sar    $0x9,%edi
  100c27:	39 de                	cmp    %ebx,%esi
  100c29:	76 15                	jbe    100c40 <readseg+0x3c>
  100c2b:	90                   	nop
  100c2c:	57                   	push   %edi
  100c2d:	53                   	push   %ebx
  100c2e:	e8 e5 fd ff ff       	call   100a18 <readSect>
  100c33:	81 c3 00 02 00 00    	add    $0x200,%ebx
  100c39:	47                   	inc    %edi
  100c3a:	58                   	pop    %eax
  100c3b:	5a                   	pop    %edx
  100c3c:	39 de                	cmp    %ebx,%esi
  100c3e:	77 ec                	ja     100c2c <readseg+0x28>
  100c40:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100c43:	5b                   	pop    %ebx
  100c44:	5e                   	pop    %esi
  100c45:	5f                   	pop    %edi
  100c46:	5d                   	pop    %ebp
  100c47:	c3                   	ret    
  100c48:	48                   	dec    %eax
  100c49:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100c4e:	40                   	inc    %eax
  100c4f:	29 c3                	sub    %eax,%ebx
  100c51:	85 ff                	test   %edi,%edi
  100c53:	79 cf                	jns    100c24 <readseg+0x20>
  100c55:	81 c7 ff 01 00 00    	add    $0x1ff,%edi
  100c5b:	eb c7                	jmp    100c24 <readseg+0x20>
  100c5d:	8d 76 00             	lea    0x0(%esi),%esi

00100c60 <loader>:
  100c60:	55                   	push   %ebp
  100c61:	89 e5                	mov    %esp,%ebp
  100c63:	57                   	push   %edi
  100c64:	56                   	push   %esi
  100c65:	53                   	push   %ebx
  100c66:	83 ec 2c             	sub    $0x2c,%esp
  100c69:	8b 55 08             	mov    0x8(%ebp),%edx
  100c6c:	8b 42 2c             	mov    0x2c(%edx),%eax
  100c6f:	66 83 f8 ff          	cmp    $0xffff,%ax
  100c73:	0f 84 8b 00 00 00    	je     100d04 <loader+0xa4>
  100c79:	0f b7 c8             	movzwl %ax,%ecx
  100c7c:	85 c9                	test   %ecx,%ecx
  100c7e:	74 72                	je     100cf2 <loader+0x92>
  100c80:	31 ff                	xor    %edi,%edi
  100c82:	89 d6                	mov    %edx,%esi
  100c84:	eb 07                	jmp    100c8d <loader+0x2d>
  100c86:	66 90                	xchg   %ax,%ax
  100c88:	47                   	inc    %edi
  100c89:	39 cf                	cmp    %ecx,%edi
  100c8b:	7d 63                	jge    100cf0 <loader+0x90>
  100c8d:	0f b7 46 2a          	movzwl 0x2a(%esi),%eax
  100c91:	0f af c7             	imul   %edi,%eax
  100c94:	03 46 1c             	add    0x1c(%esi),%eax
  100c97:	01 f0                	add    %esi,%eax
  100c99:	83 38 01             	cmpl   $0x1,(%eax)
  100c9c:	75 ea                	jne    100c88 <loader+0x28>
  100c9e:	89 4d d0             	mov    %ecx,-0x30(%ebp)
  100ca1:	8b 55 0c             	mov    0xc(%ebp),%edx
  100ca4:	03 50 08             	add    0x8(%eax),%edx
  100ca7:	8b 58 10             	mov    0x10(%eax),%ebx
  100caa:	8b 48 14             	mov    0x14(%eax),%ecx
  100cad:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  100cb0:	51                   	push   %ecx
  100cb1:	8b 40 04             	mov    0x4(%eax),%eax
  100cb4:	05 00 92 01 00       	add    $0x19200,%eax
  100cb9:	50                   	push   %eax
  100cba:	53                   	push   %ebx
  100cbb:	52                   	push   %edx
  100cbc:	89 55 cc             	mov    %edx,-0x34(%ebp)
  100cbf:	e8 40 ff ff ff       	call   100c04 <readseg>
  100cc4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100cc7:	29 d8                	sub    %ebx,%eax
  100cc9:	83 c4 10             	add    $0x10,%esp
  100ccc:	85 c0                	test   %eax,%eax
  100cce:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  100cd1:	7e b5                	jle    100c88 <loader+0x28>
  100cd3:	8b 55 cc             	mov    -0x34(%ebp),%edx
  100cd6:	01 d3                	add    %edx,%ebx
  100cd8:	03 55 d4             	add    -0x2c(%ebp),%edx
  100cdb:	39 d3                	cmp    %edx,%ebx
  100cdd:	73 a9                	jae    100c88 <loader+0x28>
  100cdf:	90                   	nop
  100ce0:	43                   	inc    %ebx
  100ce1:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
  100ce5:	39 d3                	cmp    %edx,%ebx
  100ce7:	75 f7                	jne    100ce0 <loader+0x80>
  100ce9:	47                   	inc    %edi
  100cea:	39 cf                	cmp    %ecx,%edi
  100cec:	7c 9f                	jl     100c8d <loader+0x2d>
  100cee:	66 90                	xchg   %ax,%ax
  100cf0:	89 f2                	mov    %esi,%edx
  100cf2:	8b 42 18             	mov    0x18(%edx),%eax
  100cf5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100cf8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100cfb:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100cfe:	5b                   	pop    %ebx
  100cff:	5e                   	pop    %esi
  100d00:	5f                   	pop    %edi
  100d01:	5d                   	pop    %ebp
  100d02:	c3                   	ret    
  100d03:	90                   	nop
  100d04:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  100d07:	83 ec 08             	sub    $0x8,%esp
  100d0a:	6a 7e                	push   $0x7e
  100d0c:	68 38 12 10 00       	push   $0x101238
  100d11:	e8 16 03 00 00       	call   10102c <abort>
  100d16:	83 c4 10             	add    $0x10,%esp
  100d19:	b9 ff ff 00 00       	mov    $0xffff,%ecx
  100d1e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100d21:	e9 5a ff ff ff       	jmp    100c80 <loader+0x20>
  100d26:	66 90                	xchg   %ax,%ax

00100d28 <loadUMain>:
  100d28:	55                   	push   %ebp
  100d29:	89 e5                	mov    %esp,%ebp
  100d2b:	83 ec 18             	sub    $0x18,%esp
  100d2e:	68 c9 00 00 00       	push   $0xc9
  100d33:	68 00 80 00 00       	push   $0x8000
  100d38:	e8 db fc ff ff       	call   100a18 <readSect>
  100d3d:	6a 00                	push   $0x0
  100d3f:	68 00 80 00 00       	push   $0x8000
  100d44:	e8 17 ff ff ff       	call   100c60 <loader>
  100d49:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d4c:	b8 23 00 00 00       	mov    $0x23,%eax
  100d51:	fa                   	cli    
  100d52:	8e c0                	mov    %eax,%es
  100d54:	8e e0                	mov    %eax,%fs
  100d56:	8e d8                	mov    %eax,%ds
  100d58:	8e e8                	mov    %eax,%gs
  100d5a:	66 6a 23             	pushw  $0x23
  100d5d:	68 00 00 40 00       	push   $0x400000
  100d62:	68 02 02 00 00       	push   $0x202
  100d67:	6a 1b                	push   $0x1b
  100d69:	ff 75 f4             	pushl  -0xc(%ebp)
  100d6c:	fb                   	sti    
  100d6d:	cf                   	iret   
  100d6e:	83 c4 10             	add    $0x10,%esp
  100d71:	c9                   	leave  
  100d72:	c3                   	ret    
  100d73:	90                   	nop

00100d74 <addString2Buff>:
  100d74:	55                   	push   %ebp
  100d75:	89 e5                	mov    %esp,%ebp
  100d77:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100d7a:	8a 11                	mov    (%ecx),%dl
  100d7c:	84 d2                	test   %dl,%dl
  100d7e:	74 1b                	je     100d9b <addString2Buff+0x27>
  100d80:	a1 08 22 10 00       	mov    0x102208,%eax
  100d85:	29 c1                	sub    %eax,%ecx
  100d87:	90                   	nop
  100d88:	40                   	inc    %eax
  100d89:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100d8f:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  100d92:	84 d2                	test   %dl,%dl
  100d94:	75 f2                	jne    100d88 <addString2Buff+0x14>
  100d96:	a3 08 22 10 00       	mov    %eax,0x102208
  100d9b:	5d                   	pop    %ebp
  100d9c:	c3                   	ret    
  100d9d:	8d 76 00             	lea    0x0(%esi),%esi

00100da0 <addCh2Buff>:
  100da0:	55                   	push   %ebp
  100da1:	89 e5                	mov    %esp,%ebp
  100da3:	a1 08 22 10 00       	mov    0x102208,%eax
  100da8:	8d 50 01             	lea    0x1(%eax),%edx
  100dab:	89 15 08 22 10 00    	mov    %edx,0x102208
  100db1:	8b 55 08             	mov    0x8(%ebp),%edx
  100db4:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100dba:	5d                   	pop    %ebp
  100dbb:	c3                   	ret    

00100dbc <addDec2Buff>:
  100dbc:	55                   	push   %ebp
  100dbd:	89 e5                	mov    %esp,%ebp
  100dbf:	56                   	push   %esi
  100dc0:	53                   	push   %ebx
  100dc1:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100dc4:	85 db                	test   %ebx,%ebx
  100dc6:	0f 89 92 00 00 00    	jns    100e5e <addDec2Buff+0xa2>
  100dcc:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  100dd2:	74 58                	je     100e2c <addDec2Buff+0x70>
  100dd4:	a1 08 22 10 00       	mov    0x102208,%eax
  100dd9:	c6 80 40 21 10 00 2d 	movb   $0x2d,0x102140(%eax)
  100de0:	40                   	inc    %eax
  100de1:	f7 db                	neg    %ebx
  100de3:	a3 08 22 10 00       	mov    %eax,0x102208
  100de8:	83 ec 0c             	sub    $0xc,%esp
  100deb:	b8 67 66 66 66       	mov    $0x66666667,%eax
  100df0:	f7 eb                	imul   %ebx
  100df2:	89 d6                	mov    %edx,%esi
  100df4:	c1 fe 02             	sar    $0x2,%esi
  100df7:	89 d8                	mov    %ebx,%eax
  100df9:	c1 f8 1f             	sar    $0x1f,%eax
  100dfc:	29 c6                	sub    %eax,%esi
  100dfe:	56                   	push   %esi
  100dff:	e8 b8 ff ff ff       	call   100dbc <addDec2Buff>
  100e04:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100e0a:	8d 42 01             	lea    0x1(%edx),%eax
  100e0d:	a3 08 22 10 00       	mov    %eax,0x102208
  100e12:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  100e15:	01 c0                	add    %eax,%eax
  100e17:	29 c3                	sub    %eax,%ebx
  100e19:	83 c3 30             	add    $0x30,%ebx
  100e1c:	88 9a 40 21 10 00    	mov    %bl,0x102140(%edx)
  100e22:	83 c4 10             	add    $0x10,%esp
  100e25:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100e28:	5b                   	pop    %ebx
  100e29:	5e                   	pop    %esi
  100e2a:	5d                   	pop    %ebp
  100e2b:	c3                   	ret    
  100e2c:	8b 1d 08 22 10 00    	mov    0x102208,%ebx
  100e32:	8d 43 01             	lea    0x1(%ebx),%eax
  100e35:	b2 2d                	mov    $0x2d,%dl
  100e37:	b9 45 12 10 00       	mov    $0x101245,%ecx
  100e3c:	29 d9                	sub    %ebx,%ecx
  100e3e:	66 90                	xchg   %ax,%ax
  100e40:	89 c3                	mov    %eax,%ebx
  100e42:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100e48:	40                   	inc    %eax
  100e49:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  100e4d:	84 d2                	test   %dl,%dl
  100e4f:	75 ef                	jne    100e40 <addDec2Buff+0x84>
  100e51:	89 1d 08 22 10 00    	mov    %ebx,0x102208
  100e57:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100e5a:	5b                   	pop    %ebx
  100e5b:	5e                   	pop    %esi
  100e5c:	5d                   	pop    %ebp
  100e5d:	c3                   	ret    
  100e5e:	74 c5                	je     100e25 <addDec2Buff+0x69>
  100e60:	eb 86                	jmp    100de8 <addDec2Buff+0x2c>
  100e62:	66 90                	xchg   %ax,%ax

00100e64 <addHex2Buff>:
  100e64:	55                   	push   %ebp
  100e65:	89 e5                	mov    %esp,%ebp
  100e67:	8b 45 08             	mov    0x8(%ebp),%eax
  100e6a:	85 c0                	test   %eax,%eax
  100e6c:	75 02                	jne    100e70 <addHex2Buff+0xc>
  100e6e:	5d                   	pop    %ebp
  100e6f:	c3                   	ret    
  100e70:	5d                   	pop    %ebp
  100e71:	eb 01                	jmp    100e74 <addHex2Buff.part.1>
  100e73:	90                   	nop

00100e74 <addHex2Buff.part.1>:
  100e74:	55                   	push   %ebp
  100e75:	89 e5                	mov    %esp,%ebp
  100e77:	53                   	push   %ebx
  100e78:	83 ec 10             	sub    $0x10,%esp
  100e7b:	89 c3                	mov    %eax,%ebx
  100e7d:	89 c2                	mov    %eax,%edx
  100e7f:	c1 ea 04             	shr    $0x4,%edx
  100e82:	52                   	push   %edx
  100e83:	e8 dc ff ff ff       	call   100e64 <addHex2Buff>
  100e88:	89 d8                	mov    %ebx,%eax
  100e8a:	83 e0 0f             	and    $0xf,%eax
  100e8d:	83 c4 10             	add    $0x10,%esp
  100e90:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100e96:	8d 4a 01             	lea    0x1(%edx),%ecx
  100e99:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100e9f:	83 f8 09             	cmp    $0x9,%eax
  100ea2:	76 10                	jbe    100eb4 <addHex2Buff.part.1+0x40>
  100ea4:	83 c0 57             	add    $0x57,%eax
  100ea7:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100ead:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100eb0:	c9                   	leave  
  100eb1:	c3                   	ret    
  100eb2:	66 90                	xchg   %ax,%ax
  100eb4:	83 c0 30             	add    $0x30,%eax
  100eb7:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100ebd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100ec0:	c9                   	leave  
  100ec1:	c3                   	ret    
  100ec2:	66 90                	xchg   %ax,%ax

00100ec4 <Log>:
  100ec4:	55                   	push   %ebp
  100ec5:	89 e5                	mov    %esp,%ebp
  100ec7:	57                   	push   %edi
  100ec8:	56                   	push   %esi
  100ec9:	53                   	push   %ebx
  100eca:	83 ec 0c             	sub    $0xc,%esp
  100ecd:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100ed0:	8d 75 0c             	lea    0xc(%ebp),%esi
  100ed3:	8a 03                	mov    (%ebx),%al
  100ed5:	84 c0                	test   %al,%al
  100ed7:	74 21                	je     100efa <Log+0x36>
  100ed9:	3c 25                	cmp    $0x25,%al
  100edb:	74 5f                	je     100f3c <Log+0x78>
  100edd:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100ee3:	8d 4a 01             	lea    0x1(%edx),%ecx
  100ee6:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100eec:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100ef2:	8a 43 01             	mov    0x1(%ebx),%al
  100ef5:	43                   	inc    %ebx
  100ef6:	84 c0                	test   %al,%al
  100ef8:	75 df                	jne    100ed9 <Log+0x15>
  100efa:	a1 08 22 10 00       	mov    0x102208,%eax
  100eff:	c6 80 40 21 10 00 00 	movb   $0x0,0x102140(%eax)
  100f06:	85 c0                	test   %eax,%eax
  100f08:	7e 1e                	jle    100f28 <Log+0x64>
  100f0a:	31 db                	xor    %ebx,%ebx
  100f0c:	83 ec 0c             	sub    $0xc,%esp
  100f0f:	0f be 83 40 21 10 00 	movsbl 0x102140(%ebx),%eax
  100f16:	50                   	push   %eax
  100f17:	e8 e0 f7 ff ff       	call   1006fc <putChar>
  100f1c:	43                   	inc    %ebx
  100f1d:	83 c4 10             	add    $0x10,%esp
  100f20:	39 1d 08 22 10 00    	cmp    %ebx,0x102208
  100f26:	7f e4                	jg     100f0c <Log+0x48>
  100f28:	c7 05 08 22 10 00 00 	movl   $0x0,0x102208
  100f2f:	00 00 00 
  100f32:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100f35:	5b                   	pop    %ebx
  100f36:	5e                   	pop    %esi
  100f37:	5f                   	pop    %edi
  100f38:	5d                   	pop    %ebp
  100f39:	c3                   	ret    
  100f3a:	66 90                	xchg   %ax,%ax
  100f3c:	8a 43 01             	mov    0x1(%ebx),%al
  100f3f:	3c 64                	cmp    $0x64,%al
  100f41:	74 5e                	je     100fa1 <Log+0xdd>
  100f43:	7f 33                	jg     100f78 <Log+0xb4>
  100f45:	3c 25                	cmp    $0x25,%al
  100f47:	0f 84 b3 00 00 00    	je     101000 <Log+0x13c>
  100f4d:	3c 63                	cmp    $0x63,%al
  100f4f:	75 4a                	jne    100f9b <Log+0xd7>
  100f51:	8b 16                	mov    (%esi),%edx
  100f53:	a1 08 22 10 00       	mov    0x102208,%eax
  100f58:	8d 48 01             	lea    0x1(%eax),%ecx
  100f5b:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100f61:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100f67:	8a 43 02             	mov    0x2(%ebx),%al
  100f6a:	83 c6 04             	add    $0x4,%esi
  100f6d:	83 c3 02             	add    $0x2,%ebx
  100f70:	e9 60 ff ff ff       	jmp    100ed5 <Log+0x11>
  100f75:	8d 76 00             	lea    0x0(%esi),%esi
  100f78:	3c 73                	cmp    $0x73,%al
  100f7a:	74 47                	je     100fc3 <Log+0xff>
  100f7c:	3c 78                	cmp    $0x78,%al
  100f7e:	75 1b                	jne    100f9b <Log+0xd7>
  100f80:	89 f0                	mov    %esi,%eax
  100f82:	83 c6 04             	add    $0x4,%esi
  100f85:	8b 00                	mov    (%eax),%eax
  100f87:	85 c0                	test   %eax,%eax
  100f89:	74 21                	je     100fac <Log+0xe8>
  100f8b:	e8 e4 fe ff ff       	call   100e74 <addHex2Buff.part.1>
  100f90:	8a 43 02             	mov    0x2(%ebx),%al
  100f93:	83 c3 02             	add    $0x2,%ebx
  100f96:	e9 3a ff ff ff       	jmp    100ed5 <Log+0x11>
  100f9b:	43                   	inc    %ebx
  100f9c:	e9 34 ff ff ff       	jmp    100ed5 <Log+0x11>
  100fa1:	89 f0                	mov    %esi,%eax
  100fa3:	83 c6 04             	add    $0x4,%esi
  100fa6:	8b 00                	mov    (%eax),%eax
  100fa8:	85 c0                	test   %eax,%eax
  100faa:	75 6e                	jne    10101a <Log+0x156>
  100fac:	a1 08 22 10 00       	mov    0x102208,%eax
  100fb1:	8d 50 01             	lea    0x1(%eax),%edx
  100fb4:	89 15 08 22 10 00    	mov    %edx,0x102208
  100fba:	c6 80 40 21 10 00 30 	movb   $0x30,0x102140(%eax)
  100fc1:	eb cd                	jmp    100f90 <Log+0xcc>
  100fc3:	8d 4e 04             	lea    0x4(%esi),%ecx
  100fc6:	8b 36                	mov    (%esi),%esi
  100fc8:	8a 16                	mov    (%esi),%dl
  100fca:	84 d2                	test   %dl,%dl
  100fcc:	74 25                	je     100ff3 <Log+0x12f>
  100fce:	8b 3d 08 22 10 00    	mov    0x102208,%edi
  100fd4:	8d 47 01             	lea    0x1(%edi),%eax
  100fd7:	29 fe                	sub    %edi,%esi
  100fd9:	8d 76 00             	lea    0x0(%esi),%esi
  100fdc:	89 c7                	mov    %eax,%edi
  100fde:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100fe4:	40                   	inc    %eax
  100fe5:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  100fe9:	84 d2                	test   %dl,%dl
  100feb:	75 ef                	jne    100fdc <Log+0x118>
  100fed:	89 3d 08 22 10 00    	mov    %edi,0x102208
  100ff3:	8a 43 02             	mov    0x2(%ebx),%al
  100ff6:	89 ce                	mov    %ecx,%esi
  100ff8:	83 c3 02             	add    $0x2,%ebx
  100ffb:	e9 d5 fe ff ff       	jmp    100ed5 <Log+0x11>
  101000:	a1 08 22 10 00       	mov    0x102208,%eax
  101005:	8d 50 01             	lea    0x1(%eax),%edx
  101008:	89 15 08 22 10 00    	mov    %edx,0x102208
  10100e:	c6 80 40 21 10 00 25 	movb   $0x25,0x102140(%eax)
  101015:	e9 76 ff ff ff       	jmp    100f90 <Log+0xcc>
  10101a:	83 ec 0c             	sub    $0xc,%esp
  10101d:	50                   	push   %eax
  10101e:	e8 99 fd ff ff       	call   100dbc <addDec2Buff>
  101023:	83 c4 10             	add    $0x10,%esp
  101026:	e9 65 ff ff ff       	jmp    100f90 <Log+0xcc>
  10102b:	90                   	nop

0010102c <abort>:
  10102c:	55                   	push   %ebp
  10102d:	89 e5                	mov    %esp,%ebp
  10102f:	57                   	push   %edi
  101030:	56                   	push   %esi
  101031:	53                   	push   %ebx
  101032:	83 ec 1c             	sub    $0x1c,%esp
  101035:	8b 55 08             	mov    0x8(%ebp),%edx
  101038:	fa                   	cli    
  101039:	8a 02                	mov    (%edx),%al
  10103b:	b9 32 20 10 00       	mov    $0x102032,%ecx
  101040:	84 c0                	test   %al,%al
  101042:	74 0b                	je     10104f <abort+0x23>
  101044:	41                   	inc    %ecx
  101045:	42                   	inc    %edx
  101046:	88 41 ff             	mov    %al,-0x1(%ecx)
  101049:	8a 02                	mov    (%edx),%al
  10104b:	84 c0                	test   %al,%al
  10104d:	75 f5                	jne    101044 <abort+0x18>
  10104f:	c6 01 3a             	movb   $0x3a,(%ecx)
  101052:	bb 29 22 10 00       	mov    $0x102229,%ebx
  101057:	be 0a 00 00 00       	mov    $0xa,%esi
  10105c:	bf 67 66 66 66       	mov    $0x66666667,%edi
  101061:	4b                   	dec    %ebx
  101062:	8b 45 0c             	mov    0xc(%ebp),%eax
  101065:	99                   	cltd   
  101066:	f7 fe                	idiv   %esi
  101068:	8d 42 30             	lea    0x30(%edx),%eax
  10106b:	88 45 e7             	mov    %al,-0x19(%ebp)
  10106e:	88 03                	mov    %al,(%ebx)
  101070:	89 f8                	mov    %edi,%eax
  101072:	f7 6d 0c             	imull  0xc(%ebp)
  101075:	c1 fa 02             	sar    $0x2,%edx
  101078:	8b 45 0c             	mov    0xc(%ebp),%eax
  10107b:	c1 f8 1f             	sar    $0x1f,%eax
  10107e:	29 c2                	sub    %eax,%edx
  101080:	89 55 0c             	mov    %edx,0xc(%ebp)
  101083:	75 dc                	jne    101061 <abort+0x35>
  101085:	41                   	inc    %ecx
  101086:	41                   	inc    %ecx
  101087:	43                   	inc    %ebx
  101088:	8a 45 e7             	mov    -0x19(%ebp),%al
  10108b:	88 41 ff             	mov    %al,-0x1(%ecx)
  10108e:	8a 03                	mov    (%ebx),%al
  101090:	88 45 e7             	mov    %al,-0x19(%ebp)
  101093:	84 c0                	test   %al,%al
  101095:	75 ef                	jne    101086 <abort+0x5a>
  101097:	c6 01 0a             	movb   $0xa,(%ecx)
  10109a:	0f be 05 20 20 10 00 	movsbl 0x102020,%eax
  1010a1:	84 c0                	test   %al,%al
  1010a3:	74 1b                	je     1010c0 <abort+0x94>
  1010a5:	bb 20 20 10 00       	mov    $0x102020,%ebx
  1010aa:	83 ec 0c             	sub    $0xc,%esp
  1010ad:	50                   	push   %eax
  1010ae:	e8 49 f6 ff ff       	call   1006fc <putChar>
  1010b3:	43                   	inc    %ebx
  1010b4:	0f be 03             	movsbl (%ebx),%eax
  1010b7:	83 c4 10             	add    $0x10,%esp
  1010ba:	84 c0                	test   %al,%al
  1010bc:	75 ec                	jne    1010aa <abort+0x7e>
  1010be:	66 90                	xchg   %ax,%ax
  1010c0:	f4                   	hlt    
  1010c1:	eb fd                	jmp    1010c0 <abort+0x94>
  1010c3:	90                   	nop

001010c4 <idle_fun>:
  1010c4:	55                   	push   %ebp
  1010c5:	89 e5                	mov    %esp,%ebp
  1010c7:	90                   	nop
  1010c8:	f4                   	hlt    
  1010c9:	eb fd                	jmp    1010c8 <idle_fun+0x4>
  1010cb:	90                   	nop

001010cc <kEntry>:
  1010cc:	55                   	push   %ebp
  1010cd:	89 e5                	mov    %esp,%ebp
  1010cf:	83 ec 08             	sub    $0x8,%esp
  1010d2:	e8 e5 f5 ff ff       	call   1006bc <initSerial>
  1010d7:	e8 7c ef ff ff       	call   100058 <initTimer>
  1010dc:	e8 a3 f2 ff ff       	call   100384 <initIdt>
  1010e1:	e8 1a ef ff ff       	call   100000 <initIntr>
  1010e6:	e8 a5 f9 ff ff       	call   100a90 <initSeg>
  1010eb:	e8 28 f6 ff ff       	call   100718 <initProcess>
  1010f0:	b8 88 3a 10 00       	mov    $0x103a88,%eax
  1010f5:	89 c4                	mov    %eax,%esp
  1010f7:	fb                   	sti    
  1010f8:	f4                   	hlt    
  1010f9:	eb fd                	jmp    1010f8 <kEntry+0x2c>

001010fb <no0>:
  1010fb:	6a 00                	push   $0x0
  1010fd:	6a 00                	push   $0x0
  1010ff:	eb 64                	jmp    101165 <asmDoIrq>

00101101 <no1>:
  101101:	6a 00                	push   $0x0
  101103:	6a 01                	push   $0x1
  101105:	eb 5e                	jmp    101165 <asmDoIrq>

00101107 <no2>:
  101107:	6a 00                	push   $0x0
  101109:	6a 02                	push   $0x2
  10110b:	eb 58                	jmp    101165 <asmDoIrq>

0010110d <no3>:
  10110d:	6a 00                	push   $0x0
  10110f:	6a 03                	push   $0x3
  101111:	eb 52                	jmp    101165 <asmDoIrq>

00101113 <no4>:
  101113:	6a 00                	push   $0x0
  101115:	6a 04                	push   $0x4
  101117:	eb 4c                	jmp    101165 <asmDoIrq>

00101119 <no5>:
  101119:	6a 00                	push   $0x0
  10111b:	6a 05                	push   $0x5
  10111d:	eb 46                	jmp    101165 <asmDoIrq>

0010111f <no6>:
  10111f:	6a 00                	push   $0x0
  101121:	6a 06                	push   $0x6
  101123:	eb 40                	jmp    101165 <asmDoIrq>

00101125 <no7>:
  101125:	6a 00                	push   $0x0
  101127:	6a 07                	push   $0x7
  101129:	eb 3a                	jmp    101165 <asmDoIrq>

0010112b <no8>:
  10112b:	6a 08                	push   $0x8
  10112d:	eb 36                	jmp    101165 <asmDoIrq>

0010112f <no9>:
  10112f:	6a 00                	push   $0x0
  101131:	6a 09                	push   $0x9
  101133:	eb 30                	jmp    101165 <asmDoIrq>

00101135 <no10>:
  101135:	6a 0a                	push   $0xa
  101137:	eb 2c                	jmp    101165 <asmDoIrq>

00101139 <no11>:
  101139:	6a 0b                	push   $0xb
  10113b:	eb 28                	jmp    101165 <asmDoIrq>

0010113d <no12>:
  10113d:	6a 0c                	push   $0xc
  10113f:	eb 24                	jmp    101165 <asmDoIrq>

00101141 <no13>:
  101141:	6a 0d                	push   $0xd
  101143:	eb 20                	jmp    101165 <asmDoIrq>

00101145 <no14>:
  101145:	6a 0e                	push   $0xe
  101147:	eb 1c                	jmp    101165 <asmDoIrq>

00101149 <intr0>:
  101149:	6a 00                	push   $0x0
  10114b:	68 e8 03 00 00       	push   $0x3e8
  101150:	eb 13                	jmp    101165 <asmDoIrq>

00101152 <irqEmpty>:
  101152:	6a 00                	push   $0x0
  101154:	6a ff                	push   $0xffffffff
  101156:	eb 0d                	jmp    101165 <asmDoIrq>

00101158 <irqGProtectFault>:
  101158:	6a 0d                	push   $0xd
  10115a:	eb 09                	jmp    101165 <asmDoIrq>

0010115c <irqSyscall>:
  10115c:	6a 00                	push   $0x0
  10115e:	68 80 00 00 00       	push   $0x80
  101163:	eb 00                	jmp    101165 <asmDoIrq>

00101165 <asmDoIrq>:
  101165:	fa                   	cli    
  101166:	1e                   	push   %ds
  101167:	06                   	push   %es
  101168:	0f a0                	push   %fs
  10116a:	0f a8                	push   %gs
  10116c:	60                   	pusha  
  10116d:	54                   	push   %esp
  10116e:	e8 51 f1 ff ff       	call   1002c4 <irqHandle>
  101173:	a1 2c 22 10 00       	mov    0x10222c,%eax
  101178:	85 c0                	test   %eax,%eax
  10117a:	74 02                	je     10117e <switch>
  10117c:	89 c4                	mov    %eax,%esp

0010117e <switch>:
  10117e:	83 c4 04             	add    $0x4,%esp
  101181:	61                   	popa   
  101182:	0f a9                	pop    %gs
  101184:	0f a1                	pop    %fs
  101186:	07                   	pop    %es
  101187:	1f                   	pop    %ds
  101188:	83 c4 04             	add    $0x4,%esp
  10118b:	83 c4 04             	add    $0x4,%esp
  10118e:	fb                   	sti    
  10118f:	cf                   	iret   
