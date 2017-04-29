
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
  1000de:	a1 b0 6a 10 00       	mov    0x106ab0,%eax
  1000e3:	3d 40 2a 10 00       	cmp    $0x102a40,%eax
  1000e8:	0f 84 ba 00 00 00    	je     1001a8 <timerHandle+0xd0>
  1000ee:	3d c0 6a 10 00       	cmp    $0x106ac0,%eax
  1000f3:	0f 84 c3 00 00 00    	je     1001bc <timerHandle+0xe4>
  1000f9:	3d 30 ab 10 00       	cmp    $0x10ab30,%eax
  1000fe:	0f 84 90 00 00 00    	je     100194 <timerHandle+0xbc>
  100104:	83 ec 08             	sub    $0x8,%esp
  100107:	6a 33                	push   $0x33
  100109:	68 a8 10 10 00       	push   $0x1010a8
  10010e:	e8 45 0e 00 00       	call   100f58 <abort>
  100113:	83 c4 10             	add    $0x10,%esp
  100116:	83 3d 10 ab 10 00 01 	cmpl   $0x1,0x10ab10
  10011d:	74 25                	je     100144 <timerHandle+0x6c>
  10011f:	83 3d 80 eb 10 00 01 	cmpl   $0x1,0x10eb80
  100126:	74 38                	je     100160 <timerHandle+0x88>
  100128:	8b 15 b0 6a 10 00    	mov    0x106ab0,%edx
  10012e:	8b 82 54 40 00 00    	mov    0x4054(%edx),%eax
  100134:	85 c0                	test   %eax,%eax
  100136:	74 4a                	je     100182 <timerHandle+0xaa>
  100138:	48                   	dec    %eax
  100139:	89 82 54 40 00 00    	mov    %eax,0x4054(%edx)
  10013f:	c9                   	leave  
  100140:	c3                   	ret    
  100141:	8d 76 00             	lea    0x0(%esi),%esi
  100144:	ff 0d 18 ab 10 00    	decl   0x10ab18
  10014a:	75 d3                	jne    10011f <timerHandle+0x47>
  10014c:	c7 05 10 ab 10 00 02 	movl   $0x2,0x10ab10
  100153:	00 00 00 
  100156:	83 3d 80 eb 10 00 01 	cmpl   $0x1,0x10eb80
  10015d:	75 c9                	jne    100128 <timerHandle+0x50>
  10015f:	90                   	nop
  100160:	ff 0d 88 eb 10 00    	decl   0x10eb88
  100166:	75 c0                	jne    100128 <timerHandle+0x50>
  100168:	c7 05 80 eb 10 00 02 	movl   $0x2,0x10eb80
  10016f:	00 00 00 
  100172:	8b 15 b0 6a 10 00    	mov    0x106ab0,%edx
  100178:	8b 82 54 40 00 00    	mov    0x4054(%edx),%eax
  10017e:	85 c0                	test   %eax,%eax
  100180:	75 b6                	jne    100138 <timerHandle+0x60>
  100182:	c7 82 50 40 00 00 02 	movl   $0x2,0x4050(%edx)
  100189:	00 00 00 
  10018c:	c9                   	leave  
  10018d:	e9 16 07 00 00       	jmp    1008a8 <schedule>
  100192:	66 90                	xchg   %ax,%ax
  100194:	83 ec 0c             	sub    $0xc,%esp
  100197:	6a 32                	push   $0x32
  100199:	e8 8a 05 00 00       	call   100728 <putChar>
  10019e:	83 c4 10             	add    $0x10,%esp
  1001a1:	e9 70 ff ff ff       	jmp    100116 <timerHandle+0x3e>
  1001a6:	66 90                	xchg   %ax,%ax
  1001a8:	83 ec 0c             	sub    $0xc,%esp
  1001ab:	6a 2e                	push   $0x2e
  1001ad:	e8 76 05 00 00       	call   100728 <putChar>
  1001b2:	83 c4 10             	add    $0x10,%esp
  1001b5:	e9 5c ff ff ff       	jmp    100116 <timerHandle+0x3e>
  1001ba:	66 90                	xchg   %ax,%ax
  1001bc:	83 ec 0c             	sub    $0xc,%esp
  1001bf:	6a 31                	push   $0x31
  1001c1:	e8 62 05 00 00       	call   100728 <putChar>
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
  1001eb:	68 87 00 00 00       	push   $0x87
  1001f0:	68 a8 10 10 00       	push   $0x1010a8
  1001f5:	e8 5e 0d 00 00       	call   100f58 <abort>
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
  10023c:	e8 e7 04 00 00       	call   100728 <putChar>
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
  100298:	68 93 00 00 00       	push   $0x93
  10029d:	68 a8 10 10 00       	push   $0x1010a8
  1002a2:	e8 b1 0c 00 00       	call   100f58 <abort>
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
  1002c7:	53                   	push   %ebx
  1002c8:	83 ec 0c             	sub    $0xc,%esp
  1002cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1002ce:	b8 10 00 00 00       	mov    $0x10,%eax
  1002d3:	8e c0                	mov    %eax,%es
  1002d5:	8e d8                	mov    %eax,%ds
  1002d7:	8e e0                	mov    %eax,%fs
  1002d9:	8e e8                	mov    %eax,%gs
  1002db:	ff 73 30             	pushl  0x30(%ebx)
  1002de:	68 bb 10 10 00       	push   $0x1010bb
  1002e3:	e8 08 0b 00 00       	call   100df0 <Log>
  1002e8:	8b 43 30             	mov    0x30(%ebx),%eax
  1002eb:	83 c4 10             	add    $0x10,%esp
  1002ee:	83 f8 0d             	cmp    $0xd,%eax
  1002f1:	0f 84 81 00 00 00    	je     100378 <irqHandle+0xb4>
  1002f7:	7e 53                	jle    10034c <irqHandle+0x88>
  1002f9:	3d 80 00 00 00       	cmp    $0x80,%eax
  1002fe:	74 40                	je     100340 <irqHandle+0x7c>
  100300:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  100305:	75 4a                	jne    100351 <irqHandle+0x8d>
  100307:	83 ec 0c             	sub    $0xc,%esp
  10030a:	68 c3 10 10 00       	push   $0x1010c3
  10030f:	e8 dc 0a 00 00       	call   100df0 <Log>
  100314:	e8 bf fd ff ff       	call   1000d8 <timerHandle>
  100319:	a1 b0 6a 10 00       	mov    0x106ab0,%eax
  10031e:	05 00 40 00 00       	add    $0x4000,%eax
  100323:	a3 2c 22 10 00       	mov    %eax,0x10222c
  100328:	59                   	pop    %ecx
  100329:	5b                   	pop    %ebx
  10032a:	50                   	push   %eax
  10032b:	68 ce 10 10 00       	push   $0x1010ce
  100330:	e8 bb 0a 00 00       	call   100df0 <Log>
  100335:	83 c4 10             	add    $0x10,%esp
  100338:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10033b:	c9                   	leave  
  10033c:	c3                   	ret    
  10033d:	8d 76 00             	lea    0x0(%esi),%esi
  100340:	89 5d 08             	mov    %ebx,0x8(%ebp)
  100343:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100346:	c9                   	leave  
  100347:	e9 30 ff ff ff       	jmp    10027c <syscallHandle>
  10034c:	83 f8 ff             	cmp    $0xffffffff,%eax
  10034f:	74 e7                	je     100338 <irqHandle+0x74>
  100351:	83 ec 08             	sub    $0x8,%esp
  100354:	50                   	push   %eax
  100355:	68 d7 10 10 00       	push   $0x1010d7
  10035a:	e8 91 0a 00 00       	call   100df0 <Log>
  10035f:	58                   	pop    %eax
  100360:	5a                   	pop    %edx
  100361:	6a 69                	push   $0x69
  100363:	68 a8 10 10 00       	push   $0x1010a8
  100368:	e8 eb 0b 00 00       	call   100f58 <abort>
  10036d:	83 c4 10             	add    $0x10,%esp
  100370:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100373:	c9                   	leave  
  100374:	c3                   	ret    
  100375:	8d 76 00             	lea    0x0(%esi),%esi
  100378:	83 ec 08             	sub    $0x8,%esp
  10037b:	68 98 00 00 00       	push   $0x98
  100380:	68 a8 10 10 00       	push   $0x1010a8
  100385:	e8 ce 0b 00 00       	call   100f58 <abort>
  10038a:	83 c4 10             	add    $0x10,%esp
  10038d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100390:	c9                   	leave  
  100391:	c3                   	ret    
  100392:	66 90                	xchg   %ax,%ax

00100394 <GProtectFaultHandle>:
  100394:	55                   	push   %ebp
  100395:	89 e5                	mov    %esp,%ebp
  100397:	83 ec 10             	sub    $0x10,%esp
  10039a:	68 98 00 00 00       	push   $0x98
  10039f:	68 a8 10 10 00       	push   $0x1010a8
  1003a4:	e8 af 0b 00 00       	call   100f58 <abort>
  1003a9:	83 c4 10             	add    $0x10,%esp
  1003ac:	c9                   	leave  
  1003ad:	c3                   	ret    
  1003ae:	66 90                	xchg   %ax,%ax

