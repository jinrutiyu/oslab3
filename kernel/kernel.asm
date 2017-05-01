
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
  100109:	68 c0 10 10 00       	push   $0x1010c0
  10010e:	e8 49 0e 00 00       	call   100f5c <abort>
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
  100199:	e8 82 05 00 00       	call   100720 <putChar>
  10019e:	83 c4 10             	add    $0x10,%esp
  1001a1:	e9 70 ff ff ff       	jmp    100116 <timerHandle+0x3e>
  1001a6:	66 90                	xchg   %ax,%ax
  1001a8:	83 ec 0c             	sub    $0xc,%esp
  1001ab:	6a 2e                	push   $0x2e
  1001ad:	e8 6e 05 00 00       	call   100720 <putChar>
  1001b2:	83 c4 10             	add    $0x10,%esp
  1001b5:	e9 5c ff ff ff       	jmp    100116 <timerHandle+0x3e>
  1001ba:	66 90                	xchg   %ax,%ax
  1001bc:	83 ec 0c             	sub    $0xc,%esp
  1001bf:	6a 31                	push   $0x31
  1001c1:	e8 5a 05 00 00       	call   100720 <putChar>
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
  1001f0:	68 c0 10 10 00       	push   $0x1010c0
  1001f5:	e8 62 0d 00 00       	call   100f5c <abort>
  1001fa:	83 c4 10             	add    $0x10,%esp
  1001fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100200:	5b                   	pop    %ebx
  100201:	5e                   	pop    %esi
  100202:	5f                   	pop    %edi
  100203:	5d                   	pop    %ebp
  100204:	c3                   	ret    
  100205:	8d 76 00             	lea    0x0(%esi),%esi
  100208:	8b 15 b0 3a 10 00    	mov    0x103ab0,%edx
  10020e:	0f b6 9a 6f 10 00 00 	movzbl 0x106f(%edx),%ebx
  100215:	c1 e3 18             	shl    $0x18,%ebx
  100218:	0f b6 82 6c 10 00 00 	movzbl 0x106c(%edx),%eax
  10021f:	c1 e0 10             	shl    $0x10,%eax
  100222:	09 c3                	or     %eax,%ebx
  100224:	0f b7 82 6a 10 00 00 	movzwl 0x106a(%edx),%eax
  10022b:	09 c3                	or     %eax,%ebx
  10022d:	8b 45 08             	mov    0x8(%ebp),%eax
  100230:	03 58 18             	add    0x18(%eax),%ebx
  100233:	8b 40 14             	mov    0x14(%eax),%eax
  100236:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100239:	85 c0                	test   %eax,%eax
  10023b:	74 38                	je     100275 <do_sys_write+0xa5>
  10023d:	8a 03                	mov    (%ebx),%al
  10023f:	84 c0                	test   %al,%al
  100241:	74 53                	je     100296 <do_sys_write+0xc6>
  100243:	bf 01 00 00 00       	mov    $0x1,%edi
  100248:	eb 0f                	jmp    100259 <do_sys_write+0x89>
  10024a:	66 90                	xchg   %ax,%ax
  10024c:	8d 4f 01             	lea    0x1(%edi),%ecx
  10024f:	8a 44 19 ff          	mov    -0x1(%ecx,%ebx,1),%al
  100253:	84 c0                	test   %al,%al
  100255:	74 31                	je     100288 <do_sys_write+0xb8>
  100257:	89 cf                	mov    %ecx,%edi
  100259:	0f be f0             	movsbl %al,%esi
  10025c:	83 ec 0c             	sub    $0xc,%esp
  10025f:	56                   	push   %esi
  100260:	e8 bb 04 00 00       	call   100720 <putChar>
  100265:	89 34 24             	mov    %esi,(%esp)
  100268:	e8 03 fe ff ff       	call   100070 <showCharInScreen>
  10026d:	83 c4 10             	add    $0x10,%esp
  100270:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  100273:	75 d7                	jne    10024c <do_sys_write+0x7c>
  100275:	8b 45 08             	mov    0x8(%ebp),%eax
  100278:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10027b:	89 50 1c             	mov    %edx,0x1c(%eax)
  10027e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100281:	5b                   	pop    %ebx
  100282:	5e                   	pop    %esi
  100283:	5f                   	pop    %edi
  100284:	5d                   	pop    %ebp
  100285:	c3                   	ret    
  100286:	66 90                	xchg   %ax,%ax
  100288:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  10028b:	8b 45 08             	mov    0x8(%ebp),%eax
  10028e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100291:	89 50 1c             	mov    %edx,0x1c(%eax)
  100294:	eb e8                	jmp    10027e <do_sys_write+0xae>
  100296:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  10029d:	eb d6                	jmp    100275 <do_sys_write+0xa5>
  10029f:	90                   	nop

001002a0 <syscallHandle>:
  1002a0:	55                   	push   %ebp
  1002a1:	89 e5                	mov    %esp,%ebp
  1002a3:	83 ec 08             	sub    $0x8,%esp
  1002a6:	8b 55 08             	mov    0x8(%ebp),%edx
  1002a9:	8b 42 1c             	mov    0x1c(%edx),%eax
  1002ac:	83 f8 04             	cmp    $0x4,%eax
  1002af:	74 2b                	je     1002dc <syscallHandle+0x3c>
  1002b1:	77 1d                	ja     1002d0 <syscallHandle+0x30>
  1002b3:	48                   	dec    %eax
  1002b4:	83 f8 01             	cmp    $0x1,%eax
  1002b7:	76 15                	jbe    1002ce <syscallHandle+0x2e>
  1002b9:	83 ec 08             	sub    $0x8,%esp
  1002bc:	68 9d 00 00 00       	push   $0x9d
  1002c1:	68 c0 10 10 00       	push   $0x1010c0
  1002c6:	e8 91 0c 00 00       	call   100f5c <abort>
  1002cb:	83 c4 10             	add    $0x10,%esp
  1002ce:	c9                   	leave  
  1002cf:	c3                   	ret    
  1002d0:	3d a2 00 00 00       	cmp    $0xa2,%eax
  1002d5:	75 e2                	jne    1002b9 <syscallHandle+0x19>
  1002d7:	c9                   	leave  
  1002d8:	c3                   	ret    
  1002d9:	8d 76 00             	lea    0x0(%esi),%esi
  1002dc:	89 55 08             	mov    %edx,0x8(%ebp)
  1002df:	c9                   	leave  
  1002e0:	e9 eb fe ff ff       	jmp    1001d0 <do_sys_write>
  1002e5:	8d 76 00             	lea    0x0(%esi),%esi

001002e8 <irqHandle>:
  1002e8:	55                   	push   %ebp
  1002e9:	89 e5                	mov    %esp,%ebp
  1002eb:	83 ec 08             	sub    $0x8,%esp
  1002ee:	8b 55 08             	mov    0x8(%ebp),%edx
  1002f1:	b8 10 00 00 00       	mov    $0x10,%eax
  1002f6:	8e c0                	mov    %eax,%es
  1002f8:	8e d8                	mov    %eax,%ds
  1002fa:	8e e0                	mov    %eax,%fs
  1002fc:	8e e8                	mov    %eax,%gs
  1002fe:	8b 42 30             	mov    0x30(%edx),%eax
  100301:	83 f8 0d             	cmp    $0xd,%eax
  100304:	74 62                	je     100368 <irqHandle+0x80>
  100306:	7e 38                	jle    100340 <irqHandle+0x58>
  100308:	3d 80 00 00 00       	cmp    $0x80,%eax
  10030d:	74 25                	je     100334 <irqHandle+0x4c>
  10030f:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  100314:	75 2f                	jne    100345 <irqHandle+0x5d>
  100316:	e8 bd fd ff ff       	call   1000d8 <timerHandle>
  10031b:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  100320:	3d 40 2a 10 00       	cmp    $0x102a40,%eax
  100325:	74 59                	je     100380 <irqHandle+0x98>
  100327:	05 00 10 00 00       	add    $0x1000,%eax
  10032c:	a3 2c 22 10 00       	mov    %eax,0x10222c
  100331:	c9                   	leave  
  100332:	c3                   	ret    
  100333:	90                   	nop
  100334:	89 55 08             	mov    %edx,0x8(%ebp)
  100337:	c9                   	leave  
  100338:	e9 63 ff ff ff       	jmp    1002a0 <syscallHandle>
  10033d:	8d 76 00             	lea    0x0(%esi),%esi
  100340:	83 f8 ff             	cmp    $0xffffffff,%eax
  100343:	74 ec                	je     100331 <irqHandle+0x49>
  100345:	83 ec 08             	sub    $0x8,%esp
  100348:	50                   	push   %eax
  100349:	68 d3 10 10 00       	push   $0x1010d3
  10034e:	e8 a1 0a 00 00       	call   100df4 <Log>
  100353:	58                   	pop    %eax
  100354:	5a                   	pop    %edx
  100355:	6a 73                	push   $0x73
  100357:	68 c0 10 10 00       	push   $0x1010c0
  10035c:	e8 fb 0b 00 00       	call   100f5c <abort>
  100361:	83 c4 10             	add    $0x10,%esp
  100364:	c9                   	leave  
  100365:	c3                   	ret    
  100366:	66 90                	xchg   %ax,%ax
  100368:	83 ec 08             	sub    $0x8,%esp
  10036b:	68 a2 00 00 00       	push   $0xa2
  100370:	68 c0 10 10 00       	push   $0x1010c0
  100375:	e8 e2 0b 00 00       	call   100f5c <abort>
  10037a:	83 c4 10             	add    $0x10,%esp
  10037d:	c9                   	leave  
  10037e:	c3                   	ret    
  10037f:	90                   	nop
  100380:	c7 05 2c 22 10 00 00 	movl   $0x0,0x10222c
  100387:	00 00 00 
  10038a:	c9                   	leave  
  10038b:	c3                   	ret    

0010038c <GProtectFaultHandle>:
  10038c:	55                   	push   %ebp
  10038d:	89 e5                	mov    %esp,%ebp
  10038f:	83 ec 10             	sub    $0x10,%esp
  100392:	68 a2 00 00 00       	push   $0xa2
  100397:	68 c0 10 10 00       	push   $0x1010c0
  10039c:	e8 bb 0b 00 00       	call   100f5c <abort>
  1003a1:	83 c4 10             	add    $0x10,%esp
  1003a4:	c9                   	leave  
  1003a5:	c3                   	ret    
  1003a6:	66 90                	xchg   %ax,%ax

001003a8 <initIdt>:
  1003a8:	55                   	push   %ebp
  1003a9:	89 e5                	mov    %esp,%ebp
  1003ab:	53                   	push   %ebx
  1003ac:	ba 82 10 10 00       	mov    $0x101082,%edx
  1003b1:	89 d3                	mov    %edx,%ebx
  1003b3:	c1 ea 10             	shr    $0x10,%edx
  1003b6:	b9 40 2a 10 00       	mov    $0x102a40,%ecx
  1003bb:	b8 40 22 10 00       	mov    $0x102240,%eax
  1003c0:	66 89 18             	mov    %bx,(%eax)
  1003c3:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  1003c9:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1003cd:	c6 40 05 8f          	movb   $0x8f,0x5(%eax)
  1003d1:	66 89 50 06          	mov    %dx,0x6(%eax)
  1003d5:	83 c0 08             	add    $0x8,%eax
  1003d8:	39 c1                	cmp    %eax,%ecx
  1003da:	75 e4                	jne    1003c0 <initIdt+0x18>
  1003dc:	b8 2b 10 10 00       	mov    $0x10102b,%eax
  1003e1:	66 a3 40 22 10 00    	mov    %ax,0x102240
  1003e7:	66 c7 05 42 22 10 00 	movw   $0x8,0x102242
  1003ee:	08 00 
  1003f0:	c6 05 44 22 10 00 00 	movb   $0x0,0x102244
  1003f7:	c6 05 45 22 10 00 8f 	movb   $0x8f,0x102245
  1003fe:	c1 e8 10             	shr    $0x10,%eax
  100401:	66 a3 46 22 10 00    	mov    %ax,0x102246
  100407:	b8 31 10 10 00       	mov    $0x101031,%eax
  10040c:	66 a3 48 22 10 00    	mov    %ax,0x102248
  100412:	66 c7 05 4a 22 10 00 	movw   $0x8,0x10224a
  100419:	08 00 
  10041b:	c6 05 4c 22 10 00 00 	movb   $0x0,0x10224c
  100422:	c6 05 4d 22 10 00 8f 	movb   $0x8f,0x10224d
  100429:	c1 e8 10             	shr    $0x10,%eax
  10042c:	66 a3 4e 22 10 00    	mov    %ax,0x10224e
  100432:	b8 37 10 10 00       	mov    $0x101037,%eax
  100437:	66 a3 50 22 10 00    	mov    %ax,0x102250
  10043d:	66 c7 05 52 22 10 00 	movw   $0x8,0x102252
  100444:	08 00 
  100446:	c6 05 54 22 10 00 00 	movb   $0x0,0x102254
  10044d:	c6 05 55 22 10 00 8f 	movb   $0x8f,0x102255
  100454:	c1 e8 10             	shr    $0x10,%eax
  100457:	66 a3 56 22 10 00    	mov    %ax,0x102256
  10045d:	b8 3d 10 10 00       	mov    $0x10103d,%eax
  100462:	66 a3 58 22 10 00    	mov    %ax,0x102258
  100468:	66 c7 05 5a 22 10 00 	movw   $0x8,0x10225a
  10046f:	08 00 
  100471:	c6 05 5c 22 10 00 00 	movb   $0x0,0x10225c
  100478:	c6 05 5d 22 10 00 8f 	movb   $0x8f,0x10225d
  10047f:	c1 e8 10             	shr    $0x10,%eax
  100482:	66 a3 5e 22 10 00    	mov    %ax,0x10225e
  100488:	b8 43 10 10 00       	mov    $0x101043,%eax
  10048d:	66 a3 60 22 10 00    	mov    %ax,0x102260
  100493:	66 c7 05 62 22 10 00 	movw   $0x8,0x102262
  10049a:	08 00 
  10049c:	c6 05 64 22 10 00 00 	movb   $0x0,0x102264
  1004a3:	c6 05 65 22 10 00 8f 	movb   $0x8f,0x102265
  1004aa:	c1 e8 10             	shr    $0x10,%eax
  1004ad:	66 a3 66 22 10 00    	mov    %ax,0x102266
  1004b3:	b8 49 10 10 00       	mov    $0x101049,%eax
  1004b8:	66 a3 68 22 10 00    	mov    %ax,0x102268
  1004be:	66 c7 05 6a 22 10 00 	movw   $0x8,0x10226a
  1004c5:	08 00 
  1004c7:	c6 05 6c 22 10 00 00 	movb   $0x0,0x10226c
  1004ce:	c6 05 6d 22 10 00 8f 	movb   $0x8f,0x10226d
  1004d5:	c1 e8 10             	shr    $0x10,%eax
  1004d8:	66 a3 6e 22 10 00    	mov    %ax,0x10226e
  1004de:	b8 4f 10 10 00       	mov    $0x10104f,%eax
  1004e3:	66 a3 70 22 10 00    	mov    %ax,0x102270
  1004e9:	66 c7 05 72 22 10 00 	movw   $0x8,0x102272
  1004f0:	08 00 
  1004f2:	c6 05 74 22 10 00 00 	movb   $0x0,0x102274
  1004f9:	c6 05 75 22 10 00 8f 	movb   $0x8f,0x102275
  100500:	c1 e8 10             	shr    $0x10,%eax
  100503:	66 a3 76 22 10 00    	mov    %ax,0x102276
  100509:	b8 55 10 10 00       	mov    $0x101055,%eax
  10050e:	66 a3 78 22 10 00    	mov    %ax,0x102278
  100514:	66 c7 05 7a 22 10 00 	movw   $0x8,0x10227a
  10051b:	08 00 
  10051d:	c6 05 7c 22 10 00 00 	movb   $0x0,0x10227c
  100524:	c6 05 7d 22 10 00 8f 	movb   $0x8f,0x10227d
  10052b:	c1 e8 10             	shr    $0x10,%eax
  10052e:	66 a3 7e 22 10 00    	mov    %ax,0x10227e
  100534:	b8 5b 10 10 00       	mov    $0x10105b,%eax
  100539:	66 a3 80 22 10 00    	mov    %ax,0x102280
  10053f:	66 c7 05 82 22 10 00 	movw   $0x8,0x102282
  100546:	08 00 
  100548:	c6 05 84 22 10 00 00 	movb   $0x0,0x102284
  10054f:	c6 05 85 22 10 00 8f 	movb   $0x8f,0x102285
  100556:	c1 e8 10             	shr    $0x10,%eax
  100559:	66 a3 86 22 10 00    	mov    %ax,0x102286
  10055f:	b8 5f 10 10 00       	mov    $0x10105f,%eax
  100564:	66 a3 88 22 10 00    	mov    %ax,0x102288
  10056a:	66 c7 05 8a 22 10 00 	movw   $0x8,0x10228a
  100571:	08 00 
  100573:	c6 05 8c 22 10 00 00 	movb   $0x0,0x10228c
  10057a:	c6 05 8d 22 10 00 8f 	movb   $0x8f,0x10228d
  100581:	c1 e8 10             	shr    $0x10,%eax
  100584:	66 a3 8e 22 10 00    	mov    %ax,0x10228e
  10058a:	b8 65 10 10 00       	mov    $0x101065,%eax
  10058f:	66 a3 90 22 10 00    	mov    %ax,0x102290
  100595:	66 c7 05 92 22 10 00 	movw   $0x8,0x102292
  10059c:	08 00 
  10059e:	c6 05 94 22 10 00 00 	movb   $0x0,0x102294
  1005a5:	c6 05 95 22 10 00 8f 	movb   $0x8f,0x102295
  1005ac:	c1 e8 10             	shr    $0x10,%eax
  1005af:	66 a3 96 22 10 00    	mov    %ax,0x102296
  1005b5:	b8 69 10 10 00       	mov    $0x101069,%eax
  1005ba:	66 a3 98 22 10 00    	mov    %ax,0x102298
  1005c0:	66 c7 05 9a 22 10 00 	movw   $0x8,0x10229a
  1005c7:	08 00 
  1005c9:	c6 05 9c 22 10 00 00 	movb   $0x0,0x10229c
  1005d0:	c6 05 9d 22 10 00 8f 	movb   $0x8f,0x10229d
  1005d7:	c1 e8 10             	shr    $0x10,%eax
  1005da:	66 a3 9e 22 10 00    	mov    %ax,0x10229e
  1005e0:	b8 6d 10 10 00       	mov    $0x10106d,%eax
  1005e5:	66 a3 a0 22 10 00    	mov    %ax,0x1022a0
  1005eb:	66 c7 05 a2 22 10 00 	movw   $0x8,0x1022a2
  1005f2:	08 00 
  1005f4:	c6 05 a4 22 10 00 00 	movb   $0x0,0x1022a4
  1005fb:	c6 05 a5 22 10 00 8f 	movb   $0x8f,0x1022a5
  100602:	c1 e8 10             	shr    $0x10,%eax
  100605:	66 a3 a6 22 10 00    	mov    %ax,0x1022a6
  10060b:	66 c7 05 aa 22 10 00 	movw   $0x8,0x1022aa
  100612:	08 00 
  100614:	c6 05 ac 22 10 00 00 	movb   $0x0,0x1022ac
  10061b:	c6 05 ad 22 10 00 8f 	movb   $0x8f,0x1022ad
  100622:	b8 75 10 10 00       	mov    $0x101075,%eax
  100627:	66 a3 b0 22 10 00    	mov    %ax,0x1022b0
  10062d:	66 c7 05 b2 22 10 00 	movw   $0x8,0x1022b2
  100634:	08 00 
  100636:	c6 05 b4 22 10 00 00 	movb   $0x0,0x1022b4
  10063d:	c6 05 b5 22 10 00 8f 	movb   $0x8f,0x1022b5
  100644:	c1 e8 10             	shr    $0x10,%eax
  100647:	66 a3 b6 22 10 00    	mov    %ax,0x1022b6
  10064d:	b8 88 10 10 00       	mov    $0x101088,%eax
  100652:	66 a3 a8 22 10 00    	mov    %ax,0x1022a8
  100658:	c1 e8 10             	shr    $0x10,%eax
  10065b:	66 a3 ae 22 10 00    	mov    %ax,0x1022ae
  100661:	b8 8c 10 10 00       	mov    $0x10108c,%eax
  100666:	66 a3 40 26 10 00    	mov    %ax,0x102640
  10066c:	66 c7 05 42 26 10 00 	movw   $0x8,0x102642
  100673:	08 00 
  100675:	c6 05 44 26 10 00 00 	movb   $0x0,0x102644
  10067c:	c6 05 45 26 10 00 ef 	movb   $0xef,0x102645
  100683:	c1 e8 10             	shr    $0x10,%eax
  100686:	66 a3 46 26 10 00    	mov    %ax,0x102646
  10068c:	b8 79 10 10 00       	mov    $0x101079,%eax
  100691:	66 a3 40 23 10 00    	mov    %ax,0x102340
  100697:	66 c7 05 42 23 10 00 	movw   $0x8,0x102342
  10069e:	08 00 
  1006a0:	c6 05 44 23 10 00 00 	movb   $0x0,0x102344
  1006a7:	c6 05 45 23 10 00 8e 	movb   $0x8e,0x102345
  1006ae:	c1 e8 10             	shr    $0x10,%eax
  1006b1:	66 a3 46 23 10 00    	mov    %ax,0x102346
  1006b7:	66 c7 05 24 21 10 00 	movw   $0x7ff,0x102124
  1006be:	ff 07 
  1006c0:	b8 40 22 10 00       	mov    $0x102240,%eax
  1006c5:	66 a3 26 21 10 00    	mov    %ax,0x102126
  1006cb:	c1 e8 10             	shr    $0x10,%eax
  1006ce:	66 a3 28 21 10 00    	mov    %ax,0x102128
  1006d4:	b8 24 21 10 00       	mov    $0x102124,%eax
  1006d9:	0f 01 18             	lidtl  (%eax)
  1006dc:	5b                   	pop    %ebx
  1006dd:	5d                   	pop    %ebp
  1006de:	c3                   	ret    
  1006df:	90                   	nop