001003b0 <initIdt>:
  1003b0:	55                   	push   %ebp
  1003b1:	89 e5                	mov    %esp,%ebp
  1003b3:	53                   	push   %ebx
  1003b4:	ba 6e 10 10 00       	mov    $0x10106e,%edx
  1003b9:	89 d3                	mov    %edx,%ebx
  1003bb:	c1 ea 10             	shr    $0x10,%edx
  1003be:	b9 40 2a 10 00       	mov    $0x102a40,%ecx
  1003c3:	b8 40 22 10 00       	mov    $0x102240,%eax
  1003c8:	66 89 18             	mov    %bx,(%eax)
  1003cb:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  1003d1:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1003d5:	c6 40 05 8f          	movb   $0x8f,0x5(%eax)
  1003d9:	66 89 50 06          	mov    %dx,0x6(%eax)
  1003dd:	83 c0 08             	add    $0x8,%eax
  1003e0:	39 c1                	cmp    %eax,%ecx
  1003e2:	75 e4                	jne    1003c8 <initIdt+0x18>
  1003e4:	b8 17 10 10 00       	mov    $0x101017,%eax
  1003e9:	66 a3 40 22 10 00    	mov    %ax,0x102240
  1003ef:	66 c7 05 42 22 10 00 	movw   $0x8,0x102242
  1003f6:	08 00 
  1003f8:	c6 05 44 22 10 00 00 	movb   $0x0,0x102244
  1003ff:	c6 05 45 22 10 00 8f 	movb   $0x8f,0x102245
  100406:	c1 e8 10             	shr    $0x10,%eax
  100409:	66 a3 46 22 10 00    	mov    %ax,0x102246
  10040f:	b8 1d 10 10 00       	mov    $0x10101d,%eax
  100414:	66 a3 48 22 10 00    	mov    %ax,0x102248
  10041a:	66 c7 05 4a 22 10 00 	movw   $0x8,0x10224a
  100421:	08 00 
  100423:	c6 05 4c 22 10 00 00 	movb   $0x0,0x10224c
  10042a:	c6 05 4d 22 10 00 8f 	movb   $0x8f,0x10224d
  100431:	c1 e8 10             	shr    $0x10,%eax
  100434:	66 a3 4e 22 10 00    	mov    %ax,0x10224e
  10043a:	b8 23 10 10 00       	mov    $0x101023,%eax
  10043f:	66 a3 50 22 10 00    	mov    %ax,0x102250
  100445:	66 c7 05 52 22 10 00 	movw   $0x8,0x102252
  10044c:	08 00 
  10044e:	c6 05 54 22 10 00 00 	movb   $0x0,0x102254
  100455:	c6 05 55 22 10 00 8f 	movb   $0x8f,0x102255
  10045c:	c1 e8 10             	shr    $0x10,%eax
  10045f:	66 a3 56 22 10 00    	mov    %ax,0x102256
  100465:	b8 29 10 10 00       	mov    $0x101029,%eax
  10046a:	66 a3 58 22 10 00    	mov    %ax,0x102258
  100470:	66 c7 05 5a 22 10 00 	movw   $0x8,0x10225a
  100477:	08 00 
  100479:	c6 05 5c 22 10 00 00 	movb   $0x0,0x10225c
  100480:	c6 05 5d 22 10 00 8f 	movb   $0x8f,0x10225d
  100487:	c1 e8 10             	shr    $0x10,%eax
  10048a:	66 a3 5e 22 10 00    	mov    %ax,0x10225e
  100490:	b8 2f 10 10 00       	mov    $0x10102f,%eax
  100495:	66 a3 60 22 10 00    	mov    %ax,0x102260
  10049b:	66 c7 05 62 22 10 00 	movw   $0x8,0x102262
  1004a2:	08 00 
  1004a4:	c6 05 64 22 10 00 00 	movb   $0x0,0x102264
  1004ab:	c6 05 65 22 10 00 8f 	movb   $0x8f,0x102265
  1004b2:	c1 e8 10             	shr    $0x10,%eax
  1004b5:	66 a3 66 22 10 00    	mov    %ax,0x102266
  1004bb:	b8 35 10 10 00       	mov    $0x101035,%eax
  1004c0:	66 a3 68 22 10 00    	mov    %ax,0x102268
  1004c6:	66 c7 05 6a 22 10 00 	movw   $0x8,0x10226a
  1004cd:	08 00 
  1004cf:	c6 05 6c 22 10 00 00 	movb   $0x0,0x10226c
  1004d6:	c6 05 6d 22 10 00 8f 	movb   $0x8f,0x10226d
  1004dd:	c1 e8 10             	shr    $0x10,%eax
  1004e0:	66 a3 6e 22 10 00    	mov    %ax,0x10226e
  1004e6:	b8 3b 10 10 00       	mov    $0x10103b,%eax
  1004eb:	66 a3 70 22 10 00    	mov    %ax,0x102270
  1004f1:	66 c7 05 72 22 10 00 	movw   $0x8,0x102272
  1004f8:	08 00 
  1004fa:	c6 05 74 22 10 00 00 	movb   $0x0,0x102274
  100501:	c6 05 75 22 10 00 8f 	movb   $0x8f,0x102275
  100508:	c1 e8 10             	shr    $0x10,%eax
  10050b:	66 a3 76 22 10 00    	mov    %ax,0x102276
  100511:	b8 41 10 10 00       	mov    $0x101041,%eax
  100516:	66 a3 78 22 10 00    	mov    %ax,0x102278
  10051c:	66 c7 05 7a 22 10 00 	movw   $0x8,0x10227a
  100523:	08 00 
  100525:	c6 05 7c 22 10 00 00 	movb   $0x0,0x10227c
  10052c:	c6 05 7d 22 10 00 8f 	movb   $0x8f,0x10227d
  100533:	c1 e8 10             	shr    $0x10,%eax
  100536:	66 a3 7e 22 10 00    	mov    %ax,0x10227e
  10053c:	b8 47 10 10 00       	mov    $0x101047,%eax
  100541:	66 a3 80 22 10 00    	mov    %ax,0x102280
  100547:	66 c7 05 82 22 10 00 	movw   $0x8,0x102282
  10054e:	08 00 
  100550:	c6 05 84 22 10 00 00 	movb   $0x0,0x102284
  100557:	c6 05 85 22 10 00 8f 	movb   $0x8f,0x102285
  10055e:	c1 e8 10             	shr    $0x10,%eax
  100561:	66 a3 86 22 10 00    	mov    %ax,0x102286
  100567:	b8 4b 10 10 00       	mov    $0x10104b,%eax
  10056c:	66 a3 88 22 10 00    	mov    %ax,0x102288
  100572:	66 c7 05 8a 22 10 00 	movw   $0x8,0x10228a
  100579:	08 00 
  10057b:	c6 05 8c 22 10 00 00 	movb   $0x0,0x10228c
  100582:	c6 05 8d 22 10 00 8f 	movb   $0x8f,0x10228d
  100589:	c1 e8 10             	shr    $0x10,%eax
  10058c:	66 a3 8e 22 10 00    	mov    %ax,0x10228e
  100592:	b8 51 10 10 00       	mov    $0x101051,%eax
  100597:	66 a3 90 22 10 00    	mov    %ax,0x102290
  10059d:	66 c7 05 92 22 10 00 	movw   $0x8,0x102292
  1005a4:	08 00 
  1005a6:	c6 05 94 22 10 00 00 	movb   $0x0,0x102294
  1005ad:	c6 05 95 22 10 00 8f 	movb   $0x8f,0x102295
  1005b4:	c1 e8 10             	shr    $0x10,%eax
  1005b7:	66 a3 96 22 10 00    	mov    %ax,0x102296
  1005bd:	b8 55 10 10 00       	mov    $0x101055,%eax
  1005c2:	66 a3 98 22 10 00    	mov    %ax,0x102298
  1005c8:	66 c7 05 9a 22 10 00 	movw   $0x8,0x10229a
  1005cf:	08 00 
  1005d1:	c6 05 9c 22 10 00 00 	movb   $0x0,0x10229c
  1005d8:	c6 05 9d 22 10 00 8f 	movb   $0x8f,0x10229d
  1005df:	c1 e8 10             	shr    $0x10,%eax
  1005e2:	66 a3 9e 22 10 00    	mov    %ax,0x10229e
  1005e8:	b8 59 10 10 00       	mov    $0x101059,%eax
  1005ed:	66 a3 a0 22 10 00    	mov    %ax,0x1022a0
  1005f3:	66 c7 05 a2 22 10 00 	movw   $0x8,0x1022a2
  1005fa:	08 00 
  1005fc:	c6 05 a4 22 10 00 00 	movb   $0x0,0x1022a4
  100603:	c6 05 a5 22 10 00 8f 	movb   $0x8f,0x1022a5
  10060a:	c1 e8 10             	shr    $0x10,%eax
  10060d:	66 a3 a6 22 10 00    	mov    %ax,0x1022a6
  100613:	66 c7 05 aa 22 10 00 	movw   $0x8,0x1022aa
  10061a:	08 00 
  10061c:	c6 05 ac 22 10 00 00 	movb   $0x0,0x1022ac
  100623:	c6 05 ad 22 10 00 8f 	movb   $0x8f,0x1022ad
  10062a:	b8 61 10 10 00       	mov    $0x101061,%eax
  10062f:	66 a3 b0 22 10 00    	mov    %ax,0x1022b0
  100635:	66 c7 05 b2 22 10 00 	movw   $0x8,0x1022b2
  10063c:	08 00 
  10063e:	c6 05 b4 22 10 00 00 	movb   $0x0,0x1022b4
  100645:	c6 05 b5 22 10 00 8f 	movb   $0x8f,0x1022b5
  10064c:	c1 e8 10             	shr    $0x10,%eax
  10064f:	66 a3 b6 22 10 00    	mov    %ax,0x1022b6
  100655:	b8 74 10 10 00       	mov    $0x101074,%eax
  10065a:	66 a3 a8 22 10 00    	mov    %ax,0x1022a8
  100660:	c1 e8 10             	shr    $0x10,%eax
  100663:	66 a3 ae 22 10 00    	mov    %ax,0x1022ae
  100669:	b8 78 10 10 00       	mov    $0x101078,%eax
  10066e:	66 a3 40 26 10 00    	mov    %ax,0x102640
  100674:	66 c7 05 42 26 10 00 	movw   $0x8,0x102642
  10067b:	08 00 
  10067d:	c6 05 44 26 10 00 00 	movb   $0x0,0x102644
  100684:	c6 05 45 26 10 00 ef 	movb   $0xef,0x102645
  10068b:	c1 e8 10             	shr    $0x10,%eax
  10068e:	66 a3 46 26 10 00    	mov    %ax,0x102646
  100694:	b8 65 10 10 00       	mov    $0x101065,%eax
  100699:	66 a3 40 23 10 00    	mov    %ax,0x102340
  10069f:	66 c7 05 42 23 10 00 	movw   $0x8,0x102342
  1006a6:	08 00 
  1006a8:	c6 05 44 23 10 00 00 	movb   $0x0,0x102344
  1006af:	c6 05 45 23 10 00 8e 	movb   $0x8e,0x102345
  1006b6:	c1 e8 10             	shr    $0x10,%eax
  1006b9:	66 a3 46 23 10 00    	mov    %ax,0x102346
  1006bf:	66 c7 05 24 21 10 00 	movw   $0x7ff,0x102124
  1006c6:	ff 07 
  1006c8:	b8 40 22 10 00       	mov    $0x102240,%eax
  1006cd:	66 a3 26 21 10 00    	mov    %ax,0x102126
  1006d3:	c1 e8 10             	shr    $0x10,%eax
  1006d6:	66 a3 28 21 10 00    	mov    %ax,0x102128
  1006dc:	b8 24 21 10 00       	mov    $0x102124,%eax
  1006e1:	0f 01 18             	lidtl  (%eax)
  1006e4:	5b                   	pop    %ebx
  1006e5:	5d                   	pop    %ebp
  1006e6:	c3                   	ret    
  1006e7:	90                   	nop