001006e0 <initSerial>:
  1006e0:	55                   	push   %ebp
  1006e1:	89 e5                	mov    %esp,%ebp
  1006e3:	ba f9 03 00 00       	mov    $0x3f9,%edx
  1006e8:	31 c0                	xor    %eax,%eax
  1006ea:	ee                   	out    %al,(%dx)
  1006eb:	ba fb 03 00 00       	mov    $0x3fb,%edx
  1006f0:	b0 80                	mov    $0x80,%al
  1006f2:	ee                   	out    %al,(%dx)
  1006f3:	ba f8 03 00 00       	mov    $0x3f8,%edx
  1006f8:	b0 01                	mov    $0x1,%al
  1006fa:	ee                   	out    %al,(%dx)
  1006fb:	ba f9 03 00 00       	mov    $0x3f9,%edx
  100700:	31 c0                	xor    %eax,%eax
  100702:	ee                   	out    %al,(%dx)
  100703:	ba fb 03 00 00       	mov    $0x3fb,%edx
  100708:	b0 03                	mov    $0x3,%al
  10070a:	ee                   	out    %al,(%dx)
  10070b:	ba fa 03 00 00       	mov    $0x3fa,%edx
  100710:	b0 c7                	mov    $0xc7,%al
  100712:	ee                   	out    %al,(%dx)
  100713:	ba fc 03 00 00       	mov    $0x3fc,%edx
  100718:	b0 0b                	mov    $0xb,%al
  10071a:	ee                   	out    %al,(%dx)
  10071b:	5d                   	pop    %ebp
  10071c:	c3                   	ret    
  10071d:	8d 76 00             	lea    0x0(%esi),%esi

00100720 <putChar>:
  100720:	55                   	push   %ebp
  100721:	89 e5                	mov    %esp,%ebp
  100723:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100726:	ba fd 03 00 00       	mov    $0x3fd,%edx
  10072b:	90                   	nop
  10072c:	ec                   	in     (%dx),%al
  10072d:	a8 20                	test   $0x20,%al
  10072f:	74 fb                	je     10072c <putChar+0xc>
  100731:	ba f8 03 00 00       	mov    $0x3f8,%edx
  100736:	88 c8                	mov    %cl,%al
  100738:	ee                   	out    %al,(%dx)
  100739:	5d                   	pop    %ebp
  10073a:	c3                   	ret    
  10073b:	90                   	nop