001006e8 <initSerial>:
  1006e8:	55                   	push   %ebp
  1006e9:	89 e5                	mov    %esp,%ebp
  1006eb:	ba f9 03 00 00       	mov    $0x3f9,%edx
  1006f0:	31 c0                	xor    %eax,%eax
  1006f2:	ee                   	out    %al,(%dx)
  1006f3:	ba fb 03 00 00       	mov    $0x3fb,%edx
  1006f8:	b0 80                	mov    $0x80,%al
  1006fa:	ee                   	out    %al,(%dx)
  1006fb:	ba f8 03 00 00       	mov    $0x3f8,%edx
  100700:	b0 01                	mov    $0x1,%al
  100702:	ee                   	out    %al,(%dx)
  100703:	ba f9 03 00 00       	mov    $0x3f9,%edx
  100708:	31 c0                	xor    %eax,%eax
  10070a:	ee                   	out    %al,(%dx)
  10070b:	ba fb 03 00 00       	mov    $0x3fb,%edx
  100710:	b0 03                	mov    $0x3,%al
  100712:	ee                   	out    %al,(%dx)
  100713:	ba fa 03 00 00       	mov    $0x3fa,%edx
  100718:	b0 c7                	mov    $0xc7,%al
  10071a:	ee                   	out    %al,(%dx)
  10071b:	ba fc 03 00 00       	mov    $0x3fc,%edx
  100720:	b0 0b                	mov    $0xb,%al
  100722:	ee                   	out    %al,(%dx)
  100723:	5d                   	pop    %ebp
  100724:	c3                   	ret    
  100725:	8d 76 00             	lea    0x0(%esi),%esi

00100728 <putChar>:
  100728:	55                   	push   %ebp
  100729:	89 e5                	mov    %esp,%ebp
  10072b:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10072e:	ba fd 03 00 00       	mov    $0x3fd,%edx
  100733:	90                   	nop
  100734:	ec                   	in     (%dx),%al
  100735:	a8 20                	test   $0x20,%al
  100737:	74 fb                	je     100734 <putChar+0xc>
  100739:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10073e:	88 c8                	mov    %cl,%al
  100740:	ee                   	out    %al,(%dx)
  100741:	5d                   	pop    %ebp
  100742:	c3                   	ret    
  100743:	90                   	nop

00100744 <initProcess>:
  100744:	55                   	push   %ebp
  100745:	89 e5                	mov    %esp,%ebp
  100747:	57                   	push   %edi
  100748:	56                   	push   %esi
  100749:	53                   	push   %ebx
  10074a:	83 ec 0c             	sub    $0xc,%esp
  10074d:	c7 05 90 6a 10 00 00 	movl   $0x0,0x106a90
  100754:	00 00 00 
  100757:	c7 05 94 6a 10 00 05 	movl   $0x5,0x106a94
  10075e:	00 00 00 
  100761:	b9 c0 6a 10 00       	mov    $0x106ac0,%ecx
  100766:	31 ff                	xor    %edi,%edi
  100768:	c7 81 50 40 00 00 03 	movl   $0x3,0x4050(%ecx)
  10076f:	00 00 00 
  100772:	c7 81 24 40 00 00 23 	movl   $0x23,0x4024(%ecx)
  100779:	00 00 00 
  10077c:	c7 81 28 40 00 00 23 	movl   $0x23,0x4028(%ecx)
  100783:	00 00 00 
  100786:	c7 81 2c 40 00 00 23 	movl   $0x23,0x402c(%ecx)
  10078d:	00 00 00 
  100790:	c7 81 30 40 00 00 23 	movl   $0x23,0x4030(%ecx)
  100797:	00 00 00 
  10079a:	c7 81 40 40 00 00 1b 	movl   $0x1b,0x4040(%ecx)
  1007a1:	00 00 00 
  1007a4:	c7 81 44 40 00 00 02 	movl   $0x202,0x4044(%ecx)
  1007ab:	02 00 00 
  1007ae:	c7 81 48 40 00 00 00 	movl   $0x100000,0x4048(%ecx)
  1007b5:	00 10 00 
  1007b8:	c7 81 4c 40 00 00 1b 	movl   $0x1b,0x404c(%ecx)
  1007bf:	00 00 00 
  1007c2:	8d 77 01             	lea    0x1(%edi),%esi
  1007c5:	89 b1 5c 40 00 00    	mov    %esi,0x405c(%ecx)
  1007cb:	89 fb                	mov    %edi,%ebx
  1007cd:	c1 e3 14             	shl    $0x14,%ebx
  1007d0:	81 c3 00 00 20 00    	add    $0x200000,%ebx
  1007d6:	c1 eb 10             	shr    $0x10,%ebx
  1007d9:	89 fa                	mov    %edi,%edx
  1007db:	c1 e2 08             	shl    $0x8,%edx
  1007de:	01 fa                	add    %edi,%edx
  1007e0:	01 d2                	add    %edx,%edx
  1007e2:	01 fa                	add    %edi,%edx
  1007e4:	8d 04 12             	lea    (%edx,%edx,1),%eax
  1007e7:	01 f8                	add    %edi,%eax
  1007e9:	c1 e0 04             	shl    $0x4,%eax
  1007ec:	8d 90 c0 6a 10 00    	lea    0x106ac0(%eax),%edx
  1007f2:	66 c7 80 20 ab 10 00 	movw   $0xffff,0x10ab20(%eax)
  1007f9:	ff ff 
  1007fb:	66 c7 80 22 ab 10 00 	movw   $0x0,0x10ab22(%eax)
  100802:	00 00 
  100804:	88 98 24 ab 10 00    	mov    %bl,0x10ab24(%eax)
  10080a:	c6 80 25 ab 10 00 fa 	movb   $0xfa,0x10ab25(%eax)
  100811:	c6 80 26 ab 10 00 cf 	movb   $0xcf,0x10ab26(%eax)
  100818:	c6 80 27 ab 10 00 00 	movb   $0x0,0x10ab27(%eax)
  10081f:	66 c7 80 28 ab 10 00 	movw   $0xffff,0x10ab28(%eax)
  100826:	ff ff 
  100828:	66 c7 80 2a ab 10 00 	movw   $0x0,0x10ab2a(%eax)
  10082f:	00 00 
  100831:	88 98 2c ab 10 00    	mov    %bl,0x10ab2c(%eax)
  100837:	c6 80 2d ab 10 00 f2 	movb   $0xf2,0x10ab2d(%eax)
  10083e:	c6 80 2e ab 10 00 cf 	movb   $0xcf,0x10ab2e(%eax)
  100845:	c6 82 6f 40 00 00 00 	movb   $0x0,0x406f(%edx)
  10084c:	81 c1 70 40 00 00    	add    $0x4070,%ecx
  100852:	89 f7                	mov    %esi,%edi
  100854:	83 fe 02             	cmp    $0x2,%esi
  100857:	0f 85 0b ff ff ff    	jne    100768 <initProcess+0x24>
  10085d:	50                   	push   %eax
  10085e:	68 00 92 01 00       	push   $0x19200
  100863:	68 00 02 00 00       	push   $0x200
  100868:	68 00 80 00 00       	push   $0x8000
  10086d:	e8 be 02 00 00       	call   100b30 <readseg>
  100872:	5a                   	pop    %edx
  100873:	59                   	pop    %ecx
  100874:	68 00 00 20 00       	push   $0x200000
  100879:	68 00 80 00 00       	push   $0x8000
  10087e:	e8 09 03 00 00       	call   100b8c <loader>
  100883:	a3 fc aa 10 00       	mov    %eax,0x10aafc
  100888:	c7 05 10 ab 10 00 02 	movl   $0x2,0x10ab10
  10088f:	00 00 00 
  100892:	c7 05 b0 6a 10 00 40 	movl   $0x102a40,0x106ab0
  100899:	2a 10 00 
  10089c:	83 c4 10             	add    $0x10,%esp
  10089f:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1008a2:	5b                   	pop    %ebx
  1008a3:	5e                   	pop    %esi
  1008a4:	5f                   	pop    %edi
  1008a5:	5d                   	pop    %ebp
  1008a6:	c3                   	ret    
  1008a7:	90                   	nop

001008a8 <schedule>:
  1008a8:	55                   	push   %ebp
  1008a9:	89 e5                	mov    %esp,%ebp
  1008ab:	83 3d 10 ab 10 00 02 	cmpl   $0x2,0x10ab10
  1008b2:	74 18                	je     1008cc <schedule+0x24>
  1008b4:	83 3d 80 eb 10 00 02 	cmpl   $0x2,0x10eb80
  1008bb:	74 6b                	je     100928 <schedule+0x80>
  1008bd:	c7 05 b0 6a 10 00 40 	movl   $0x102a40,0x106ab0
  1008c4:	2a 10 00 
  1008c7:	5d                   	pop    %ebp
  1008c8:	c3                   	ret    
  1008c9:	8d 76 00             	lea    0x0(%esi),%esi
  1008cc:	b9 c0 6a 10 00       	mov    $0x106ac0,%ecx
  1008d1:	89 0d b0 6a 10 00    	mov    %ecx,0x106ab0
  1008d7:	c7 81 54 40 00 00 0a 	movl   $0xa,0x4054(%ecx)
  1008de:	00 00 00 
  1008e1:	c7 81 50 40 00 00 00 	movl   $0x0,0x4050(%ecx)
  1008e8:	00 00 00 
  1008eb:	8d 81 50 40 00 00    	lea    0x4050(%ecx),%eax
  1008f1:	a3 e4 eb 10 00       	mov    %eax,0x10ebe4
  1008f6:	8b 81 60 40 00 00    	mov    0x4060(%ecx),%eax
  1008fc:	8b 91 64 40 00 00    	mov    0x4064(%ecx),%edx
  100902:	a3 b8 eb 10 00       	mov    %eax,0x10ebb8
  100907:	89 15 bc eb 10 00    	mov    %edx,0x10ebbc
  10090d:	8b 81 68 40 00 00    	mov    0x4068(%ecx),%eax
  100913:	8b 91 6c 40 00 00    	mov    0x406c(%ecx),%edx
  100919:	a3 c0 eb 10 00       	mov    %eax,0x10ebc0
  10091e:	89 15 c4 eb 10 00    	mov    %edx,0x10ebc4
  100924:	5d                   	pop    %ebp
  100925:	c3                   	ret    
  100926:	66 90                	xchg   %ax,%ax
  100928:	b9 30 ab 10 00       	mov    $0x10ab30,%ecx
  10092d:	eb a2                	jmp    1008d1 <schedule+0x29>
  10092f:	90                   	nop

00100930 <waitDisk>:
  100930:	55                   	push   %ebp
  100931:	89 e5                	mov    %esp,%ebp
  100933:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100938:	ec                   	in     (%dx),%al
  100939:	83 e0 c0             	and    $0xffffffc0,%eax
  10093c:	3c 40                	cmp    $0x40,%al
  10093e:	75 f8                	jne    100938 <waitDisk+0x8>
  100940:	5d                   	pop    %ebp
  100941:	c3                   	ret    
  100942:	66 90                	xchg   %ax,%ax

00100944 <readSect>:
  100944:	55                   	push   %ebp
  100945:	89 e5                	mov    %esp,%ebp
  100947:	53                   	push   %ebx
  100948:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  10094b:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100950:	ec                   	in     (%dx),%al
  100951:	83 e0 c0             	and    $0xffffffc0,%eax
  100954:	3c 40                	cmp    $0x40,%al
  100956:	75 f8                	jne    100950 <readSect+0xc>
  100958:	ba f2 01 00 00       	mov    $0x1f2,%edx
  10095d:	b0 01                	mov    $0x1,%al
  10095f:	ee                   	out    %al,(%dx)
  100960:	ba f3 01 00 00       	mov    $0x1f3,%edx
  100965:	88 c8                	mov    %cl,%al
  100967:	ee                   	out    %al,(%dx)
  100968:	89 c8                	mov    %ecx,%eax
  10096a:	c1 f8 08             	sar    $0x8,%eax
  10096d:	ba f4 01 00 00       	mov    $0x1f4,%edx
  100972:	ee                   	out    %al,(%dx)
  100973:	89 c8                	mov    %ecx,%eax
  100975:	c1 f8 10             	sar    $0x10,%eax
  100978:	ba f5 01 00 00       	mov    $0x1f5,%edx
  10097d:	ee                   	out    %al,(%dx)
  10097e:	89 c8                	mov    %ecx,%eax
  100980:	c1 f8 18             	sar    $0x18,%eax
  100983:	83 c8 e0             	or     $0xffffffe0,%eax
  100986:	ba f6 01 00 00       	mov    $0x1f6,%edx
  10098b:	ee                   	out    %al,(%dx)
  10098c:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100991:	b0 20                	mov    $0x20,%al
  100993:	ee                   	out    %al,(%dx)
  100994:	ec                   	in     (%dx),%al
  100995:	83 e0 c0             	and    $0xffffffc0,%eax
  100998:	3c 40                	cmp    $0x40,%al
  10099a:	75 f8                	jne    100994 <readSect+0x50>
  10099c:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10099f:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  1009a5:	ba f0 01 00 00       	mov    $0x1f0,%edx
  1009aa:	66 90                	xchg   %ax,%ax
  1009ac:	ed                   	in     (%dx),%eax
  1009ad:	89 01                	mov    %eax,(%ecx)
  1009af:	83 c1 04             	add    $0x4,%ecx
  1009b2:	39 d9                	cmp    %ebx,%ecx
  1009b4:	75 f6                	jne    1009ac <readSect+0x68>
  1009b6:	5b                   	pop    %ebx
  1009b7:	5d                   	pop    %ebp
  1009b8:	c3                   	ret    
  1009b9:	8d 76 00             	lea    0x0(%esi),%esi