0010073c <initProcess>:
  10073c:	55                   	push   %ebp
  10073d:	89 e5                	mov    %esp,%ebp
  10073f:	57                   	push   %edi
  100740:	56                   	push   %esi
  100741:	53                   	push   %ebx
  100742:	83 ec 0c             	sub    $0xc,%esp
  100745:	c7 05 90 3a 10 00 00 	movl   $0x0,0x103a90
  10074c:	00 00 00 
  10074f:	c7 05 94 3a 10 00 05 	movl   $0x5,0x103a94
  100756:	00 00 00 
  100759:	b9 c0 3a 10 00       	mov    $0x103ac0,%ecx
  10075e:	31 ff                	xor    %edi,%edi
  100760:	c7 81 50 10 00 00 03 	movl   $0x3,0x1050(%ecx)
  100767:	00 00 00 
  10076a:	c7 81 24 10 00 00 23 	movl   $0x23,0x1024(%ecx)
  100771:	00 00 00 
  100774:	c7 81 28 10 00 00 23 	movl   $0x23,0x1028(%ecx)
  10077b:	00 00 00 
  10077e:	c7 81 2c 10 00 00 23 	movl   $0x23,0x102c(%ecx)
  100785:	00 00 00 
  100788:	c7 81 30 10 00 00 23 	movl   $0x23,0x1030(%ecx)
  10078f:	00 00 00 
  100792:	c7 81 40 10 00 00 1b 	movl   $0x1b,0x1040(%ecx)
  100799:	00 00 00 
  10079c:	c7 81 44 10 00 00 02 	movl   $0x202,0x1044(%ecx)
  1007a3:	02 00 00 
  1007a6:	c7 81 48 10 00 00 00 	movl   $0x200000,0x1048(%ecx)
  1007ad:	00 20 00 
  1007b0:	c7 81 4c 10 00 00 23 	movl   $0x23,0x104c(%ecx)
  1007b7:	00 00 00 
  1007ba:	8d 77 01             	lea    0x1(%edi),%esi
  1007bd:	89 b1 5c 10 00 00    	mov    %esi,0x105c(%ecx)
  1007c3:	89 fb                	mov    %edi,%ebx
  1007c5:	c1 e3 14             	shl    $0x14,%ebx
  1007c8:	81 c3 00 00 30 00    	add    $0x300000,%ebx
  1007ce:	c1 eb 10             	shr    $0x10,%ebx
  1007d1:	89 fa                	mov    %edi,%edx
  1007d3:	c1 e2 06             	shl    $0x6,%edx
  1007d6:	01 fa                	add    %edi,%edx
  1007d8:	01 d2                	add    %edx,%edx
  1007da:	01 fa                	add    %edi,%edx
  1007dc:	8d 04 12             	lea    (%edx,%edx,1),%eax
  1007df:	01 f8                	add    %edi,%eax
  1007e1:	c1 e0 04             	shl    $0x4,%eax
  1007e4:	8d 90 c0 3a 10 00    	lea    0x103ac0(%eax),%edx
  1007ea:	66 c7 80 20 4b 10 00 	movw   $0xffff,0x104b20(%eax)
  1007f1:	ff ff 
  1007f3:	66 c7 80 22 4b 10 00 	movw   $0x0,0x104b22(%eax)
  1007fa:	00 00 
  1007fc:	88 98 24 4b 10 00    	mov    %bl,0x104b24(%eax)
  100802:	c6 80 25 4b 10 00 fa 	movb   $0xfa,0x104b25(%eax)
  100809:	c6 80 26 4b 10 00 cf 	movb   $0xcf,0x104b26(%eax)
  100810:	c6 80 27 4b 10 00 00 	movb   $0x0,0x104b27(%eax)
  100817:	66 c7 80 28 4b 10 00 	movw   $0xffff,0x104b28(%eax)
  10081e:	ff ff 
  100820:	66 c7 80 2a 4b 10 00 	movw   $0x0,0x104b2a(%eax)
  100827:	00 00 
  100829:	88 98 2c 4b 10 00    	mov    %bl,0x104b2c(%eax)
  10082f:	c6 80 2d 4b 10 00 f2 	movb   $0xf2,0x104b2d(%eax)
  100836:	c6 80 2e 4b 10 00 cf 	movb   $0xcf,0x104b2e(%eax)
  10083d:	c6 82 6f 10 00 00 00 	movb   $0x0,0x106f(%edx)
  100844:	81 c1 70 10 00 00    	add    $0x1070,%ecx
  10084a:	89 f7                	mov    %esi,%edi
  10084c:	83 fe 02             	cmp    $0x2,%esi
  10084f:	0f 85 0b ff ff ff    	jne    100760 <initProcess+0x24>
  100855:	50                   	push   %eax
  100856:	68 00 92 01 00       	push   $0x19200
  10085b:	68 00 02 00 00       	push   $0x200
  100860:	68 00 80 00 00       	push   $0x8000
  100865:	e8 ca 02 00 00       	call   100b34 <readseg>
  10086a:	5a                   	pop    %edx
  10086b:	59                   	pop    %ecx
  10086c:	68 00 00 30 00       	push   $0x300000
  100871:	68 00 80 00 00       	push   $0x8000
  100876:	e8 15 03 00 00       	call   100b90 <loader>
  10087b:	a3 fc 4a 10 00       	mov    %eax,0x104afc
  100880:	c7 05 10 4b 10 00 02 	movl   $0x2,0x104b10
  100887:	00 00 00 
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
  1008a4:	83 3d 10 4b 10 00 02 	cmpl   $0x2,0x104b10
  1008ab:	74 27                	je     1008d4 <schedule+0x34>
  1008ad:	83 3d 80 5b 10 00 02 	cmpl   $0x2,0x105b80
  1008b4:	0f 84 9e 00 00 00    	je     100958 <schedule+0xb8>
  1008ba:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  1008c1:	2a 10 00 
  1008c4:	c7 05 94 3a 10 00 0a 	movl   $0xa,0x103a94
  1008cb:	00 00 00 
  1008ce:	5b                   	pop    %ebx
  1008cf:	5d                   	pop    %ebp
  1008d0:	c3                   	ret    
  1008d1:	8d 76 00             	lea    0x0(%esi),%esi
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
  100953:	e9 76 ff ff ff       	jmp    1008ce <schedule+0x2e>
  100958:	b9 30 4b 10 00       	mov    $0x104b30,%ecx
  10095d:	e9 77 ff ff ff       	jmp    1008d9 <schedule+0x39>
  100962:	66 90                	xchg   %ax,%ax

00100964 <waitDisk>:
  100964:	55                   	push   %ebp
  100965:	89 e5                	mov    %esp,%ebp
  100967:	ba f7 01 00 00       	mov    $0x1f7,%edx
  10096c:	ec                   	in     (%dx),%al
  10096d:	83 e0 c0             	and    $0xffffffc0,%eax
  100970:	3c 40                	cmp    $0x40,%al
  100972:	75 f8                	jne    10096c <waitDisk+0x8>
  100974:	5d                   	pop    %ebp
  100975:	c3                   	ret    
  100976:	66 90                	xchg   %ax,%ax

00100978 <readSect>:
  100978:	55                   	push   %ebp
  100979:	89 e5                	mov    %esp,%ebp
  10097b:	53                   	push   %ebx
  10097c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  10097f:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100984:	ec                   	in     (%dx),%al
  100985:	83 e0 c0             	and    $0xffffffc0,%eax
  100988:	3c 40                	cmp    $0x40,%al
  10098a:	75 f8                	jne    100984 <readSect+0xc>
  10098c:	ba f2 01 00 00       	mov    $0x1f2,%edx
  100991:	b0 01                	mov    $0x1,%al
  100993:	ee                   	out    %al,(%dx)
  100994:	ba f3 01 00 00       	mov    $0x1f3,%edx
  100999:	88 c8                	mov    %cl,%al
  10099b:	ee                   	out    %al,(%dx)
  10099c:	89 c8                	mov    %ecx,%eax
  10099e:	c1 f8 08             	sar    $0x8,%eax
  1009a1:	ba f4 01 00 00       	mov    $0x1f4,%edx
  1009a6:	ee                   	out    %al,(%dx)
  1009a7:	89 c8                	mov    %ecx,%eax
  1009a9:	c1 f8 10             	sar    $0x10,%eax
  1009ac:	ba f5 01 00 00       	mov    $0x1f5,%edx
  1009b1:	ee                   	out    %al,(%dx)
  1009b2:	89 c8                	mov    %ecx,%eax
  1009b4:	c1 f8 18             	sar    $0x18,%eax
  1009b7:	83 c8 e0             	or     $0xffffffe0,%eax
  1009ba:	ba f6 01 00 00       	mov    $0x1f6,%edx
  1009bf:	ee                   	out    %al,(%dx)
  1009c0:	ba f7 01 00 00       	mov    $0x1f7,%edx
  1009c5:	b0 20                	mov    $0x20,%al
  1009c7:	ee                   	out    %al,(%dx)
  1009c8:	ec                   	in     (%dx),%al
  1009c9:	83 e0 c0             	and    $0xffffffc0,%eax
  1009cc:	3c 40                	cmp    $0x40,%al
  1009ce:	75 f8                	jne    1009c8 <readSect+0x50>
  1009d0:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1009d3:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  1009d9:	ba f0 01 00 00       	mov    $0x1f0,%edx
  1009de:	66 90                	xchg   %ax,%ax
  1009e0:	ed                   	in     (%dx),%eax
  1009e1:	89 01                	mov    %eax,(%ecx)
  1009e3:	83 c1 04             	add    $0x4,%ecx
  1009e6:	39 d9                	cmp    %ebx,%ecx
  1009e8:	75 f6                	jne    1009e0 <readSect+0x68>
  1009ea:	5b                   	pop    %ebx
  1009eb:	5d                   	pop    %ebp
  1009ec:	c3                   	ret    
  1009ed:	8d 76 00             	lea    0x0(%esi),%esi