001009bc <initSeg>:
  1009bc:	55                   	push   %ebp
  1009bd:	89 e5                	mov    %esp,%ebp
  1009bf:	ba a0 eb 10 00       	mov    $0x10eba0,%edx
  1009c4:	66 c7 05 a8 eb 10 00 	movw   $0xffff,0x10eba8
  1009cb:	ff ff 
  1009cd:	66 c7 05 aa eb 10 00 	movw   $0x0,0x10ebaa
  1009d4:	00 00 
  1009d6:	c6 05 ac eb 10 00 00 	movb   $0x0,0x10ebac
  1009dd:	c6 05 ad eb 10 00 9a 	movb   $0x9a,0x10ebad
  1009e4:	c6 05 ae eb 10 00 cf 	movb   $0xcf,0x10ebae
  1009eb:	c6 05 af eb 10 00 00 	movb   $0x0,0x10ebaf
  1009f2:	66 c7 05 b0 eb 10 00 	movw   $0xffff,0x10ebb0
  1009f9:	ff ff 
  1009fb:	66 c7 05 b2 eb 10 00 	movw   $0x0,0x10ebb2
  100a02:	00 00 
  100a04:	c6 05 b4 eb 10 00 00 	movb   $0x0,0x10ebb4
  100a0b:	c6 05 b5 eb 10 00 92 	movb   $0x92,0x10ebb5
  100a12:	c6 05 b6 eb 10 00 cf 	movb   $0xcf,0x10ebb6
  100a19:	c6 05 b7 eb 10 00 00 	movb   $0x0,0x10ebb7
  100a20:	66 c7 05 b8 eb 10 00 	movw   $0xffff,0x10ebb8
  100a27:	ff ff 
  100a29:	66 c7 05 ba eb 10 00 	movw   $0x0,0x10ebba
  100a30:	00 00 
  100a32:	c6 05 bc eb 10 00 00 	movb   $0x0,0x10ebbc
  100a39:	c6 05 bd eb 10 00 fa 	movb   $0xfa,0x10ebbd
  100a40:	c6 05 be eb 10 00 cf 	movb   $0xcf,0x10ebbe
  100a47:	c6 05 bf eb 10 00 00 	movb   $0x0,0x10ebbf
  100a4e:	66 c7 05 c0 eb 10 00 	movw   $0xffff,0x10ebc0
  100a55:	ff ff 
  100a57:	66 c7 05 c2 eb 10 00 	movw   $0x0,0x10ebc2
  100a5e:	00 00 
  100a60:	c6 05 c4 eb 10 00 00 	movb   $0x0,0x10ebc4
  100a67:	c6 05 c5 eb 10 00 f2 	movb   $0xf2,0x10ebc5
  100a6e:	c6 05 c6 eb 10 00 cf 	movb   $0xcf,0x10ebc6
  100a75:	c6 05 c7 eb 10 00 00 	movb   $0x0,0x10ebc7
  100a7c:	66 c7 05 c8 eb 10 00 	movw   $0x63,0x10ebc8
  100a83:	63 00 
  100a85:	b8 e0 eb 10 00       	mov    $0x10ebe0,%eax
  100a8a:	66 a3 ca eb 10 00    	mov    %ax,0x10ebca
  100a90:	89 c1                	mov    %eax,%ecx
  100a92:	c1 e9 10             	shr    $0x10,%ecx
  100a95:	88 0d cc eb 10 00    	mov    %cl,0x10ebcc
  100a9b:	c6 05 cd eb 10 00 89 	movb   $0x89,0x10ebcd
  100aa2:	c6 05 ce eb 10 00 40 	movb   $0x40,0x10ebce
  100aa9:	c1 e8 18             	shr    $0x18,%eax
  100aac:	a2 cf eb 10 00       	mov    %al,0x10ebcf
  100ab1:	66 c7 05 2c 21 10 00 	movw   $0x37,0x10212c
  100ab8:	37 00 
  100aba:	66 89 15 2e 21 10 00 	mov    %dx,0x10212e
  100ac1:	c1 ea 10             	shr    $0x10,%edx
  100ac4:	66 89 15 30 21 10 00 	mov    %dx,0x102130
  100acb:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  100ad0:	0f 01 10             	lgdtl  (%eax)
  100ad3:	b8 28 00 00 00       	mov    $0x28,%eax
  100ad8:	0f 00 d8             	ltr    %ax
  100adb:	c7 05 e8 eb 10 00 10 	movl   $0x10,0x10ebe8
  100ae2:	00 00 00 
  100ae5:	c7 05 e4 eb 10 00 90 	movl   $0x106a90,0x10ebe4
  100aec:	6a 10 00 
  100aef:	b8 10 00 00 00       	mov    $0x10,%eax
  100af4:	8e c0                	mov    %eax,%es
  100af6:	8e d8                	mov    %eax,%ds
  100af8:	8e e8                	mov    %eax,%gs
  100afa:	8e e0                	mov    %eax,%fs
  100afc:	8e d0                	mov    %eax,%ss
  100afe:	31 c0                	xor    %eax,%eax
  100b00:	0f 00 d0             	lldt   %ax
  100b03:	5d                   	pop    %ebp
  100b04:	c3                   	ret    
  100b05:	8d 76 00             	lea    0x0(%esi),%esi

00100b08 <enterUserSpace>:
  100b08:	55                   	push   %ebp
  100b09:	89 e5                	mov    %esp,%ebp
  100b0b:	b8 23 00 00 00       	mov    $0x23,%eax
  100b10:	fa                   	cli    
  100b11:	8e c0                	mov    %eax,%es
  100b13:	8e e0                	mov    %eax,%fs
  100b15:	8e d8                	mov    %eax,%ds
  100b17:	8e e8                	mov    %eax,%gs
  100b19:	66 6a 23             	pushw  $0x23
  100b1c:	68 00 00 40 00       	push   $0x400000
  100b21:	68 02 02 00 00       	push   $0x202
  100b26:	6a 1b                	push   $0x1b
  100b28:	ff 75 08             	pushl  0x8(%ebp)
  100b2b:	fb                   	sti    
  100b2c:	cf                   	iret   
  100b2d:	5d                   	pop    %ebp
  100b2e:	c3                   	ret    
  100b2f:	90                   	nop

00100b30 <readseg>:
  100b30:	55                   	push   %ebp
  100b31:	89 e5                	mov    %esp,%ebp
  100b33:	57                   	push   %edi
  100b34:	56                   	push   %esi
  100b35:	53                   	push   %ebx
  100b36:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100b39:	8b 7d 10             	mov    0x10(%ebp),%edi
  100b3c:	8b 75 0c             	mov    0xc(%ebp),%esi
  100b3f:	01 de                	add    %ebx,%esi
  100b41:	89 f8                	mov    %edi,%eax
  100b43:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100b48:	78 2a                	js     100b74 <readseg+0x44>
  100b4a:	29 c3                	sub    %eax,%ebx
  100b4c:	85 ff                	test   %edi,%edi
  100b4e:	78 31                	js     100b81 <readseg+0x51>
  100b50:	c1 ff 09             	sar    $0x9,%edi
  100b53:	39 de                	cmp    %ebx,%esi
  100b55:	76 15                	jbe    100b6c <readseg+0x3c>
  100b57:	90                   	nop
  100b58:	57                   	push   %edi
  100b59:	53                   	push   %ebx
  100b5a:	e8 e5 fd ff ff       	call   100944 <readSect>
  100b5f:	81 c3 00 02 00 00    	add    $0x200,%ebx
  100b65:	47                   	inc    %edi
  100b66:	58                   	pop    %eax
  100b67:	5a                   	pop    %edx
  100b68:	39 de                	cmp    %ebx,%esi
  100b6a:	77 ec                	ja     100b58 <readseg+0x28>
  100b6c:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100b6f:	5b                   	pop    %ebx
  100b70:	5e                   	pop    %esi
  100b71:	5f                   	pop    %edi
  100b72:	5d                   	pop    %ebp
  100b73:	c3                   	ret    
  100b74:	48                   	dec    %eax
  100b75:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100b7a:	40                   	inc    %eax
  100b7b:	29 c3                	sub    %eax,%ebx
  100b7d:	85 ff                	test   %edi,%edi
  100b7f:	79 cf                	jns    100b50 <readseg+0x20>
  100b81:	81 c7 ff 01 00 00    	add    $0x1ff,%edi
  100b87:	eb c7                	jmp    100b50 <readseg+0x20>
  100b89:	8d 76 00             	lea    0x0(%esi),%esi