001009f0 <initSeg>:
  1009f0:	55                   	push   %ebp
  1009f1:	89 e5                	mov    %esp,%ebp
  1009f3:	b9 a0 5b 10 00       	mov    $0x105ba0,%ecx
  1009f8:	66 c7 05 a8 5b 10 00 	movw   $0xffff,0x105ba8
  1009ff:	ff ff 
  100a01:	66 c7 05 aa 5b 10 00 	movw   $0x0,0x105baa
  100a08:	00 00 
  100a0a:	c6 05 ac 5b 10 00 00 	movb   $0x0,0x105bac
  100a11:	c6 05 ad 5b 10 00 9a 	movb   $0x9a,0x105bad
  100a18:	c6 05 ae 5b 10 00 cf 	movb   $0xcf,0x105bae
  100a1f:	c6 05 af 5b 10 00 00 	movb   $0x0,0x105baf
  100a26:	66 c7 05 b0 5b 10 00 	movw   $0xffff,0x105bb0
  100a2d:	ff ff 
  100a2f:	66 c7 05 b2 5b 10 00 	movw   $0x0,0x105bb2
  100a36:	00 00 
  100a38:	c6 05 b4 5b 10 00 00 	movb   $0x0,0x105bb4
  100a3f:	c6 05 b5 5b 10 00 92 	movb   $0x92,0x105bb5
  100a46:	c6 05 b6 5b 10 00 cf 	movb   $0xcf,0x105bb6
  100a4d:	c6 05 b7 5b 10 00 00 	movb   $0x0,0x105bb7
  100a54:	a1 e0 10 10 00       	mov    0x1010e0,%eax
  100a59:	8b 15 e4 10 10 00    	mov    0x1010e4,%edx
  100a5f:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100a64:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100a6a:	a1 e8 10 10 00       	mov    0x1010e8,%eax
  100a6f:	8b 15 ec 10 10 00    	mov    0x1010ec,%edx
  100a75:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  100a7a:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100a80:	66 c7 05 c8 5b 10 00 	movw   $0x63,0x105bc8
  100a87:	63 00 
  100a89:	b8 e0 5b 10 00       	mov    $0x105be0,%eax
  100a8e:	66 a3 ca 5b 10 00    	mov    %ax,0x105bca
  100a94:	89 c2                	mov    %eax,%edx
  100a96:	c1 ea 10             	shr    $0x10,%edx
  100a99:	88 15 cc 5b 10 00    	mov    %dl,0x105bcc
  100a9f:	c6 05 cd 5b 10 00 89 	movb   $0x89,0x105bcd
  100aa6:	c6 05 ce 5b 10 00 40 	movb   $0x40,0x105bce
  100aad:	c1 e8 18             	shr    $0x18,%eax
  100ab0:	a2 cf 5b 10 00       	mov    %al,0x105bcf
  100ab5:	66 c7 05 34 21 10 00 	movw   $0x37,0x102134
  100abc:	37 00 
  100abe:	66 89 0d 36 21 10 00 	mov    %cx,0x102136
  100ac5:	c1 e9 10             	shr    $0x10,%ecx
  100ac8:	66 89 0d 38 21 10 00 	mov    %cx,0x102138
  100acf:	b8 34 21 10 00       	mov    $0x102134,%eax
  100ad4:	0f 01 10             	lgdtl  (%eax)
  100ad7:	b8 28 00 00 00       	mov    $0x28,%eax
  100adc:	0f 00 d8             	ltr    %ax
  100adf:	c7 05 e8 5b 10 00 10 	movl   $0x10,0x105be8
  100ae6:	00 00 00 
  100ae9:	c7 05 e4 5b 10 00 90 	movl   $0x103a90,0x105be4
  100af0:	3a 10 00 
  100af3:	b8 10 00 00 00       	mov    $0x10,%eax
  100af8:	8e c0                	mov    %eax,%es
  100afa:	8e d8                	mov    %eax,%ds
  100afc:	8e e8                	mov    %eax,%gs
  100afe:	8e e0                	mov    %eax,%fs
  100b00:	8e d0                	mov    %eax,%ss
  100b02:	31 c0                	xor    %eax,%eax
  100b04:	0f 00 d0             	lldt   %ax
  100b07:	5d                   	pop    %ebp
  100b08:	c3                   	ret    
  100b09:	8d 76 00             	lea    0x0(%esi),%esi

00100b0c <enterUserSpace>:
  100b0c:	55                   	push   %ebp
  100b0d:	89 e5                	mov    %esp,%ebp
  100b0f:	b8 23 00 00 00       	mov    $0x23,%eax
  100b14:	fa                   	cli    
  100b15:	8e c0                	mov    %eax,%es
  100b17:	8e e0                	mov    %eax,%fs
  100b19:	8e d8                	mov    %eax,%ds
  100b1b:	8e e8                	mov    %eax,%gs
  100b1d:	66 6a 23             	pushw  $0x23
  100b20:	68 00 00 40 00       	push   $0x400000
  100b25:	68 02 02 00 00       	push   $0x202
  100b2a:	6a 1b                	push   $0x1b
  100b2c:	ff 75 08             	pushl  0x8(%ebp)
  100b2f:	fb                   	sti    
  100b30:	cf                   	iret   
  100b31:	5d                   	pop    %ebp
  100b32:	c3                   	ret    
  100b33:	90                   	nop

00100b34 <readseg>:
  100b34:	55                   	push   %ebp
  100b35:	89 e5                	mov    %esp,%ebp
  100b37:	57                   	push   %edi
  100b38:	56                   	push   %esi
  100b39:	53                   	push   %ebx
  100b3a:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100b3d:	8b 7d 10             	mov    0x10(%ebp),%edi
  100b40:	8b 75 0c             	mov    0xc(%ebp),%esi
  100b43:	01 de                	add    %ebx,%esi
  100b45:	89 f8                	mov    %edi,%eax
  100b47:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100b4c:	78 2a                	js     100b78 <readseg+0x44>
  100b4e:	29 c3                	sub    %eax,%ebx
  100b50:	85 ff                	test   %edi,%edi
  100b52:	78 31                	js     100b85 <readseg+0x51>
  100b54:	c1 ff 09             	sar    $0x9,%edi
  100b57:	39 de                	cmp    %ebx,%esi
  100b59:	76 15                	jbe    100b70 <readseg+0x3c>
  100b5b:	90                   	nop
  100b5c:	57                   	push   %edi
  100b5d:	53                   	push   %ebx
  100b5e:	e8 15 fe ff ff       	call   100978 <readSect>
  100b63:	81 c3 00 02 00 00    	add    $0x200,%ebx
  100b69:	47                   	inc    %edi
  100b6a:	58                   	pop    %eax
  100b6b:	5a                   	pop    %edx
  100b6c:	39 de                	cmp    %ebx,%esi
  100b6e:	77 ec                	ja     100b5c <readseg+0x28>
  100b70:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100b73:	5b                   	pop    %ebx
  100b74:	5e                   	pop    %esi
  100b75:	5f                   	pop    %edi
  100b76:	5d                   	pop    %ebp
  100b77:	c3                   	ret    
  100b78:	48                   	dec    %eax
  100b79:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100b7e:	40                   	inc    %eax
  100b7f:	29 c3                	sub    %eax,%ebx
  100b81:	85 ff                	test   %edi,%edi
  100b83:	79 cf                	jns    100b54 <readseg+0x20>
  100b85:	81 c7 ff 01 00 00    	add    $0x1ff,%edi
  100b8b:	eb c7                	jmp    100b54 <readseg+0x20>
  100b8d:	8d 76 00             	lea    0x0(%esi),%esi

00100b90 <loader>:
  100b90:	55                   	push   %ebp
  100b91:	89 e5                	mov    %esp,%ebp
  100b93:	57                   	push   %edi
  100b94:	56                   	push   %esi
  100b95:	53                   	push   %ebx
  100b96:	83 ec 2c             	sub    $0x2c,%esp
  100b99:	8b 55 08             	mov    0x8(%ebp),%edx
  100b9c:	8b 42 2c             	mov    0x2c(%edx),%eax
  100b9f:	66 83 f8 ff          	cmp    $0xffff,%ax
  100ba3:	0f 84 8b 00 00 00    	je     100c34 <loader+0xa4>
  100ba9:	0f b7 c8             	movzwl %ax,%ecx
  100bac:	85 c9                	test   %ecx,%ecx
  100bae:	74 72                	je     100c22 <loader+0x92>
  100bb0:	31 ff                	xor    %edi,%edi
  100bb2:	89 d6                	mov    %edx,%esi
  100bb4:	eb 07                	jmp    100bbd <loader+0x2d>
  100bb6:	66 90                	xchg   %ax,%ax
  100bb8:	47                   	inc    %edi
  100bb9:	39 cf                	cmp    %ecx,%edi
  100bbb:	7d 63                	jge    100c20 <loader+0x90>
  100bbd:	0f b7 46 2a          	movzwl 0x2a(%esi),%eax
  100bc1:	0f af c7             	imul   %edi,%eax
  100bc4:	03 46 1c             	add    0x1c(%esi),%eax
  100bc7:	01 f0                	add    %esi,%eax
  100bc9:	83 38 01             	cmpl   $0x1,(%eax)
  100bcc:	75 ea                	jne    100bb8 <loader+0x28>
  100bce:	89 4d d0             	mov    %ecx,-0x30(%ebp)
  100bd1:	8b 55 0c             	mov    0xc(%ebp),%edx
  100bd4:	03 50 08             	add    0x8(%eax),%edx
  100bd7:	8b 58 10             	mov    0x10(%eax),%ebx
  100bda:	8b 48 14             	mov    0x14(%eax),%ecx
  100bdd:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  100be0:	51                   	push   %ecx
  100be1:	8b 40 04             	mov    0x4(%eax),%eax
  100be4:	05 00 92 01 00       	add    $0x19200,%eax
  100be9:	50                   	push   %eax
  100bea:	53                   	push   %ebx
  100beb:	52                   	push   %edx
  100bec:	89 55 cc             	mov    %edx,-0x34(%ebp)
  100bef:	e8 40 ff ff ff       	call   100b34 <readseg>
  100bf4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100bf7:	29 d8                	sub    %ebx,%eax
  100bf9:	83 c4 10             	add    $0x10,%esp
  100bfc:	85 c0                	test   %eax,%eax
  100bfe:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  100c01:	7e b5                	jle    100bb8 <loader+0x28>
  100c03:	8b 55 cc             	mov    -0x34(%ebp),%edx
  100c06:	01 d3                	add    %edx,%ebx
  100c08:	03 55 d4             	add    -0x2c(%ebp),%edx
  100c0b:	39 d3                	cmp    %edx,%ebx
  100c0d:	73 a9                	jae    100bb8 <loader+0x28>
  100c0f:	90                   	nop
  100c10:	43                   	inc    %ebx
  100c11:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
  100c15:	39 d3                	cmp    %edx,%ebx
  100c17:	75 f7                	jne    100c10 <loader+0x80>
  100c19:	47                   	inc    %edi
  100c1a:	39 cf                	cmp    %ecx,%edi
  100c1c:	7c 9f                	jl     100bbd <loader+0x2d>
  100c1e:	66 90                	xchg   %ax,%ax
  100c20:	89 f2                	mov    %esi,%edx
  100c22:	8b 42 18             	mov    0x18(%edx),%eax
  100c25:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100c28:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100c2b:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100c2e:	5b                   	pop    %ebx
  100c2f:	5e                   	pop    %esi
  100c30:	5f                   	pop    %edi
  100c31:	5d                   	pop    %ebp
  100c32:	c3                   	ret    
  100c33:	90                   	nop
  100c34:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  100c37:	83 ec 08             	sub    $0x8,%esp
  100c3a:	6a 7e                	push   $0x7e
  100c3c:	68 f0 10 10 00       	push   $0x1010f0
  100c41:	e8 16 03 00 00       	call   100f5c <abort>
  100c46:	83 c4 10             	add    $0x10,%esp
  100c49:	b9 ff ff 00 00       	mov    $0xffff,%ecx
  100c4e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100c51:	e9 5a ff ff ff       	jmp    100bb0 <loader+0x20>
  100c56:	66 90                	xchg   %ax,%ax