00100b8c <loader>:
  100b8c:	55                   	push   %ebp
  100b8d:	89 e5                	mov    %esp,%ebp
  100b8f:	57                   	push   %edi
  100b90:	56                   	push   %esi
  100b91:	53                   	push   %ebx
  100b92:	83 ec 2c             	sub    $0x2c,%esp
  100b95:	8b 55 08             	mov    0x8(%ebp),%edx
  100b98:	8b 42 2c             	mov    0x2c(%edx),%eax
  100b9b:	66 83 f8 ff          	cmp    $0xffff,%ax
  100b9f:	0f 84 8b 00 00 00    	je     100c30 <loader+0xa4>
  100ba5:	0f b7 c8             	movzwl %ax,%ecx
  100ba8:	85 c9                	test   %ecx,%ecx
  100baa:	74 72                	je     100c1e <loader+0x92>
  100bac:	31 ff                	xor    %edi,%edi
  100bae:	89 d6                	mov    %edx,%esi
  100bb0:	eb 07                	jmp    100bb9 <loader+0x2d>
  100bb2:	66 90                	xchg   %ax,%ax
  100bb4:	47                   	inc    %edi
  100bb5:	39 cf                	cmp    %ecx,%edi
  100bb7:	7d 63                	jge    100c1c <loader+0x90>
  100bb9:	0f b7 46 2a          	movzwl 0x2a(%esi),%eax
  100bbd:	0f af c7             	imul   %edi,%eax
  100bc0:	03 46 1c             	add    0x1c(%esi),%eax
  100bc3:	01 f0                	add    %esi,%eax
  100bc5:	83 38 01             	cmpl   $0x1,(%eax)
  100bc8:	75 ea                	jne    100bb4 <loader+0x28>
  100bca:	89 4d d0             	mov    %ecx,-0x30(%ebp)
  100bcd:	8b 55 0c             	mov    0xc(%ebp),%edx
  100bd0:	03 50 08             	add    0x8(%eax),%edx
  100bd3:	8b 58 10             	mov    0x10(%eax),%ebx
  100bd6:	8b 48 14             	mov    0x14(%eax),%ecx
  100bd9:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  100bdc:	51                   	push   %ecx
  100bdd:	8b 40 04             	mov    0x4(%eax),%eax
  100be0:	05 00 92 01 00       	add    $0x19200,%eax
  100be5:	50                   	push   %eax
  100be6:	53                   	push   %ebx
  100be7:	52                   	push   %edx
  100be8:	89 55 cc             	mov    %edx,-0x34(%ebp)
  100beb:	e8 40 ff ff ff       	call   100b30 <readseg>
  100bf0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100bf3:	29 d8                	sub    %ebx,%eax
  100bf5:	83 c4 10             	add    $0x10,%esp
  100bf8:	85 c0                	test   %eax,%eax
  100bfa:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  100bfd:	7e b5                	jle    100bb4 <loader+0x28>
  100bff:	8b 55 cc             	mov    -0x34(%ebp),%edx
  100c02:	01 d3                	add    %edx,%ebx
  100c04:	03 55 d4             	add    -0x2c(%ebp),%edx
  100c07:	39 d3                	cmp    %edx,%ebx
  100c09:	73 a9                	jae    100bb4 <loader+0x28>
  100c0b:	90                   	nop
  100c0c:	43                   	inc    %ebx
  100c0d:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
  100c11:	39 d3                	cmp    %edx,%ebx
  100c13:	75 f7                	jne    100c0c <loader+0x80>
  100c15:	47                   	inc    %edi
  100c16:	39 cf                	cmp    %ecx,%edi
  100c18:	7c 9f                	jl     100bb9 <loader+0x2d>
  100c1a:	66 90                	xchg   %ax,%ax
  100c1c:	89 f2                	mov    %esi,%edx
  100c1e:	8b 42 18             	mov    0x18(%edx),%eax
  100c21:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100c24:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100c27:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100c2a:	5b                   	pop    %ebx
  100c2b:	5e                   	pop    %esi
  100c2c:	5f                   	pop    %edi
  100c2d:	5d                   	pop    %ebp
  100c2e:	c3                   	ret    
  100c2f:	90                   	nop
  100c30:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  100c33:	83 ec 08             	sub    $0x8,%esp
  100c36:	6a 7e                	push   $0x7e
  100c38:	68 e1 10 10 00       	push   $0x1010e1
  100c3d:	e8 16 03 00 00       	call   100f58 <abort>
  100c42:	83 c4 10             	add    $0x10,%esp
  100c45:	b9 ff ff 00 00       	mov    $0xffff,%ecx
  100c4a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100c4d:	e9 5a ff ff ff       	jmp    100bac <loader+0x20>
  100c52:	66 90                	xchg   %ax,%ax

00100c54 <loadUMain>:
  100c54:	55                   	push   %ebp
  100c55:	89 e5                	mov    %esp,%ebp
  100c57:	83 ec 18             	sub    $0x18,%esp
  100c5a:	68 c9 00 00 00       	push   $0xc9
  100c5f:	68 00 80 00 00       	push   $0x8000
  100c64:	e8 db fc ff ff       	call   100944 <readSect>
  100c69:	6a 00                	push   $0x0
  100c6b:	68 00 80 00 00       	push   $0x8000
  100c70:	e8 17 ff ff ff       	call   100b8c <loader>
  100c75:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c78:	b8 23 00 00 00       	mov    $0x23,%eax
  100c7d:	fa                   	cli    
  100c7e:	8e c0                	mov    %eax,%es
  100c80:	8e e0                	mov    %eax,%fs
  100c82:	8e d8                	mov    %eax,%ds
  100c84:	8e e8                	mov    %eax,%gs
  100c86:	66 6a 23             	pushw  $0x23
  100c89:	68 00 00 40 00       	push   $0x400000
  100c8e:	68 02 02 00 00       	push   $0x202
  100c93:	6a 1b                	push   $0x1b
  100c95:	ff 75 f4             	pushl  -0xc(%ebp)
  100c98:	fb                   	sti    
  100c99:	cf                   	iret   
  100c9a:	83 c4 10             	add    $0x10,%esp
  100c9d:	c9                   	leave  
  100c9e:	c3                   	ret    
  100c9f:	90                   	nop

00100ca0 <addString2Buff>:
  100ca0:	55                   	push   %ebp
  100ca1:	89 e5                	mov    %esp,%ebp
  100ca3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100ca6:	8a 11                	mov    (%ecx),%dl
  100ca8:	84 d2                	test   %dl,%dl
  100caa:	74 1b                	je     100cc7 <addString2Buff+0x27>
  100cac:	a1 08 22 10 00       	mov    0x102208,%eax
  100cb1:	29 c1                	sub    %eax,%ecx
  100cb3:	90                   	nop
  100cb4:	40                   	inc    %eax
  100cb5:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100cbb:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  100cbe:	84 d2                	test   %dl,%dl
  100cc0:	75 f2                	jne    100cb4 <addString2Buff+0x14>
  100cc2:	a3 08 22 10 00       	mov    %eax,0x102208
  100cc7:	5d                   	pop    %ebp
  100cc8:	c3                   	ret    
  100cc9:	8d 76 00             	lea    0x0(%esi),%esi

00100ccc <addCh2Buff>:
  100ccc:	55                   	push   %ebp
  100ccd:	89 e5                	mov    %esp,%ebp
  100ccf:	a1 08 22 10 00       	mov    0x102208,%eax
  100cd4:	8d 50 01             	lea    0x1(%eax),%edx
  100cd7:	89 15 08 22 10 00    	mov    %edx,0x102208
  100cdd:	8b 55 08             	mov    0x8(%ebp),%edx
  100ce0:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100ce6:	5d                   	pop    %ebp
  100ce7:	c3                   	ret    

00100ce8 <addDec2Buff>:
  100ce8:	55                   	push   %ebp
  100ce9:	89 e5                	mov    %esp,%ebp
  100ceb:	56                   	push   %esi
  100cec:	53                   	push   %ebx
  100ced:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100cf0:	85 db                	test   %ebx,%ebx
  100cf2:	0f 89 92 00 00 00    	jns    100d8a <addDec2Buff+0xa2>
  100cf8:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  100cfe:	74 58                	je     100d58 <addDec2Buff+0x70>
  100d00:	a1 08 22 10 00       	mov    0x102208,%eax
  100d05:	c6 80 40 21 10 00 2d 	movb   $0x2d,0x102140(%eax)
  100d0c:	40                   	inc    %eax
  100d0d:	f7 db                	neg    %ebx
  100d0f:	a3 08 22 10 00       	mov    %eax,0x102208
  100d14:	83 ec 0c             	sub    $0xc,%esp
  100d17:	b8 67 66 66 66       	mov    $0x66666667,%eax
  100d1c:	f7 eb                	imul   %ebx
  100d1e:	89 d6                	mov    %edx,%esi
  100d20:	c1 fe 02             	sar    $0x2,%esi
  100d23:	89 d8                	mov    %ebx,%eax
  100d25:	c1 f8 1f             	sar    $0x1f,%eax
  100d28:	29 c6                	sub    %eax,%esi
  100d2a:	56                   	push   %esi
  100d2b:	e8 b8 ff ff ff       	call   100ce8 <addDec2Buff>
  100d30:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100d36:	8d 42 01             	lea    0x1(%edx),%eax
  100d39:	a3 08 22 10 00       	mov    %eax,0x102208
  100d3e:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  100d41:	01 c0                	add    %eax,%eax
  100d43:	29 c3                	sub    %eax,%ebx
  100d45:	83 c3 30             	add    $0x30,%ebx
  100d48:	88 9a 40 21 10 00    	mov    %bl,0x102140(%edx)
  100d4e:	83 c4 10             	add    $0x10,%esp
  100d51:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100d54:	5b                   	pop    %ebx
  100d55:	5e                   	pop    %esi
  100d56:	5d                   	pop    %ebp
  100d57:	c3                   	ret    
  100d58:	8b 1d 08 22 10 00    	mov    0x102208,%ebx
  100d5e:	8d 43 01             	lea    0x1(%ebx),%eax
  100d61:	b2 2d                	mov    $0x2d,%dl
  100d63:	b9 ee 10 10 00       	mov    $0x1010ee,%ecx
  100d68:	29 d9                	sub    %ebx,%ecx
  100d6a:	66 90                	xchg   %ax,%ax
  100d6c:	89 c3                	mov    %eax,%ebx
  100d6e:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100d74:	40                   	inc    %eax
  100d75:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  100d79:	84 d2                	test   %dl,%dl
  100d7b:	75 ef                	jne    100d6c <addDec2Buff+0x84>
  100d7d:	89 1d 08 22 10 00    	mov    %ebx,0x102208
  100d83:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100d86:	5b                   	pop    %ebx
  100d87:	5e                   	pop    %esi
  100d88:	5d                   	pop    %ebp
  100d89:	c3                   	ret    
  100d8a:	74 c5                	je     100d51 <addDec2Buff+0x69>
  100d8c:	eb 86                	jmp    100d14 <addDec2Buff+0x2c>
  100d8e:	66 90                	xchg   %ax,%ax

00100d90 <addHex2Buff>:
  100d90:	55                   	push   %ebp
  100d91:	89 e5                	mov    %esp,%ebp
  100d93:	8b 45 08             	mov    0x8(%ebp),%eax
  100d96:	85 c0                	test   %eax,%eax
  100d98:	75 02                	jne    100d9c <addHex2Buff+0xc>
  100d9a:	5d                   	pop    %ebp
  100d9b:	c3                   	ret    
  100d9c:	5d                   	pop    %ebp
  100d9d:	eb 01                	jmp    100da0 <addHex2Buff.part.1>
  100d9f:	90                   	nop

00100da0 <addHex2Buff.part.1>:
  100da0:	55                   	push   %ebp
  100da1:	89 e5                	mov    %esp,%ebp
  100da3:	53                   	push   %ebx
  100da4:	83 ec 10             	sub    $0x10,%esp
  100da7:	89 c3                	mov    %eax,%ebx
  100da9:	89 c2                	mov    %eax,%edx
  100dab:	c1 ea 04             	shr    $0x4,%edx
  100dae:	52                   	push   %edx
  100daf:	e8 dc ff ff ff       	call   100d90 <addHex2Buff>
  100db4:	89 d8                	mov    %ebx,%eax
  100db6:	83 e0 0f             	and    $0xf,%eax
  100db9:	83 c4 10             	add    $0x10,%esp
  100dbc:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100dc2:	8d 4a 01             	lea    0x1(%edx),%ecx
  100dc5:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100dcb:	83 f8 09             	cmp    $0x9,%eax
  100dce:	76 10                	jbe    100de0 <addHex2Buff.part.1+0x40>
  100dd0:	83 c0 57             	add    $0x57,%eax
  100dd3:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100dd9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100ddc:	c9                   	leave  
  100ddd:	c3                   	ret    
  100dde:	66 90                	xchg   %ax,%ax
  100de0:	83 c0 30             	add    $0x30,%eax
  100de3:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100de9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100dec:	c9                   	leave  
  100ded:	c3                   	ret    
  100dee:	66 90                	xchg   %ax,%ax

00100df0 <Log>:
  100df0:	55                   	push   %ebp
  100df1:	89 e5                	mov    %esp,%ebp
  100df3:	57                   	push   %edi
  100df4:	56                   	push   %esi
  100df5:	53                   	push   %ebx
  100df6:	83 ec 0c             	sub    $0xc,%esp
  100df9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100dfc:	8d 75 0c             	lea    0xc(%ebp),%esi
  100dff:	8a 03                	mov    (%ebx),%al
  100e01:	84 c0                	test   %al,%al
  100e03:	74 21                	je     100e26 <Log+0x36>
  100e05:	3c 25                	cmp    $0x25,%al
  100e07:	74 5f                	je     100e68 <Log+0x78>
  100e09:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100e0f:	8d 4a 01             	lea    0x1(%edx),%ecx
  100e12:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100e18:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100e1e:	8a 43 01             	mov    0x1(%ebx),%al
  100e21:	43                   	inc    %ebx
  100e22:	84 c0                	test   %al,%al
  100e24:	75 df                	jne    100e05 <Log+0x15>
  100e26:	a1 08 22 10 00       	mov    0x102208,%eax
  100e2b:	c6 80 40 21 10 00 00 	movb   $0x0,0x102140(%eax)
  100e32:	85 c0                	test   %eax,%eax
  100e34:	7e 1e                	jle    100e54 <Log+0x64>
  100e36:	31 db                	xor    %ebx,%ebx
  100e38:	83 ec 0c             	sub    $0xc,%esp
  100e3b:	0f be 83 40 21 10 00 	movsbl 0x102140(%ebx),%eax
  100e42:	50                   	push   %eax
  100e43:	e8 e0 f8 ff ff       	call   100728 <putChar>
  100e48:	43                   	inc    %ebx
  100e49:	83 c4 10             	add    $0x10,%esp
  100e4c:	39 1d 08 22 10 00    	cmp    %ebx,0x102208
  100e52:	7f e4                	jg     100e38 <Log+0x48>
  100e54:	c7 05 08 22 10 00 00 	movl   $0x0,0x102208
  100e5b:	00 00 00 
  100e5e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100e61:	5b                   	pop    %ebx
  100e62:	5e                   	pop    %esi
  100e63:	5f                   	pop    %edi
  100e64:	5d                   	pop    %ebp
  100e65:	c3                   	ret    
  100e66:	66 90                	xchg   %ax,%ax
  100e68:	8a 43 01             	mov    0x1(%ebx),%al
  100e6b:	3c 64                	cmp    $0x64,%al
  100e6d:	74 5e                	je     100ecd <Log+0xdd>
  100e6f:	7f 33                	jg     100ea4 <Log+0xb4>
  100e71:	3c 25                	cmp    $0x25,%al
  100e73:	0f 84 b3 00 00 00    	je     100f2c <Log+0x13c>
  100e79:	3c 63                	cmp    $0x63,%al
  100e7b:	75 4a                	jne    100ec7 <Log+0xd7>
  100e7d:	8b 16                	mov    (%esi),%edx
  100e7f:	a1 08 22 10 00       	mov    0x102208,%eax
  100e84:	8d 48 01             	lea    0x1(%eax),%ecx
  100e87:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100e8d:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100e93:	8a 43 02             	mov    0x2(%ebx),%al
  100e96:	83 c6 04             	add    $0x4,%esi
  100e99:	83 c3 02             	add    $0x2,%ebx
  100e9c:	e9 60 ff ff ff       	jmp    100e01 <Log+0x11>
  100ea1:	8d 76 00             	lea    0x0(%esi),%esi
  100ea4:	3c 73                	cmp    $0x73,%al
  100ea6:	74 47                	je     100eef <Log+0xff>
  100ea8:	3c 78                	cmp    $0x78,%al
  100eaa:	75 1b                	jne    100ec7 <Log+0xd7>
  100eac:	89 f0                	mov    %esi,%eax
  100eae:	83 c6 04             	add    $0x4,%esi
  100eb1:	8b 00                	mov    (%eax),%eax
  100eb3:	85 c0                	test   %eax,%eax
  100eb5:	74 21                	je     100ed8 <Log+0xe8>
  100eb7:	e8 e4 fe ff ff       	call   100da0 <addHex2Buff.part.1>
  100ebc:	8a 43 02             	mov    0x2(%ebx),%al
  100ebf:	83 c3 02             	add    $0x2,%ebx
  100ec2:	e9 3a ff ff ff       	jmp    100e01 <Log+0x11>
  100ec7:	43                   	inc    %ebx
  100ec8:	e9 34 ff ff ff       	jmp    100e01 <Log+0x11>
  100ecd:	89 f0                	mov    %esi,%eax
  100ecf:	83 c6 04             	add    $0x4,%esi
  100ed2:	8b 00                	mov    (%eax),%eax
  100ed4:	85 c0                	test   %eax,%eax
  100ed6:	75 6e                	jne    100f46 <Log+0x156>
  100ed8:	a1 08 22 10 00       	mov    0x102208,%eax
  100edd:	8d 50 01             	lea    0x1(%eax),%edx
  100ee0:	89 15 08 22 10 00    	mov    %edx,0x102208
  100ee6:	c6 80 40 21 10 00 30 	movb   $0x30,0x102140(%eax)
  100eed:	eb cd                	jmp    100ebc <Log+0xcc>
  100eef:	8d 4e 04             	lea    0x4(%esi),%ecx
  100ef2:	8b 36                	mov    (%esi),%esi
  100ef4:	8a 16                	mov    (%esi),%dl
  100ef6:	84 d2                	test   %dl,%dl
  100ef8:	74 25                	je     100f1f <Log+0x12f>
  100efa:	8b 3d 08 22 10 00    	mov    0x102208,%edi
  100f00:	8d 47 01             	lea    0x1(%edi),%eax
  100f03:	29 fe                	sub    %edi,%esi
  100f05:	8d 76 00             	lea    0x0(%esi),%esi
  100f08:	89 c7                	mov    %eax,%edi
  100f0a:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100f10:	40                   	inc    %eax
  100f11:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  100f15:	84 d2                	test   %dl,%dl
  100f17:	75 ef                	jne    100f08 <Log+0x118>
  100f19:	89 3d 08 22 10 00    	mov    %edi,0x102208
  100f1f:	8a 43 02             	mov    0x2(%ebx),%al
  100f22:	89 ce                	mov    %ecx,%esi
  100f24:	83 c3 02             	add    $0x2,%ebx
  100f27:	e9 d5 fe ff ff       	jmp    100e01 <Log+0x11>
  100f2c:	a1 08 22 10 00       	mov    0x102208,%eax
  100f31:	8d 50 01             	lea    0x1(%eax),%edx
  100f34:	89 15 08 22 10 00    	mov    %edx,0x102208
  100f3a:	c6 80 40 21 10 00 25 	movb   $0x25,0x102140(%eax)
  100f41:	e9 76 ff ff ff       	jmp    100ebc <Log+0xcc>
  100f46:	83 ec 0c             	sub    $0xc,%esp
  100f49:	50                   	push   %eax
  100f4a:	e8 99 fd ff ff       	call   100ce8 <addDec2Buff>
  100f4f:	83 c4 10             	add    $0x10,%esp
  100f52:	e9 65 ff ff ff       	jmp    100ebc <Log+0xcc>
  100f57:	90                   	nop