00100c58 <loadUMain>:
  100c58:	55                   	push   %ebp
  100c59:	89 e5                	mov    %esp,%ebp
  100c5b:	83 ec 18             	sub    $0x18,%esp
  100c5e:	68 c9 00 00 00       	push   $0xc9
  100c63:	68 00 80 00 00       	push   $0x8000
  100c68:	e8 0b fd ff ff       	call   100978 <readSect>
  100c6d:	6a 00                	push   $0x0
  100c6f:	68 00 80 00 00       	push   $0x8000
  100c74:	e8 17 ff ff ff       	call   100b90 <loader>
  100c79:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c7c:	b8 23 00 00 00       	mov    $0x23,%eax
  100c81:	fa                   	cli    
  100c82:	8e c0                	mov    %eax,%es
  100c84:	8e e0                	mov    %eax,%fs
  100c86:	8e d8                	mov    %eax,%ds
  100c88:	8e e8                	mov    %eax,%gs
  100c8a:	66 6a 23             	pushw  $0x23
  100c8d:	68 00 00 40 00       	push   $0x400000
  100c92:	68 02 02 00 00       	push   $0x202
  100c97:	6a 1b                	push   $0x1b
  100c99:	ff 75 f4             	pushl  -0xc(%ebp)
  100c9c:	fb                   	sti    
  100c9d:	cf                   	iret   
  100c9e:	83 c4 10             	add    $0x10,%esp
  100ca1:	c9                   	leave  
  100ca2:	c3                   	ret    
  100ca3:	90                   	nop

00100ca4 <addString2Buff>:
  100ca4:	55                   	push   %ebp
  100ca5:	89 e5                	mov    %esp,%ebp
  100ca7:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100caa:	8a 11                	mov    (%ecx),%dl
  100cac:	84 d2                	test   %dl,%dl
  100cae:	74 1b                	je     100ccb <addString2Buff+0x27>
  100cb0:	a1 08 22 10 00       	mov    0x102208,%eax
  100cb5:	29 c1                	sub    %eax,%ecx
  100cb7:	90                   	nop
  100cb8:	40                   	inc    %eax
  100cb9:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100cbf:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  100cc2:	84 d2                	test   %dl,%dl
  100cc4:	75 f2                	jne    100cb8 <addString2Buff+0x14>
  100cc6:	a3 08 22 10 00       	mov    %eax,0x102208
  100ccb:	5d                   	pop    %ebp
  100ccc:	c3                   	ret    
  100ccd:	8d 76 00             	lea    0x0(%esi),%esi

00100cd0 <addCh2Buff>:
  100cd0:	55                   	push   %ebp
  100cd1:	89 e5                	mov    %esp,%ebp
  100cd3:	a1 08 22 10 00       	mov    0x102208,%eax
  100cd8:	8d 50 01             	lea    0x1(%eax),%edx
  100cdb:	89 15 08 22 10 00    	mov    %edx,0x102208
  100ce1:	8b 55 08             	mov    0x8(%ebp),%edx
  100ce4:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100cea:	5d                   	pop    %ebp
  100ceb:	c3                   	ret    

00100cec <addDec2Buff>:
  100cec:	55                   	push   %ebp
  100ced:	89 e5                	mov    %esp,%ebp
  100cef:	56                   	push   %esi
  100cf0:	53                   	push   %ebx
  100cf1:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100cf4:	85 db                	test   %ebx,%ebx
  100cf6:	0f 89 92 00 00 00    	jns    100d8e <addDec2Buff+0xa2>
  100cfc:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  100d02:	74 58                	je     100d5c <addDec2Buff+0x70>
  100d04:	a1 08 22 10 00       	mov    0x102208,%eax
  100d09:	c6 80 40 21 10 00 2d 	movb   $0x2d,0x102140(%eax)
  100d10:	40                   	inc    %eax
  100d11:	f7 db                	neg    %ebx
  100d13:	a3 08 22 10 00       	mov    %eax,0x102208
  100d18:	83 ec 0c             	sub    $0xc,%esp
  100d1b:	b8 67 66 66 66       	mov    $0x66666667,%eax
  100d20:	f7 eb                	imul   %ebx
  100d22:	89 d6                	mov    %edx,%esi
  100d24:	c1 fe 02             	sar    $0x2,%esi
  100d27:	89 d8                	mov    %ebx,%eax
  100d29:	c1 f8 1f             	sar    $0x1f,%eax
  100d2c:	29 c6                	sub    %eax,%esi
  100d2e:	56                   	push   %esi
  100d2f:	e8 b8 ff ff ff       	call   100cec <addDec2Buff>
  100d34:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100d3a:	8d 42 01             	lea    0x1(%edx),%eax
  100d3d:	a3 08 22 10 00       	mov    %eax,0x102208
  100d42:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  100d45:	01 c0                	add    %eax,%eax
  100d47:	29 c3                	sub    %eax,%ebx
  100d49:	83 c3 30             	add    $0x30,%ebx
  100d4c:	88 9a 40 21 10 00    	mov    %bl,0x102140(%edx)
  100d52:	83 c4 10             	add    $0x10,%esp
  100d55:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100d58:	5b                   	pop    %ebx
  100d59:	5e                   	pop    %esi
  100d5a:	5d                   	pop    %ebp
  100d5b:	c3                   	ret    
  100d5c:	8b 1d 08 22 10 00    	mov    0x102208,%ebx
  100d62:	8d 43 01             	lea    0x1(%ebx),%eax
  100d65:	b2 2d                	mov    $0x2d,%dl
  100d67:	b9 fd 10 10 00       	mov    $0x1010fd,%ecx
  100d6c:	29 d9                	sub    %ebx,%ecx
  100d6e:	66 90                	xchg   %ax,%ax
  100d70:	89 c3                	mov    %eax,%ebx
  100d72:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100d78:	40                   	inc    %eax
  100d79:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  100d7d:	84 d2                	test   %dl,%dl
  100d7f:	75 ef                	jne    100d70 <addDec2Buff+0x84>
  100d81:	89 1d 08 22 10 00    	mov    %ebx,0x102208
  100d87:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100d8a:	5b                   	pop    %ebx
  100d8b:	5e                   	pop    %esi
  100d8c:	5d                   	pop    %ebp
  100d8d:	c3                   	ret    
  100d8e:	74 c5                	je     100d55 <addDec2Buff+0x69>
  100d90:	eb 86                	jmp    100d18 <addDec2Buff+0x2c>
  100d92:	66 90                	xchg   %ax,%ax

00100d94 <addHex2Buff>:
  100d94:	55                   	push   %ebp
  100d95:	89 e5                	mov    %esp,%ebp
  100d97:	8b 45 08             	mov    0x8(%ebp),%eax
  100d9a:	85 c0                	test   %eax,%eax
  100d9c:	75 02                	jne    100da0 <addHex2Buff+0xc>
  100d9e:	5d                   	pop    %ebp
  100d9f:	c3                   	ret    
  100da0:	5d                   	pop    %ebp
  100da1:	eb 01                	jmp    100da4 <addHex2Buff.part.1>
  100da3:	90                   	nop

00100da4 <addHex2Buff.part.1>:
  100da4:	55                   	push   %ebp
  100da5:	89 e5                	mov    %esp,%ebp
  100da7:	53                   	push   %ebx
  100da8:	83 ec 10             	sub    $0x10,%esp
  100dab:	89 c3                	mov    %eax,%ebx
  100dad:	89 c2                	mov    %eax,%edx
  100daf:	c1 ea 04             	shr    $0x4,%edx
  100db2:	52                   	push   %edx
  100db3:	e8 dc ff ff ff       	call   100d94 <addHex2Buff>
  100db8:	89 d8                	mov    %ebx,%eax
  100dba:	83 e0 0f             	and    $0xf,%eax
  100dbd:	83 c4 10             	add    $0x10,%esp
  100dc0:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100dc6:	8d 4a 01             	lea    0x1(%edx),%ecx
  100dc9:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100dcf:	83 f8 09             	cmp    $0x9,%eax
  100dd2:	76 10                	jbe    100de4 <addHex2Buff.part.1+0x40>
  100dd4:	83 c0 57             	add    $0x57,%eax
  100dd7:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100ddd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100de0:	c9                   	leave  
  100de1:	c3                   	ret    
  100de2:	66 90                	xchg   %ax,%ax
  100de4:	83 c0 30             	add    $0x30,%eax
  100de7:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100ded:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100df0:	c9                   	leave  
  100df1:	c3                   	ret    
  100df2:	66 90                	xchg   %ax,%ax

00100df4 <Log>:
  100df4:	55                   	push   %ebp
  100df5:	89 e5                	mov    %esp,%ebp
  100df7:	57                   	push   %edi
  100df8:	56                   	push   %esi
  100df9:	53                   	push   %ebx
  100dfa:	83 ec 0c             	sub    $0xc,%esp
  100dfd:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100e00:	8d 75 0c             	lea    0xc(%ebp),%esi
  100e03:	8a 03                	mov    (%ebx),%al
  100e05:	84 c0                	test   %al,%al
  100e07:	74 21                	je     100e2a <Log+0x36>
  100e09:	3c 25                	cmp    $0x25,%al
  100e0b:	74 5f                	je     100e6c <Log+0x78>
  100e0d:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100e13:	8d 4a 01             	lea    0x1(%edx),%ecx
  100e16:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100e1c:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100e22:	8a 43 01             	mov    0x1(%ebx),%al
  100e25:	43                   	inc    %ebx
  100e26:	84 c0                	test   %al,%al
  100e28:	75 df                	jne    100e09 <Log+0x15>
  100e2a:	a1 08 22 10 00       	mov    0x102208,%eax
  100e2f:	c6 80 40 21 10 00 00 	movb   $0x0,0x102140(%eax)
  100e36:	85 c0                	test   %eax,%eax
  100e38:	7e 1e                	jle    100e58 <Log+0x64>
  100e3a:	31 db                	xor    %ebx,%ebx
  100e3c:	83 ec 0c             	sub    $0xc,%esp
  100e3f:	0f be 83 40 21 10 00 	movsbl 0x102140(%ebx),%eax
  100e46:	50                   	push   %eax
  100e47:	e8 d4 f8 ff ff       	call   100720 <putChar>
  100e4c:	43                   	inc    %ebx
  100e4d:	83 c4 10             	add    $0x10,%esp
  100e50:	39 1d 08 22 10 00    	cmp    %ebx,0x102208
  100e56:	7f e4                	jg     100e3c <Log+0x48>
  100e58:	c7 05 08 22 10 00 00 	movl   $0x0,0x102208
  100e5f:	00 00 00 
  100e62:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100e65:	5b                   	pop    %ebx
  100e66:	5e                   	pop    %esi
  100e67:	5f                   	pop    %edi
  100e68:	5d                   	pop    %ebp
  100e69:	c3                   	ret    
  100e6a:	66 90                	xchg   %ax,%ax
  100e6c:	8a 43 01             	mov    0x1(%ebx),%al
  100e6f:	3c 64                	cmp    $0x64,%al
  100e71:	74 5e                	je     100ed1 <Log+0xdd>
  100e73:	7f 33                	jg     100ea8 <Log+0xb4>
  100e75:	3c 25                	cmp    $0x25,%al
  100e77:	0f 84 b3 00 00 00    	je     100f30 <Log+0x13c>
  100e7d:	3c 63                	cmp    $0x63,%al
  100e7f:	75 4a                	jne    100ecb <Log+0xd7>
  100e81:	8b 16                	mov    (%esi),%edx
  100e83:	a1 08 22 10 00       	mov    0x102208,%eax
  100e88:	8d 48 01             	lea    0x1(%eax),%ecx
  100e8b:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100e91:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100e97:	8a 43 02             	mov    0x2(%ebx),%al
  100e9a:	83 c6 04             	add    $0x4,%esi
  100e9d:	83 c3 02             	add    $0x2,%ebx
  100ea0:	e9 60 ff ff ff       	jmp    100e05 <Log+0x11>
  100ea5:	8d 76 00             	lea    0x0(%esi),%esi
  100ea8:	3c 73                	cmp    $0x73,%al
  100eaa:	74 47                	je     100ef3 <Log+0xff>
  100eac:	3c 78                	cmp    $0x78,%al
  100eae:	75 1b                	jne    100ecb <Log+0xd7>
  100eb0:	89 f0                	mov    %esi,%eax
  100eb2:	83 c6 04             	add    $0x4,%esi
  100eb5:	8b 00                	mov    (%eax),%eax
  100eb7:	85 c0                	test   %eax,%eax
  100eb9:	74 21                	je     100edc <Log+0xe8>
  100ebb:	e8 e4 fe ff ff       	call   100da4 <addHex2Buff.part.1>
  100ec0:	8a 43 02             	mov    0x2(%ebx),%al
  100ec3:	83 c3 02             	add    $0x2,%ebx
  100ec6:	e9 3a ff ff ff       	jmp    100e05 <Log+0x11>
  100ecb:	43                   	inc    %ebx
  100ecc:	e9 34 ff ff ff       	jmp    100e05 <Log+0x11>
  100ed1:	89 f0                	mov    %esi,%eax
  100ed3:	83 c6 04             	add    $0x4,%esi
  100ed6:	8b 00                	mov    (%eax),%eax
  100ed8:	85 c0                	test   %eax,%eax
  100eda:	75 6e                	jne    100f4a <Log+0x156>
  100edc:	a1 08 22 10 00       	mov    0x102208,%eax
  100ee1:	8d 50 01             	lea    0x1(%eax),%edx
  100ee4:	89 15 08 22 10 00    	mov    %edx,0x102208
  100eea:	c6 80 40 21 10 00 30 	movb   $0x30,0x102140(%eax)
  100ef1:	eb cd                	jmp    100ec0 <Log+0xcc>
  100ef3:	8d 4e 04             	lea    0x4(%esi),%ecx
  100ef6:	8b 36                	mov    (%esi),%esi
  100ef8:	8a 16                	mov    (%esi),%dl
  100efa:	84 d2                	test   %dl,%dl
  100efc:	74 25                	je     100f23 <Log+0x12f>
  100efe:	8b 3d 08 22 10 00    	mov    0x102208,%edi
  100f04:	8d 47 01             	lea    0x1(%edi),%eax
  100f07:	29 fe                	sub    %edi,%esi
  100f09:	8d 76 00             	lea    0x0(%esi),%esi
  100f0c:	89 c7                	mov    %eax,%edi
  100f0e:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100f14:	40                   	inc    %eax
  100f15:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  100f19:	84 d2                	test   %dl,%dl
  100f1b:	75 ef                	jne    100f0c <Log+0x118>
  100f1d:	89 3d 08 22 10 00    	mov    %edi,0x102208
  100f23:	8a 43 02             	mov    0x2(%ebx),%al
  100f26:	89 ce                	mov    %ecx,%esi
  100f28:	83 c3 02             	add    $0x2,%ebx
  100f2b:	e9 d5 fe ff ff       	jmp    100e05 <Log+0x11>
  100f30:	a1 08 22 10 00       	mov    0x102208,%eax
  100f35:	8d 50 01             	lea    0x1(%eax),%edx
  100f38:	89 15 08 22 10 00    	mov    %edx,0x102208
  100f3e:	c6 80 40 21 10 00 25 	movb   $0x25,0x102140(%eax)
  100f45:	e9 76 ff ff ff       	jmp    100ec0 <Log+0xcc>
  100f4a:	83 ec 0c             	sub    $0xc,%esp
  100f4d:	50                   	push   %eax
  100f4e:	e8 99 fd ff ff       	call   100cec <addDec2Buff>
  100f53:	83 c4 10             	add    $0x10,%esp
  100f56:	e9 65 ff ff ff       	jmp    100ec0 <Log+0xcc>
  100f5b:	90                   	nop