00100f58 <abort>:
  100f58:	55                   	push   %ebp
  100f59:	89 e5                	mov    %esp,%ebp
  100f5b:	57                   	push   %edi
  100f5c:	56                   	push   %esi
  100f5d:	53                   	push   %ebx
  100f5e:	83 ec 1c             	sub    $0x1c,%esp
  100f61:	8b 55 08             	mov    0x8(%ebp),%edx
  100f64:	fa                   	cli    
  100f65:	8a 02                	mov    (%edx),%al
  100f67:	b9 32 20 10 00       	mov    $0x102032,%ecx
  100f6c:	84 c0                	test   %al,%al
  100f6e:	74 0b                	je     100f7b <abort+0x23>
  100f70:	41                   	inc    %ecx
  100f71:	42                   	inc    %edx
  100f72:	88 41 ff             	mov    %al,-0x1(%ecx)
  100f75:	8a 02                	mov    (%edx),%al
  100f77:	84 c0                	test   %al,%al
  100f79:	75 f5                	jne    100f70 <abort+0x18>
  100f7b:	c6 01 3a             	movb   $0x3a,(%ecx)
  100f7e:	bb 29 22 10 00       	mov    $0x102229,%ebx
  100f83:	be 0a 00 00 00       	mov    $0xa,%esi
  100f88:	bf 67 66 66 66       	mov    $0x66666667,%edi
  100f8d:	4b                   	dec    %ebx
  100f8e:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f91:	99                   	cltd   
  100f92:	f7 fe                	idiv   %esi
  100f94:	8d 42 30             	lea    0x30(%edx),%eax
  100f97:	88 45 e7             	mov    %al,-0x19(%ebp)
  100f9a:	88 03                	mov    %al,(%ebx)
  100f9c:	89 f8                	mov    %edi,%eax
  100f9e:	f7 6d 0c             	imull  0xc(%ebp)
  100fa1:	c1 fa 02             	sar    $0x2,%edx
  100fa4:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fa7:	c1 f8 1f             	sar    $0x1f,%eax
  100faa:	29 c2                	sub    %eax,%edx
  100fac:	89 55 0c             	mov    %edx,0xc(%ebp)
  100faf:	75 dc                	jne    100f8d <abort+0x35>
  100fb1:	41                   	inc    %ecx
  100fb2:	41                   	inc    %ecx
  100fb3:	43                   	inc    %ebx
  100fb4:	8a 45 e7             	mov    -0x19(%ebp),%al
  100fb7:	88 41 ff             	mov    %al,-0x1(%ecx)
  100fba:	8a 03                	mov    (%ebx),%al
  100fbc:	88 45 e7             	mov    %al,-0x19(%ebp)
  100fbf:	84 c0                	test   %al,%al
  100fc1:	75 ef                	jne    100fb2 <abort+0x5a>
  100fc3:	c6 01 0a             	movb   $0xa,(%ecx)
  100fc6:	0f be 05 20 20 10 00 	movsbl 0x102020,%eax
  100fcd:	84 c0                	test   %al,%al
  100fcf:	74 1b                	je     100fec <abort+0x94>
  100fd1:	bb 20 20 10 00       	mov    $0x102020,%ebx
  100fd6:	83 ec 0c             	sub    $0xc,%esp
  100fd9:	50                   	push   %eax
  100fda:	e8 49 f7 ff ff       	call   100728 <putChar>
  100fdf:	43                   	inc    %ebx
  100fe0:	0f be 03             	movsbl (%ebx),%eax
  100fe3:	83 c4 10             	add    $0x10,%esp
  100fe6:	84 c0                	test   %al,%al
  100fe8:	75 ec                	jne    100fd6 <abort+0x7e>
  100fea:	66 90                	xchg   %ax,%ax
  100fec:	f4                   	hlt    
  100fed:	eb fd                	jmp    100fec <abort+0x94>
  100fef:	90                   	nop

00100ff0 <kEntry>:
  100ff0:	55                   	push   %ebp
  100ff1:	89 e5                	mov    %esp,%ebp
  100ff3:	83 ec 08             	sub    $0x8,%esp
  100ff6:	e8 ed f6 ff ff       	call   1006e8 <initSerial>
  100ffb:	e8 58 f0 ff ff       	call   100058 <initTimer>
  101000:	e8 ab f3 ff ff       	call   1003b0 <initIdt>
  101005:	e8 f6 ef ff ff       	call   100000 <initIntr>
  10100a:	e8 ad f9 ff ff       	call   1009bc <initSeg>
  10100f:	e8 30 f7 ff ff       	call   100744 <initProcess>
  101014:	f4                   	hlt    
  101015:	eb fd                	jmp    101014 <kEntry+0x24>

00101017 <no0>:
  101017:	6a 00                	push   $0x0
  101019:	6a 00                	push   $0x0
  10101b:	eb 64                	jmp    101081 <asmDoIrq>

0010101d <no1>:
  10101d:	6a 00                	push   $0x0
  10101f:	6a 01                	push   $0x1
  101021:	eb 5e                	jmp    101081 <asmDoIrq>

00101023 <no2>:
  101023:	6a 00                	push   $0x0
  101025:	6a 02                	push   $0x2
  101027:	eb 58                	jmp    101081 <asmDoIrq>

00101029 <no3>:
  101029:	6a 00                	push   $0x0
  10102b:	6a 03                	push   $0x3
  10102d:	eb 52                	jmp    101081 <asmDoIrq>

0010102f <no4>:
  10102f:	6a 00                	push   $0x0
  101031:	6a 04                	push   $0x4
  101033:	eb 4c                	jmp    101081 <asmDoIrq>

00101035 <no5>:
  101035:	6a 00                	push   $0x0
  101037:	6a 05                	push   $0x5
  101039:	eb 46                	jmp    101081 <asmDoIrq>

0010103b <no6>:
  10103b:	6a 00                	push   $0x0
  10103d:	6a 06                	push   $0x6
  10103f:	eb 40                	jmp    101081 <asmDoIrq>

00101041 <no7>:
  101041:	6a 00                	push   $0x0
  101043:	6a 07                	push   $0x7
  101045:	eb 3a                	jmp    101081 <asmDoIrq>

00101047 <no8>:
  101047:	6a 08                	push   $0x8
  101049:	eb 36                	jmp    101081 <asmDoIrq>

0010104b <no9>:
  10104b:	6a 00                	push   $0x0
  10104d:	6a 09                	push   $0x9
  10104f:	eb 30                	jmp    101081 <asmDoIrq>

00101051 <no10>:
  101051:	6a 0a                	push   $0xa
  101053:	eb 2c                	jmp    101081 <asmDoIrq>

00101055 <no11>:
  101055:	6a 0b                	push   $0xb
  101057:	eb 28                	jmp    101081 <asmDoIrq>

00101059 <no12>:
  101059:	6a 0c                	push   $0xc
  10105b:	eb 24                	jmp    101081 <asmDoIrq>

0010105d <no13>:
  10105d:	6a 0d                	push   $0xd
  10105f:	eb 20                	jmp    101081 <asmDoIrq>

00101061 <no14>:
  101061:	6a 0e                	push   $0xe
  101063:	eb 1c                	jmp    101081 <asmDoIrq>

00101065 <intr0>:
  101065:	6a 00                	push   $0x0
  101067:	68 e8 03 00 00       	push   $0x3e8
  10106c:	eb 13                	jmp    101081 <asmDoIrq>

0010106e <irqEmpty>:
  10106e:	6a 00                	push   $0x0
  101070:	6a ff                	push   $0xffffffff
  101072:	eb 0d                	jmp    101081 <asmDoIrq>

00101074 <irqGProtectFault>:
  101074:	6a 0d                	push   $0xd
  101076:	eb 09                	jmp    101081 <asmDoIrq>

00101078 <irqSyscall>:
  101078:	6a 00                	push   $0x0
  10107a:	68 80 00 00 00       	push   $0x80
  10107f:	eb 00                	jmp    101081 <asmDoIrq>

00101081 <asmDoIrq>:
  101081:	fa                   	cli    
  101082:	1e                   	push   %ds
  101083:	06                   	push   %es
  101084:	0f a0                	push   %fs
  101086:	0f a8                	push   %gs
  101088:	60                   	pusha  
  101089:	54                   	push   %esp
  10108a:	e8 35 f2 ff ff       	call   1002c4 <irqHandle>
  10108f:	a1 2c 22 10 00       	mov    0x10222c,%eax
  101094:	89 c4                	mov    %eax,%esp
  101096:	83 c4 04             	add    $0x4,%esp
  101099:	61                   	popa   
  10109a:	0f a9                	pop    %gs
  10109c:	0f a1                	pop    %fs
  10109e:	07                   	pop    %es
  10109f:	1f                   	pop    %ds
  1010a0:	83 c4 04             	add    $0x4,%esp
  1010a3:	83 c4 04             	add    $0x4,%esp
  1010a6:	fb                   	sti    
  1010a7:	cf                   	iret   