00100f5c <abort>:
  100f5c:	55                   	push   %ebp
  100f5d:	89 e5                	mov    %esp,%ebp
  100f5f:	57                   	push   %edi
  100f60:	56                   	push   %esi
  100f61:	53                   	push   %ebx
  100f62:	83 ec 1c             	sub    $0x1c,%esp
  100f65:	8b 55 08             	mov    0x8(%ebp),%edx
  100f68:	fa                   	cli    
  100f69:	8a 02                	mov    (%edx),%al
  100f6b:	b9 32 20 10 00       	mov    $0x102032,%ecx
  100f70:	84 c0                	test   %al,%al
  100f72:	74 0b                	je     100f7f <abort+0x23>
  100f74:	41                   	inc    %ecx
  100f75:	42                   	inc    %edx
  100f76:	88 41 ff             	mov    %al,-0x1(%ecx)
  100f79:	8a 02                	mov    (%edx),%al
  100f7b:	84 c0                	test   %al,%al
  100f7d:	75 f5                	jne    100f74 <abort+0x18>
  100f7f:	c6 01 3a             	movb   $0x3a,(%ecx)
  100f82:	bb 29 22 10 00       	mov    $0x102229,%ebx
  100f87:	be 0a 00 00 00       	mov    $0xa,%esi
  100f8c:	bf 67 66 66 66       	mov    $0x66666667,%edi
  100f91:	4b                   	dec    %ebx
  100f92:	8b 45 0c             	mov    0xc(%ebp),%eax
  100f95:	99                   	cltd   
  100f96:	f7 fe                	idiv   %esi
  100f98:	8d 42 30             	lea    0x30(%edx),%eax
  100f9b:	88 45 e7             	mov    %al,-0x19(%ebp)
  100f9e:	88 03                	mov    %al,(%ebx)
  100fa0:	89 f8                	mov    %edi,%eax
  100fa2:	f7 6d 0c             	imull  0xc(%ebp)
  100fa5:	c1 fa 02             	sar    $0x2,%edx
  100fa8:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fab:	c1 f8 1f             	sar    $0x1f,%eax
  100fae:	29 c2                	sub    %eax,%edx
  100fb0:	89 55 0c             	mov    %edx,0xc(%ebp)
  100fb3:	75 dc                	jne    100f91 <abort+0x35>
  100fb5:	41                   	inc    %ecx
  100fb6:	41                   	inc    %ecx
  100fb7:	43                   	inc    %ebx
  100fb8:	8a 45 e7             	mov    -0x19(%ebp),%al
  100fbb:	88 41 ff             	mov    %al,-0x1(%ecx)
  100fbe:	8a 03                	mov    (%ebx),%al
  100fc0:	88 45 e7             	mov    %al,-0x19(%ebp)
  100fc3:	84 c0                	test   %al,%al
  100fc5:	75 ef                	jne    100fb6 <abort+0x5a>
  100fc7:	c6 01 0a             	movb   $0xa,(%ecx)
  100fca:	0f be 05 20 20 10 00 	movsbl 0x102020,%eax
  100fd1:	84 c0                	test   %al,%al
  100fd3:	74 1b                	je     100ff0 <abort+0x94>
  100fd5:	bb 20 20 10 00       	mov    $0x102020,%ebx
  100fda:	83 ec 0c             	sub    $0xc,%esp
  100fdd:	50                   	push   %eax
  100fde:	e8 3d f7 ff ff       	call   100720 <putChar>
  100fe3:	43                   	inc    %ebx
  100fe4:	0f be 03             	movsbl (%ebx),%eax
  100fe7:	83 c4 10             	add    $0x10,%esp
  100fea:	84 c0                	test   %al,%al
  100fec:	75 ec                	jne    100fda <abort+0x7e>
  100fee:	66 90                	xchg   %ax,%ax
  100ff0:	f4                   	hlt    
  100ff1:	eb fd                	jmp    100ff0 <abort+0x94>
  100ff3:	90                   	nop

00100ff4 <idle_fun>:
  100ff4:	55                   	push   %ebp
  100ff5:	89 e5                	mov    %esp,%ebp
  100ff7:	90                   	nop
  100ff8:	f4                   	hlt    
  100ff9:	eb fd                	jmp    100ff8 <idle_fun+0x4>
  100ffb:	90                   	nop

00100ffc <kEntry>:
  100ffc:	55                   	push   %ebp
  100ffd:	89 e5                	mov    %esp,%ebp
  100fff:	83 ec 08             	sub    $0x8,%esp
  101002:	e8 d9 f6 ff ff       	call   1006e0 <initSerial>
  101007:	e8 4c f0 ff ff       	call   100058 <initTimer>
  10100c:	e8 97 f3 ff ff       	call   1003a8 <initIdt>
  101011:	e8 ea ef ff ff       	call   100000 <initIntr>
  101016:	e8 d5 f9 ff ff       	call   1009f0 <initSeg>
  10101b:	e8 1c f7 ff ff       	call   10073c <initProcess>
  101020:	b8 88 3a 10 00       	mov    $0x103a88,%eax
  101025:	89 c4                	mov    %eax,%esp
  101027:	fb                   	sti    
  101028:	f4                   	hlt    
  101029:	eb fd                	jmp    101028 <kEntry+0x2c>

0010102b <no0>:
  10102b:	6a 00                	push   $0x0
  10102d:	6a 00                	push   $0x0
  10102f:	eb 64                	jmp    101095 <asmDoIrq>

00101031 <no1>:
  101031:	6a 00                	push   $0x0
  101033:	6a 01                	push   $0x1
  101035:	eb 5e                	jmp    101095 <asmDoIrq>

00101037 <no2>:
  101037:	6a 00                	push   $0x0
  101039:	6a 02                	push   $0x2
  10103b:	eb 58                	jmp    101095 <asmDoIrq>

0010103d <no3>:
  10103d:	6a 00                	push   $0x0
  10103f:	6a 03                	push   $0x3
  101041:	eb 52                	jmp    101095 <asmDoIrq>

00101043 <no4>:
  101043:	6a 00                	push   $0x0
  101045:	6a 04                	push   $0x4
  101047:	eb 4c                	jmp    101095 <asmDoIrq>

00101049 <no5>:
  101049:	6a 00                	push   $0x0
  10104b:	6a 05                	push   $0x5
  10104d:	eb 46                	jmp    101095 <asmDoIrq>

0010104f <no6>:
  10104f:	6a 00                	push   $0x0
  101051:	6a 06                	push   $0x6
  101053:	eb 40                	jmp    101095 <asmDoIrq>

00101055 <no7>:
  101055:	6a 00                	push   $0x0
  101057:	6a 07                	push   $0x7
  101059:	eb 3a                	jmp    101095 <asmDoIrq>

0010105b <no8>:
  10105b:	6a 08                	push   $0x8
  10105d:	eb 36                	jmp    101095 <asmDoIrq>

0010105f <no9>:
  10105f:	6a 00                	push   $0x0
  101061:	6a 09                	push   $0x9
  101063:	eb 30                	jmp    101095 <asmDoIrq>

00101065 <no10>:
  101065:	6a 0a                	push   $0xa
  101067:	eb 2c                	jmp    101095 <asmDoIrq>

00101069 <no11>:
  101069:	6a 0b                	push   $0xb
  10106b:	eb 28                	jmp    101095 <asmDoIrq>

0010106d <no12>:
  10106d:	6a 0c                	push   $0xc
  10106f:	eb 24                	jmp    101095 <asmDoIrq>

00101071 <no13>:
  101071:	6a 0d                	push   $0xd
  101073:	eb 20                	jmp    101095 <asmDoIrq>

00101075 <no14>:
  101075:	6a 0e                	push   $0xe
  101077:	eb 1c                	jmp    101095 <asmDoIrq>

00101079 <intr0>:
  101079:	6a 00                	push   $0x0
  10107b:	68 e8 03 00 00       	push   $0x3e8
  101080:	eb 13                	jmp    101095 <asmDoIrq>

00101082 <irqEmpty>:
  101082:	6a 00                	push   $0x0
  101084:	6a ff                	push   $0xffffffff
  101086:	eb 0d                	jmp    101095 <asmDoIrq>

00101088 <irqGProtectFault>:
  101088:	6a 0d                	push   $0xd
  10108a:	eb 09                	jmp    101095 <asmDoIrq>

0010108c <irqSyscall>:
  10108c:	6a 00                	push   $0x0
  10108e:	68 80 00 00 00       	push   $0x80
  101093:	eb 00                	jmp    101095 <asmDoIrq>

00101095 <asmDoIrq>:
  101095:	fa                   	cli    
  101096:	1e                   	push   %ds
  101097:	06                   	push   %es
  101098:	0f a0                	push   %fs
  10109a:	0f a8                	push   %gs
  10109c:	60                   	pusha  
  10109d:	54                   	push   %esp
  10109e:	e8 45 f2 ff ff       	call   1002e8 <irqHandle>
  1010a3:	a1 2c 22 10 00       	mov    0x10222c,%eax
  1010a8:	85 c0                	test   %eax,%eax
  1010aa:	74 02                	je     1010ae <switch>
  1010ac:	89 c4                	mov    %eax,%esp

001010ae <switch>:
  1010ae:	83 c4 04             	add    $0x4,%esp
  1010b1:	61                   	popa   
  1010b2:	0f a9                	pop    %gs
  1010b4:	0f a1                	pop    %fs
  1010b6:	07                   	pop    %es
  1010b7:	1f                   	pop    %ds
  1010b8:	83 c4 04             	add    $0x4,%esp
  1010bb:	83 c4 04             	add    $0x4,%esp
  1010be:	fb                   	sti    
  1010bf:	cf                   	iret   
