
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
  100107:	6a 35                	push   $0x35
  100109:	68 e0 10 10 00       	push   $0x1010e0
  10010e:	e8 69 0e 00 00       	call   100f7c <abort>
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
  10018d:	e9 32 07 00 00       	jmp    1008c4 <schedule>
  100192:	66 90                	xchg   %ax,%ax
  100194:	83 ec 0c             	sub    $0xc,%esp
  100197:	6a 32                	push   $0x32
  100199:	e8 a6 05 00 00       	call   100744 <putChar>
  10019e:	83 c4 10             	add    $0x10,%esp
  1001a1:	e9 70 ff ff ff       	jmp    100116 <timerHandle+0x3e>
  1001a6:	66 90                	xchg   %ax,%ax
  1001a8:	83 ec 0c             	sub    $0xc,%esp
  1001ab:	6a 2e                	push   $0x2e
  1001ad:	e8 92 05 00 00       	call   100744 <putChar>
  1001b2:	83 c4 10             	add    $0x10,%esp
  1001b5:	e9 5c ff ff ff       	jmp    100116 <timerHandle+0x3e>
  1001ba:	66 90                	xchg   %ax,%ax
  1001bc:	83 ec 0c             	sub    $0xc,%esp
  1001bf:	6a 31                	push   $0x31
  1001c1:	e8 7e 05 00 00       	call   100744 <putChar>
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
  1001f0:	68 e0 10 10 00       	push   $0x1010e0
  1001f5:	e8 82 0d 00 00       	call   100f7c <abort>
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
  10023c:	e8 03 05 00 00       	call   100744 <putChar>
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
  10029d:	68 e0 10 10 00       	push   $0x1010e0
  1002a2:	e8 d5 0c 00 00       	call   100f7c <abort>
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
  1002de:	68 f3 10 10 00       	push   $0x1010f3
  1002e3:	e8 2c 0b 00 00       	call   100e14 <Log>
  1002e8:	8b 43 30             	mov    0x30(%ebx),%eax
  1002eb:	83 c4 10             	add    $0x10,%esp
  1002ee:	83 f8 0d             	cmp    $0xd,%eax
  1002f1:	0f 84 8d 00 00 00    	je     100384 <irqHandle+0xc0>
  1002f7:	7e 5b                	jle    100354 <irqHandle+0x90>
  1002f9:	3d 80 00 00 00       	cmp    $0x80,%eax
  1002fe:	74 48                	je     100348 <irqHandle+0x84>
  100300:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  100305:	75 59                	jne    100360 <irqHandle+0x9c>
  100307:	83 ec 0c             	sub    $0xc,%esp
  10030a:	68 fb 10 10 00       	push   $0x1010fb
  10030f:	e8 00 0b 00 00       	call   100e14 <Log>
  100314:	e8 bf fd ff ff       	call   1000d8 <timerHandle>
  100319:	a1 b0 6a 10 00       	mov    0x106ab0,%eax
  10031e:	83 c4 10             	add    $0x10,%esp
  100321:	3d 40 2a 10 00       	cmp    $0x102a40,%eax
  100326:	74 78                	je     1003a0 <irqHandle+0xdc>
  100328:	05 00 40 00 00       	add    $0x4000,%eax
  10032d:	a3 2c 22 10 00       	mov    %eax,0x10222c
  100332:	83 ec 08             	sub    $0x8,%esp
  100335:	50                   	push   %eax
  100336:	68 06 11 10 00       	push   $0x101106
  10033b:	e8 d4 0a 00 00       	call   100e14 <Log>
  100340:	83 c4 10             	add    $0x10,%esp
  100343:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100346:	c9                   	leave  
  100347:	c3                   	ret    
  100348:	89 5d 08             	mov    %ebx,0x8(%ebp)
  10034b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10034e:	c9                   	leave  
  10034f:	e9 28 ff ff ff       	jmp    10027c <syscallHandle>
  100354:	83 f8 ff             	cmp    $0xffffffff,%eax
  100357:	75 07                	jne    100360 <irqHandle+0x9c>
  100359:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10035c:	c9                   	leave  
  10035d:	c3                   	ret    
  10035e:	66 90                	xchg   %ax,%ax
  100360:	83 ec 08             	sub    $0x8,%esp
  100363:	50                   	push   %eax
  100364:	68 0f 11 10 00       	push   $0x10110f
  100369:	e8 a6 0a 00 00       	call   100e14 <Log>
  10036e:	58                   	pop    %eax
  10036f:	5a                   	pop    %edx
  100370:	6a 73                	push   $0x73
  100372:	68 e0 10 10 00       	push   $0x1010e0
  100377:	e8 00 0c 00 00       	call   100f7c <abort>
  10037c:	83 c4 10             	add    $0x10,%esp
  10037f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100382:	c9                   	leave  
  100383:	c3                   	ret    
  100384:	83 ec 08             	sub    $0x8,%esp
  100387:	68 a2 00 00 00       	push   $0xa2
  10038c:	68 e0 10 10 00       	push   $0x1010e0
  100391:	e8 e6 0b 00 00       	call   100f7c <abort>
  100396:	83 c4 10             	add    $0x10,%esp
  100399:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10039c:	c9                   	leave  
  10039d:	c3                   	ret    
  10039e:	66 90                	xchg   %ax,%ax
  1003a0:	c7 05 2c 22 10 00 00 	movl   $0x0,0x10222c
  1003a7:	00 00 00 
  1003aa:	31 c0                	xor    %eax,%eax
  1003ac:	eb 84                	jmp    100332 <irqHandle+0x6e>
  1003ae:	66 90                	xchg   %ax,%ax

001003b0 <GProtectFaultHandle>:
  1003b0:	55                   	push   %ebp
  1003b1:	89 e5                	mov    %esp,%ebp
  1003b3:	83 ec 10             	sub    $0x10,%esp
  1003b6:	68 a2 00 00 00       	push   $0xa2
  1003bb:	68 e0 10 10 00       	push   $0x1010e0
  1003c0:	e8 b7 0b 00 00       	call   100f7c <abort>
  1003c5:	83 c4 10             	add    $0x10,%esp
  1003c8:	c9                   	leave  
  1003c9:	c3                   	ret    
  1003ca:	66 90                	xchg   %ax,%ax

001003cc <initIdt>:
  1003cc:	55                   	push   %ebp
  1003cd:	89 e5                	mov    %esp,%ebp
  1003cf:	53                   	push   %ebx
  1003d0:	ba a2 10 10 00       	mov    $0x1010a2,%edx
  1003d5:	89 d3                	mov    %edx,%ebx
  1003d7:	c1 ea 10             	shr    $0x10,%edx
  1003da:	b9 40 2a 10 00       	mov    $0x102a40,%ecx
  1003df:	b8 40 22 10 00       	mov    $0x102240,%eax
  1003e4:	66 89 18             	mov    %bx,(%eax)
  1003e7:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  1003ed:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  1003f1:	c6 40 05 8f          	movb   $0x8f,0x5(%eax)
  1003f5:	66 89 50 06          	mov    %dx,0x6(%eax)
  1003f9:	83 c0 08             	add    $0x8,%eax
  1003fc:	39 c1                	cmp    %eax,%ecx
  1003fe:	75 e4                	jne    1003e4 <initIdt+0x18>
  100400:	b8 4b 10 10 00       	mov    $0x10104b,%eax
  100405:	66 a3 40 22 10 00    	mov    %ax,0x102240
  10040b:	66 c7 05 42 22 10 00 	movw   $0x8,0x102242
  100412:	08 00 
  100414:	c6 05 44 22 10 00 00 	movb   $0x0,0x102244
  10041b:	c6 05 45 22 10 00 8f 	movb   $0x8f,0x102245
  100422:	c1 e8 10             	shr    $0x10,%eax
  100425:	66 a3 46 22 10 00    	mov    %ax,0x102246
  10042b:	b8 51 10 10 00       	mov    $0x101051,%eax
  100430:	66 a3 48 22 10 00    	mov    %ax,0x102248
  100436:	66 c7 05 4a 22 10 00 	movw   $0x8,0x10224a
  10043d:	08 00 
  10043f:	c6 05 4c 22 10 00 00 	movb   $0x0,0x10224c
  100446:	c6 05 4d 22 10 00 8f 	movb   $0x8f,0x10224d
  10044d:	c1 e8 10             	shr    $0x10,%eax
  100450:	66 a3 4e 22 10 00    	mov    %ax,0x10224e
  100456:	b8 57 10 10 00       	mov    $0x101057,%eax
  10045b:	66 a3 50 22 10 00    	mov    %ax,0x102250
  100461:	66 c7 05 52 22 10 00 	movw   $0x8,0x102252
  100468:	08 00 
  10046a:	c6 05 54 22 10 00 00 	movb   $0x0,0x102254
  100471:	c6 05 55 22 10 00 8f 	movb   $0x8f,0x102255
  100478:	c1 e8 10             	shr    $0x10,%eax
  10047b:	66 a3 56 22 10 00    	mov    %ax,0x102256
  100481:	b8 5d 10 10 00       	mov    $0x10105d,%eax
  100486:	66 a3 58 22 10 00    	mov    %ax,0x102258
  10048c:	66 c7 05 5a 22 10 00 	movw   $0x8,0x10225a
  100493:	08 00 
  100495:	c6 05 5c 22 10 00 00 	movb   $0x0,0x10225c
  10049c:	c6 05 5d 22 10 00 8f 	movb   $0x8f,0x10225d
  1004a3:	c1 e8 10             	shr    $0x10,%eax
  1004a6:	66 a3 5e 22 10 00    	mov    %ax,0x10225e
  1004ac:	b8 63 10 10 00       	mov    $0x101063,%eax
  1004b1:	66 a3 60 22 10 00    	mov    %ax,0x102260
  1004b7:	66 c7 05 62 22 10 00 	movw   $0x8,0x102262
  1004be:	08 00 
  1004c0:	c6 05 64 22 10 00 00 	movb   $0x0,0x102264
  1004c7:	c6 05 65 22 10 00 8f 	movb   $0x8f,0x102265
  1004ce:	c1 e8 10             	shr    $0x10,%eax
  1004d1:	66 a3 66 22 10 00    	mov    %ax,0x102266
  1004d7:	b8 69 10 10 00       	mov    $0x101069,%eax
  1004dc:	66 a3 68 22 10 00    	mov    %ax,0x102268
  1004e2:	66 c7 05 6a 22 10 00 	movw   $0x8,0x10226a
  1004e9:	08 00 
  1004eb:	c6 05 6c 22 10 00 00 	movb   $0x0,0x10226c
  1004f2:	c6 05 6d 22 10 00 8f 	movb   $0x8f,0x10226d
  1004f9:	c1 e8 10             	shr    $0x10,%eax
  1004fc:	66 a3 6e 22 10 00    	mov    %ax,0x10226e
  100502:	b8 6f 10 10 00       	mov    $0x10106f,%eax
  100507:	66 a3 70 22 10 00    	mov    %ax,0x102270
  10050d:	66 c7 05 72 22 10 00 	movw   $0x8,0x102272
  100514:	08 00 
  100516:	c6 05 74 22 10 00 00 	movb   $0x0,0x102274
  10051d:	c6 05 75 22 10 00 8f 	movb   $0x8f,0x102275
  100524:	c1 e8 10             	shr    $0x10,%eax
  100527:	66 a3 76 22 10 00    	mov    %ax,0x102276
  10052d:	b8 75 10 10 00       	mov    $0x101075,%eax
  100532:	66 a3 78 22 10 00    	mov    %ax,0x102278
  100538:	66 c7 05 7a 22 10 00 	movw   $0x8,0x10227a
  10053f:	08 00 
  100541:	c6 05 7c 22 10 00 00 	movb   $0x0,0x10227c
  100548:	c6 05 7d 22 10 00 8f 	movb   $0x8f,0x10227d
  10054f:	c1 e8 10             	shr    $0x10,%eax
  100552:	66 a3 7e 22 10 00    	mov    %ax,0x10227e
  100558:	b8 7b 10 10 00       	mov    $0x10107b,%eax
  10055d:	66 a3 80 22 10 00    	mov    %ax,0x102280
  100563:	66 c7 05 82 22 10 00 	movw   $0x8,0x102282
  10056a:	08 00 
  10056c:	c6 05 84 22 10 00 00 	movb   $0x0,0x102284
  100573:	c6 05 85 22 10 00 8f 	movb   $0x8f,0x102285
  10057a:	c1 e8 10             	shr    $0x10,%eax
  10057d:	66 a3 86 22 10 00    	mov    %ax,0x102286
  100583:	b8 7f 10 10 00       	mov    $0x10107f,%eax
  100588:	66 a3 88 22 10 00    	mov    %ax,0x102288
  10058e:	66 c7 05 8a 22 10 00 	movw   $0x8,0x10228a
  100595:	08 00 
  100597:	c6 05 8c 22 10 00 00 	movb   $0x0,0x10228c
  10059e:	c6 05 8d 22 10 00 8f 	movb   $0x8f,0x10228d
  1005a5:	c1 e8 10             	shr    $0x10,%eax
  1005a8:	66 a3 8e 22 10 00    	mov    %ax,0x10228e
  1005ae:	b8 85 10 10 00       	mov    $0x101085,%eax
  1005b3:	66 a3 90 22 10 00    	mov    %ax,0x102290
  1005b9:	66 c7 05 92 22 10 00 	movw   $0x8,0x102292
  1005c0:	08 00 
  1005c2:	c6 05 94 22 10 00 00 	movb   $0x0,0x102294
  1005c9:	c6 05 95 22 10 00 8f 	movb   $0x8f,0x102295
  1005d0:	c1 e8 10             	shr    $0x10,%eax
  1005d3:	66 a3 96 22 10 00    	mov    %ax,0x102296
  1005d9:	b8 89 10 10 00       	mov    $0x101089,%eax
  1005de:	66 a3 98 22 10 00    	mov    %ax,0x102298
  1005e4:	66 c7 05 9a 22 10 00 	movw   $0x8,0x10229a
  1005eb:	08 00 
  1005ed:	c6 05 9c 22 10 00 00 	movb   $0x0,0x10229c
  1005f4:	c6 05 9d 22 10 00 8f 	movb   $0x8f,0x10229d
  1005fb:	c1 e8 10             	shr    $0x10,%eax
  1005fe:	66 a3 9e 22 10 00    	mov    %ax,0x10229e
  100604:	b8 8d 10 10 00       	mov    $0x10108d,%eax
  100609:	66 a3 a0 22 10 00    	mov    %ax,0x1022a0
  10060f:	66 c7 05 a2 22 10 00 	movw   $0x8,0x1022a2
  100616:	08 00 
  100618:	c6 05 a4 22 10 00 00 	movb   $0x0,0x1022a4
  10061f:	c6 05 a5 22 10 00 8f 	movb   $0x8f,0x1022a5
  100626:	c1 e8 10             	shr    $0x10,%eax
  100629:	66 a3 a6 22 10 00    	mov    %ax,0x1022a6
  10062f:	66 c7 05 aa 22 10 00 	movw   $0x8,0x1022aa
  100636:	08 00 
  100638:	c6 05 ac 22 10 00 00 	movb   $0x0,0x1022ac
  10063f:	c6 05 ad 22 10 00 8f 	movb   $0x8f,0x1022ad
  100646:	b8 95 10 10 00       	mov    $0x101095,%eax
  10064b:	66 a3 b0 22 10 00    	mov    %ax,0x1022b0
  100651:	66 c7 05 b2 22 10 00 	movw   $0x8,0x1022b2
  100658:	08 00 
  10065a:	c6 05 b4 22 10 00 00 	movb   $0x0,0x1022b4
  100661:	c6 05 b5 22 10 00 8f 	movb   $0x8f,0x1022b5
  100668:	c1 e8 10             	shr    $0x10,%eax
  10066b:	66 a3 b6 22 10 00    	mov    %ax,0x1022b6
  100671:	b8 a8 10 10 00       	mov    $0x1010a8,%eax
  100676:	66 a3 a8 22 10 00    	mov    %ax,0x1022a8
  10067c:	c1 e8 10             	shr    $0x10,%eax
  10067f:	66 a3 ae 22 10 00    	mov    %ax,0x1022ae
  100685:	b8 ac 10 10 00       	mov    $0x1010ac,%eax
  10068a:	66 a3 40 26 10 00    	mov    %ax,0x102640
  100690:	66 c7 05 42 26 10 00 	movw   $0x8,0x102642
  100697:	08 00 
  100699:	c6 05 44 26 10 00 00 	movb   $0x0,0x102644
  1006a0:	c6 05 45 26 10 00 ef 	movb   $0xef,0x102645
  1006a7:	c1 e8 10             	shr    $0x10,%eax
  1006aa:	66 a3 46 26 10 00    	mov    %ax,0x102646
  1006b0:	b8 99 10 10 00       	mov    $0x101099,%eax
  1006b5:	66 a3 40 23 10 00    	mov    %ax,0x102340
  1006bb:	66 c7 05 42 23 10 00 	movw   $0x8,0x102342
  1006c2:	08 00 
  1006c4:	c6 05 44 23 10 00 00 	movb   $0x0,0x102344
  1006cb:	c6 05 45 23 10 00 8e 	movb   $0x8e,0x102345
  1006d2:	c1 e8 10             	shr    $0x10,%eax
  1006d5:	66 a3 46 23 10 00    	mov    %ax,0x102346
  1006db:	66 c7 05 24 21 10 00 	movw   $0x7ff,0x102124
  1006e2:	ff 07 
  1006e4:	b8 40 22 10 00       	mov    $0x102240,%eax
  1006e9:	66 a3 26 21 10 00    	mov    %ax,0x102126
  1006ef:	c1 e8 10             	shr    $0x10,%eax
  1006f2:	66 a3 28 21 10 00    	mov    %ax,0x102128
  1006f8:	b8 24 21 10 00       	mov    $0x102124,%eax
  1006fd:	0f 01 18             	lidtl  (%eax)
  100700:	5b                   	pop    %ebx
  100701:	5d                   	pop    %ebp
  100702:	c3                   	ret    
  100703:	90                   	nop

00100704 <initSerial>:
  100704:	55                   	push   %ebp
  100705:	89 e5                	mov    %esp,%ebp
  100707:	ba f9 03 00 00       	mov    $0x3f9,%edx
  10070c:	31 c0                	xor    %eax,%eax
  10070e:	ee                   	out    %al,(%dx)
  10070f:	ba fb 03 00 00       	mov    $0x3fb,%edx
  100714:	b0 80                	mov    $0x80,%al
  100716:	ee                   	out    %al,(%dx)
  100717:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10071c:	b0 01                	mov    $0x1,%al
  10071e:	ee                   	out    %al,(%dx)
  10071f:	ba f9 03 00 00       	mov    $0x3f9,%edx
  100724:	31 c0                	xor    %eax,%eax
  100726:	ee                   	out    %al,(%dx)
  100727:	ba fb 03 00 00       	mov    $0x3fb,%edx
  10072c:	b0 03                	mov    $0x3,%al
  10072e:	ee                   	out    %al,(%dx)
  10072f:	ba fa 03 00 00       	mov    $0x3fa,%edx
  100734:	b0 c7                	mov    $0xc7,%al
  100736:	ee                   	out    %al,(%dx)
  100737:	ba fc 03 00 00       	mov    $0x3fc,%edx
  10073c:	b0 0b                	mov    $0xb,%al
  10073e:	ee                   	out    %al,(%dx)
  10073f:	5d                   	pop    %ebp
  100740:	c3                   	ret    
  100741:	8d 76 00             	lea    0x0(%esi),%esi

00100744 <putChar>:
  100744:	55                   	push   %ebp
  100745:	89 e5                	mov    %esp,%ebp
  100747:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10074a:	ba fd 03 00 00       	mov    $0x3fd,%edx
  10074f:	90                   	nop
  100750:	ec                   	in     (%dx),%al
  100751:	a8 20                	test   $0x20,%al
  100753:	74 fb                	je     100750 <putChar+0xc>
  100755:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10075a:	88 c8                	mov    %cl,%al
  10075c:	ee                   	out    %al,(%dx)
  10075d:	5d                   	pop    %ebp
  10075e:	c3                   	ret    
  10075f:	90                   	nop

00100760 <initProcess>:
  100760:	55                   	push   %ebp
  100761:	89 e5                	mov    %esp,%ebp
  100763:	57                   	push   %edi
  100764:	56                   	push   %esi
  100765:	53                   	push   %ebx
  100766:	83 ec 0c             	sub    $0xc,%esp
  100769:	c7 05 90 6a 10 00 00 	movl   $0x0,0x106a90
  100770:	00 00 00 
  100773:	c7 05 94 6a 10 00 05 	movl   $0x5,0x106a94
  10077a:	00 00 00 
  10077d:	b9 c0 6a 10 00       	mov    $0x106ac0,%ecx
  100782:	31 ff                	xor    %edi,%edi
  100784:	c7 81 50 40 00 00 03 	movl   $0x3,0x4050(%ecx)
  10078b:	00 00 00 
  10078e:	c7 81 24 40 00 00 23 	movl   $0x23,0x4024(%ecx)
  100795:	00 00 00 
  100798:	c7 81 28 40 00 00 23 	movl   $0x23,0x4028(%ecx)
  10079f:	00 00 00 
  1007a2:	c7 81 2c 40 00 00 23 	movl   $0x23,0x402c(%ecx)
  1007a9:	00 00 00 
  1007ac:	c7 81 30 40 00 00 23 	movl   $0x23,0x4030(%ecx)
  1007b3:	00 00 00 
  1007b6:	c7 81 40 40 00 00 1b 	movl   $0x1b,0x4040(%ecx)
  1007bd:	00 00 00 
  1007c0:	c7 81 44 40 00 00 02 	movl   $0x202,0x4044(%ecx)
  1007c7:	02 00 00 
  1007ca:	c7 81 48 40 00 00 00 	movl   $0x100000,0x4048(%ecx)
  1007d1:	00 10 00 
  1007d4:	c7 81 4c 40 00 00 1b 	movl   $0x1b,0x404c(%ecx)
  1007db:	00 00 00 
  1007de:	8d 77 01             	lea    0x1(%edi),%esi
  1007e1:	89 b1 5c 40 00 00    	mov    %esi,0x405c(%ecx)
  1007e7:	89 fb                	mov    %edi,%ebx
  1007e9:	c1 e3 14             	shl    $0x14,%ebx
  1007ec:	81 c3 00 00 20 00    	add    $0x200000,%ebx
  1007f2:	c1 eb 10             	shr    $0x10,%ebx
  1007f5:	89 fa                	mov    %edi,%edx
  1007f7:	c1 e2 08             	shl    $0x8,%edx
  1007fa:	01 fa                	add    %edi,%edx
  1007fc:	01 d2                	add    %edx,%edx
  1007fe:	01 fa                	add    %edi,%edx
  100800:	8d 04 12             	lea    (%edx,%edx,1),%eax
  100803:	01 f8                	add    %edi,%eax
  100805:	c1 e0 04             	shl    $0x4,%eax
  100808:	8d 90 c0 6a 10 00    	lea    0x106ac0(%eax),%edx
  10080e:	66 c7 80 20 ab 10 00 	movw   $0xffff,0x10ab20(%eax)
  100815:	ff ff 
  100817:	66 c7 80 22 ab 10 00 	movw   $0x0,0x10ab22(%eax)
  10081e:	00 00 
  100820:	88 98 24 ab 10 00    	mov    %bl,0x10ab24(%eax)
  100826:	c6 80 25 ab 10 00 fa 	movb   $0xfa,0x10ab25(%eax)
  10082d:	c6 80 26 ab 10 00 cf 	movb   $0xcf,0x10ab26(%eax)
  100834:	c6 80 27 ab 10 00 00 	movb   $0x0,0x10ab27(%eax)
  10083b:	66 c7 80 28 ab 10 00 	movw   $0xffff,0x10ab28(%eax)
  100842:	ff ff 
  100844:	66 c7 80 2a ab 10 00 	movw   $0x0,0x10ab2a(%eax)
  10084b:	00 00 
  10084d:	88 98 2c ab 10 00    	mov    %bl,0x10ab2c(%eax)
  100853:	c6 80 2d ab 10 00 f2 	movb   $0xf2,0x10ab2d(%eax)
  10085a:	c6 80 2e ab 10 00 cf 	movb   $0xcf,0x10ab2e(%eax)
  100861:	c6 82 6f 40 00 00 00 	movb   $0x0,0x406f(%edx)
  100868:	81 c1 70 40 00 00    	add    $0x4070,%ecx
  10086e:	89 f7                	mov    %esi,%edi
  100870:	83 fe 02             	cmp    $0x2,%esi
  100873:	0f 85 0b ff ff ff    	jne    100784 <initProcess+0x24>
  100879:	50                   	push   %eax
  10087a:	68 00 92 01 00       	push   $0x19200
  10087f:	68 00 02 00 00       	push   $0x200
  100884:	68 00 80 00 00       	push   $0x8000
  100889:	e8 c6 02 00 00       	call   100b54 <readseg>
  10088e:	5a                   	pop    %edx
  10088f:	59                   	pop    %ecx
  100890:	68 00 00 20 00       	push   $0x200000
  100895:	68 00 80 00 00       	push   $0x8000
  10089a:	e8 11 03 00 00       	call   100bb0 <loader>
  10089f:	a3 fc aa 10 00       	mov    %eax,0x10aafc
  1008a4:	c7 05 10 ab 10 00 03 	movl   $0x3,0x10ab10
  1008ab:	00 00 00 
  1008ae:	c7 05 b0 6a 10 00 40 	movl   $0x102a40,0x106ab0
  1008b5:	2a 10 00 
  1008b8:	83 c4 10             	add    $0x10,%esp
  1008bb:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1008be:	5b                   	pop    %ebx
  1008bf:	5e                   	pop    %esi
  1008c0:	5f                   	pop    %edi
  1008c1:	5d                   	pop    %ebp
  1008c2:	c3                   	ret    
  1008c3:	90                   	nop

001008c4 <schedule>:
  1008c4:	55                   	push   %ebp
  1008c5:	89 e5                	mov    %esp,%ebp
  1008c7:	83 3d 10 ab 10 00 02 	cmpl   $0x2,0x10ab10
  1008ce:	74 20                	je     1008f0 <schedule+0x2c>
  1008d0:	83 3d 80 eb 10 00 02 	cmpl   $0x2,0x10eb80
  1008d7:	74 73                	je     10094c <schedule+0x88>
  1008d9:	c7 05 b0 6a 10 00 40 	movl   $0x102a40,0x106ab0
  1008e0:	2a 10 00 
  1008e3:	c7 05 94 6a 10 00 0a 	movl   $0xa,0x106a94
  1008ea:	00 00 00 
  1008ed:	5d                   	pop    %ebp
  1008ee:	c3                   	ret    
  1008ef:	90                   	nop
  1008f0:	b9 c0 6a 10 00       	mov    $0x106ac0,%ecx
  1008f5:	89 0d b0 6a 10 00    	mov    %ecx,0x106ab0
  1008fb:	c7 81 54 40 00 00 0a 	movl   $0xa,0x4054(%ecx)
  100902:	00 00 00 
  100905:	c7 81 50 40 00 00 00 	movl   $0x0,0x4050(%ecx)
  10090c:	00 00 00 
  10090f:	8d 81 50 40 00 00    	lea    0x4050(%ecx),%eax
  100915:	a3 e4 eb 10 00       	mov    %eax,0x10ebe4
  10091a:	8b 81 60 40 00 00    	mov    0x4060(%ecx),%eax
  100920:	8b 91 64 40 00 00    	mov    0x4064(%ecx),%edx
  100926:	a3 b8 eb 10 00       	mov    %eax,0x10ebb8
  10092b:	89 15 bc eb 10 00    	mov    %edx,0x10ebbc
  100931:	8b 81 68 40 00 00    	mov    0x4068(%ecx),%eax
  100937:	8b 91 6c 40 00 00    	mov    0x406c(%ecx),%edx
  10093d:	a3 c0 eb 10 00       	mov    %eax,0x10ebc0
  100942:	89 15 c4 eb 10 00    	mov    %edx,0x10ebc4
  100948:	5d                   	pop    %ebp
  100949:	c3                   	ret    
  10094a:	66 90                	xchg   %ax,%ax
  10094c:	b9 30 ab 10 00       	mov    $0x10ab30,%ecx
  100951:	eb a2                	jmp    1008f5 <schedule+0x31>
  100953:	90                   	nop

00100954 <waitDisk>:
  100954:	55                   	push   %ebp
  100955:	89 e5                	mov    %esp,%ebp
  100957:	ba f7 01 00 00       	mov    $0x1f7,%edx
  10095c:	ec                   	in     (%dx),%al
  10095d:	83 e0 c0             	and    $0xffffffc0,%eax
  100960:	3c 40                	cmp    $0x40,%al
  100962:	75 f8                	jne    10095c <waitDisk+0x8>
  100964:	5d                   	pop    %ebp
  100965:	c3                   	ret    
  100966:	66 90                	xchg   %ax,%ax

00100968 <readSect>:
  100968:	55                   	push   %ebp
  100969:	89 e5                	mov    %esp,%ebp
  10096b:	53                   	push   %ebx
  10096c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  10096f:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100974:	ec                   	in     (%dx),%al
  100975:	83 e0 c0             	and    $0xffffffc0,%eax
  100978:	3c 40                	cmp    $0x40,%al
  10097a:	75 f8                	jne    100974 <readSect+0xc>
  10097c:	ba f2 01 00 00       	mov    $0x1f2,%edx
  100981:	b0 01                	mov    $0x1,%al
  100983:	ee                   	out    %al,(%dx)
  100984:	ba f3 01 00 00       	mov    $0x1f3,%edx
  100989:	88 c8                	mov    %cl,%al
  10098b:	ee                   	out    %al,(%dx)
  10098c:	89 c8                	mov    %ecx,%eax
  10098e:	c1 f8 08             	sar    $0x8,%eax
  100991:	ba f4 01 00 00       	mov    $0x1f4,%edx
  100996:	ee                   	out    %al,(%dx)
  100997:	89 c8                	mov    %ecx,%eax
  100999:	c1 f8 10             	sar    $0x10,%eax
  10099c:	ba f5 01 00 00       	mov    $0x1f5,%edx
  1009a1:	ee                   	out    %al,(%dx)
  1009a2:	89 c8                	mov    %ecx,%eax
  1009a4:	c1 f8 18             	sar    $0x18,%eax
  1009a7:	83 c8 e0             	or     $0xffffffe0,%eax
  1009aa:	ba f6 01 00 00       	mov    $0x1f6,%edx
  1009af:	ee                   	out    %al,(%dx)
  1009b0:	ba f7 01 00 00       	mov    $0x1f7,%edx
  1009b5:	b0 20                	mov    $0x20,%al
  1009b7:	ee                   	out    %al,(%dx)
  1009b8:	ec                   	in     (%dx),%al
  1009b9:	83 e0 c0             	and    $0xffffffc0,%eax
  1009bc:	3c 40                	cmp    $0x40,%al
  1009be:	75 f8                	jne    1009b8 <readSect+0x50>
  1009c0:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1009c3:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  1009c9:	ba f0 01 00 00       	mov    $0x1f0,%edx
  1009ce:	66 90                	xchg   %ax,%ax
  1009d0:	ed                   	in     (%dx),%eax
  1009d1:	89 01                	mov    %eax,(%ecx)
  1009d3:	83 c1 04             	add    $0x4,%ecx
  1009d6:	39 d9                	cmp    %ebx,%ecx
  1009d8:	75 f6                	jne    1009d0 <readSect+0x68>
  1009da:	5b                   	pop    %ebx
  1009db:	5d                   	pop    %ebp
  1009dc:	c3                   	ret    
  1009dd:	8d 76 00             	lea    0x0(%esi),%esi

001009e0 <initSeg>:
  1009e0:	55                   	push   %ebp
  1009e1:	89 e5                	mov    %esp,%ebp
  1009e3:	ba a0 eb 10 00       	mov    $0x10eba0,%edx
  1009e8:	66 c7 05 a8 eb 10 00 	movw   $0xffff,0x10eba8
  1009ef:	ff ff 
  1009f1:	66 c7 05 aa eb 10 00 	movw   $0x0,0x10ebaa
  1009f8:	00 00 
  1009fa:	c6 05 ac eb 10 00 00 	movb   $0x0,0x10ebac
  100a01:	c6 05 ad eb 10 00 9a 	movb   $0x9a,0x10ebad
  100a08:	c6 05 ae eb 10 00 cf 	movb   $0xcf,0x10ebae
  100a0f:	c6 05 af eb 10 00 00 	movb   $0x0,0x10ebaf
  100a16:	66 c7 05 b0 eb 10 00 	movw   $0xffff,0x10ebb0
  100a1d:	ff ff 
  100a1f:	66 c7 05 b2 eb 10 00 	movw   $0x0,0x10ebb2
  100a26:	00 00 
  100a28:	c6 05 b4 eb 10 00 00 	movb   $0x0,0x10ebb4
  100a2f:	c6 05 b5 eb 10 00 92 	movb   $0x92,0x10ebb5
  100a36:	c6 05 b6 eb 10 00 cf 	movb   $0xcf,0x10ebb6
  100a3d:	c6 05 b7 eb 10 00 00 	movb   $0x0,0x10ebb7
  100a44:	66 c7 05 b8 eb 10 00 	movw   $0xffff,0x10ebb8
  100a4b:	ff ff 
  100a4d:	66 c7 05 ba eb 10 00 	movw   $0x0,0x10ebba
  100a54:	00 00 
  100a56:	c6 05 bc eb 10 00 00 	movb   $0x0,0x10ebbc
  100a5d:	c6 05 bd eb 10 00 fa 	movb   $0xfa,0x10ebbd
  100a64:	c6 05 be eb 10 00 cf 	movb   $0xcf,0x10ebbe
  100a6b:	c6 05 bf eb 10 00 00 	movb   $0x0,0x10ebbf
  100a72:	66 c7 05 c0 eb 10 00 	movw   $0xffff,0x10ebc0
  100a79:	ff ff 
  100a7b:	66 c7 05 c2 eb 10 00 	movw   $0x0,0x10ebc2
  100a82:	00 00 
  100a84:	c6 05 c4 eb 10 00 00 	movb   $0x0,0x10ebc4
  100a8b:	c6 05 c5 eb 10 00 f2 	movb   $0xf2,0x10ebc5
  100a92:	c6 05 c6 eb 10 00 cf 	movb   $0xcf,0x10ebc6
  100a99:	c6 05 c7 eb 10 00 00 	movb   $0x0,0x10ebc7
  100aa0:	66 c7 05 c8 eb 10 00 	movw   $0x63,0x10ebc8
  100aa7:	63 00 
  100aa9:	b8 e0 eb 10 00       	mov    $0x10ebe0,%eax
  100aae:	66 a3 ca eb 10 00    	mov    %ax,0x10ebca
  100ab4:	89 c1                	mov    %eax,%ecx
  100ab6:	c1 e9 10             	shr    $0x10,%ecx
  100ab9:	88 0d cc eb 10 00    	mov    %cl,0x10ebcc
  100abf:	c6 05 cd eb 10 00 89 	movb   $0x89,0x10ebcd
  100ac6:	c6 05 ce eb 10 00 40 	movb   $0x40,0x10ebce
  100acd:	c1 e8 18             	shr    $0x18,%eax
  100ad0:	a2 cf eb 10 00       	mov    %al,0x10ebcf
  100ad5:	66 c7 05 2c 21 10 00 	movw   $0x37,0x10212c
  100adc:	37 00 
  100ade:	66 89 15 2e 21 10 00 	mov    %dx,0x10212e
  100ae5:	c1 ea 10             	shr    $0x10,%edx
  100ae8:	66 89 15 30 21 10 00 	mov    %dx,0x102130
  100aef:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  100af4:	0f 01 10             	lgdtl  (%eax)
  100af7:	b8 28 00 00 00       	mov    $0x28,%eax
  100afc:	0f 00 d8             	ltr    %ax
  100aff:	c7 05 e8 eb 10 00 10 	movl   $0x10,0x10ebe8
  100b06:	00 00 00 
  100b09:	c7 05 e4 eb 10 00 90 	movl   $0x106a90,0x10ebe4
  100b10:	6a 10 00 
  100b13:	b8 10 00 00 00       	mov    $0x10,%eax
  100b18:	8e c0                	mov    %eax,%es
  100b1a:	8e d8                	mov    %eax,%ds
  100b1c:	8e e8                	mov    %eax,%gs
  100b1e:	8e e0                	mov    %eax,%fs
  100b20:	8e d0                	mov    %eax,%ss
  100b22:	31 c0                	xor    %eax,%eax
  100b24:	0f 00 d0             	lldt   %ax
  100b27:	5d                   	pop    %ebp
  100b28:	c3                   	ret    
  100b29:	8d 76 00             	lea    0x0(%esi),%esi

00100b2c <enterUserSpace>:
  100b2c:	55                   	push   %ebp
  100b2d:	89 e5                	mov    %esp,%ebp
  100b2f:	b8 23 00 00 00       	mov    $0x23,%eax
  100b34:	fa                   	cli    
  100b35:	8e c0                	mov    %eax,%es
  100b37:	8e e0                	mov    %eax,%fs
  100b39:	8e d8                	mov    %eax,%ds
  100b3b:	8e e8                	mov    %eax,%gs
  100b3d:	66 6a 23             	pushw  $0x23
  100b40:	68 00 00 40 00       	push   $0x400000
  100b45:	68 02 02 00 00       	push   $0x202
  100b4a:	6a 1b                	push   $0x1b
  100b4c:	ff 75 08             	pushl  0x8(%ebp)
  100b4f:	fb                   	sti    
  100b50:	cf                   	iret   
  100b51:	5d                   	pop    %ebp
  100b52:	c3                   	ret    
  100b53:	90                   	nop

00100b54 <readseg>:
  100b54:	55                   	push   %ebp
  100b55:	89 e5                	mov    %esp,%ebp
  100b57:	57                   	push   %edi
  100b58:	56                   	push   %esi
  100b59:	53                   	push   %ebx
  100b5a:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100b5d:	8b 7d 10             	mov    0x10(%ebp),%edi
  100b60:	8b 75 0c             	mov    0xc(%ebp),%esi
  100b63:	01 de                	add    %ebx,%esi
  100b65:	89 f8                	mov    %edi,%eax
  100b67:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100b6c:	78 2a                	js     100b98 <readseg+0x44>
  100b6e:	29 c3                	sub    %eax,%ebx
  100b70:	85 ff                	test   %edi,%edi
  100b72:	78 31                	js     100ba5 <readseg+0x51>
  100b74:	c1 ff 09             	sar    $0x9,%edi
  100b77:	39 de                	cmp    %ebx,%esi
  100b79:	76 15                	jbe    100b90 <readseg+0x3c>
  100b7b:	90                   	nop
  100b7c:	57                   	push   %edi
  100b7d:	53                   	push   %ebx
  100b7e:	e8 e5 fd ff ff       	call   100968 <readSect>
  100b83:	81 c3 00 02 00 00    	add    $0x200,%ebx
  100b89:	47                   	inc    %edi
  100b8a:	58                   	pop    %eax
  100b8b:	5a                   	pop    %edx
  100b8c:	39 de                	cmp    %ebx,%esi
  100b8e:	77 ec                	ja     100b7c <readseg+0x28>
  100b90:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100b93:	5b                   	pop    %ebx
  100b94:	5e                   	pop    %esi
  100b95:	5f                   	pop    %edi
  100b96:	5d                   	pop    %ebp
  100b97:	c3                   	ret    
  100b98:	48                   	dec    %eax
  100b99:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100b9e:	40                   	inc    %eax
  100b9f:	29 c3                	sub    %eax,%ebx
  100ba1:	85 ff                	test   %edi,%edi
  100ba3:	79 cf                	jns    100b74 <readseg+0x20>
  100ba5:	81 c7 ff 01 00 00    	add    $0x1ff,%edi
  100bab:	eb c7                	jmp    100b74 <readseg+0x20>
  100bad:	8d 76 00             	lea    0x0(%esi),%esi

00100bb0 <loader>:
  100bb0:	55                   	push   %ebp
  100bb1:	89 e5                	mov    %esp,%ebp
  100bb3:	57                   	push   %edi
  100bb4:	56                   	push   %esi
  100bb5:	53                   	push   %ebx
  100bb6:	83 ec 2c             	sub    $0x2c,%esp
  100bb9:	8b 55 08             	mov    0x8(%ebp),%edx
  100bbc:	8b 42 2c             	mov    0x2c(%edx),%eax
  100bbf:	66 83 f8 ff          	cmp    $0xffff,%ax
  100bc3:	0f 84 8b 00 00 00    	je     100c54 <loader+0xa4>
  100bc9:	0f b7 c8             	movzwl %ax,%ecx
  100bcc:	85 c9                	test   %ecx,%ecx
  100bce:	74 72                	je     100c42 <loader+0x92>
  100bd0:	31 ff                	xor    %edi,%edi
  100bd2:	89 d6                	mov    %edx,%esi
  100bd4:	eb 07                	jmp    100bdd <loader+0x2d>
  100bd6:	66 90                	xchg   %ax,%ax
  100bd8:	47                   	inc    %edi
  100bd9:	39 cf                	cmp    %ecx,%edi
  100bdb:	7d 63                	jge    100c40 <loader+0x90>
  100bdd:	0f b7 46 2a          	movzwl 0x2a(%esi),%eax
  100be1:	0f af c7             	imul   %edi,%eax
  100be4:	03 46 1c             	add    0x1c(%esi),%eax
  100be7:	01 f0                	add    %esi,%eax
  100be9:	83 38 01             	cmpl   $0x1,(%eax)
  100bec:	75 ea                	jne    100bd8 <loader+0x28>
  100bee:	89 4d d0             	mov    %ecx,-0x30(%ebp)
  100bf1:	8b 55 0c             	mov    0xc(%ebp),%edx
  100bf4:	03 50 08             	add    0x8(%eax),%edx
  100bf7:	8b 58 10             	mov    0x10(%eax),%ebx
  100bfa:	8b 48 14             	mov    0x14(%eax),%ecx
  100bfd:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  100c00:	51                   	push   %ecx
  100c01:	8b 40 04             	mov    0x4(%eax),%eax
  100c04:	05 00 92 01 00       	add    $0x19200,%eax
  100c09:	50                   	push   %eax
  100c0a:	53                   	push   %ebx
  100c0b:	52                   	push   %edx
  100c0c:	89 55 cc             	mov    %edx,-0x34(%ebp)
  100c0f:	e8 40 ff ff ff       	call   100b54 <readseg>
  100c14:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100c17:	29 d8                	sub    %ebx,%eax
  100c19:	83 c4 10             	add    $0x10,%esp
  100c1c:	85 c0                	test   %eax,%eax
  100c1e:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  100c21:	7e b5                	jle    100bd8 <loader+0x28>
  100c23:	8b 55 cc             	mov    -0x34(%ebp),%edx
  100c26:	01 d3                	add    %edx,%ebx
  100c28:	03 55 d4             	add    -0x2c(%ebp),%edx
  100c2b:	39 d3                	cmp    %edx,%ebx
  100c2d:	73 a9                	jae    100bd8 <loader+0x28>
  100c2f:	90                   	nop
  100c30:	43                   	inc    %ebx
  100c31:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
  100c35:	39 d3                	cmp    %edx,%ebx
  100c37:	75 f7                	jne    100c30 <loader+0x80>
  100c39:	47                   	inc    %edi
  100c3a:	39 cf                	cmp    %ecx,%edi
  100c3c:	7c 9f                	jl     100bdd <loader+0x2d>
  100c3e:	66 90                	xchg   %ax,%ax
  100c40:	89 f2                	mov    %esi,%edx
  100c42:	8b 42 18             	mov    0x18(%edx),%eax
  100c45:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100c48:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100c4b:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100c4e:	5b                   	pop    %ebx
  100c4f:	5e                   	pop    %esi
  100c50:	5f                   	pop    %edi
  100c51:	5d                   	pop    %ebp
  100c52:	c3                   	ret    
  100c53:	90                   	nop
  100c54:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  100c57:	83 ec 08             	sub    $0x8,%esp
  100c5a:	6a 7e                	push   $0x7e
  100c5c:	68 19 11 10 00       	push   $0x101119
  100c61:	e8 16 03 00 00       	call   100f7c <abort>
  100c66:	83 c4 10             	add    $0x10,%esp
  100c69:	b9 ff ff 00 00       	mov    $0xffff,%ecx
  100c6e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100c71:	e9 5a ff ff ff       	jmp    100bd0 <loader+0x20>
  100c76:	66 90                	xchg   %ax,%ax

00100c78 <loadUMain>:
  100c78:	55                   	push   %ebp
  100c79:	89 e5                	mov    %esp,%ebp
  100c7b:	83 ec 18             	sub    $0x18,%esp
  100c7e:	68 c9 00 00 00       	push   $0xc9
  100c83:	68 00 80 00 00       	push   $0x8000
  100c88:	e8 db fc ff ff       	call   100968 <readSect>
  100c8d:	6a 00                	push   $0x0
  100c8f:	68 00 80 00 00       	push   $0x8000
  100c94:	e8 17 ff ff ff       	call   100bb0 <loader>
  100c99:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c9c:	b8 23 00 00 00       	mov    $0x23,%eax
  100ca1:	fa                   	cli    
  100ca2:	8e c0                	mov    %eax,%es
  100ca4:	8e e0                	mov    %eax,%fs
  100ca6:	8e d8                	mov    %eax,%ds
  100ca8:	8e e8                	mov    %eax,%gs
  100caa:	66 6a 23             	pushw  $0x23
  100cad:	68 00 00 40 00       	push   $0x400000
  100cb2:	68 02 02 00 00       	push   $0x202
  100cb7:	6a 1b                	push   $0x1b
  100cb9:	ff 75 f4             	pushl  -0xc(%ebp)
  100cbc:	fb                   	sti    
  100cbd:	cf                   	iret   
  100cbe:	83 c4 10             	add    $0x10,%esp
  100cc1:	c9                   	leave  
  100cc2:	c3                   	ret    
  100cc3:	90                   	nop

00100cc4 <addString2Buff>:
  100cc4:	55                   	push   %ebp
  100cc5:	89 e5                	mov    %esp,%ebp
  100cc7:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100cca:	8a 11                	mov    (%ecx),%dl
  100ccc:	84 d2                	test   %dl,%dl
  100cce:	74 1b                	je     100ceb <addString2Buff+0x27>
  100cd0:	a1 08 22 10 00       	mov    0x102208,%eax
  100cd5:	29 c1                	sub    %eax,%ecx
  100cd7:	90                   	nop
  100cd8:	40                   	inc    %eax
  100cd9:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100cdf:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  100ce2:	84 d2                	test   %dl,%dl
  100ce4:	75 f2                	jne    100cd8 <addString2Buff+0x14>
  100ce6:	a3 08 22 10 00       	mov    %eax,0x102208
  100ceb:	5d                   	pop    %ebp
  100cec:	c3                   	ret    
  100ced:	8d 76 00             	lea    0x0(%esi),%esi

00100cf0 <addCh2Buff>:
  100cf0:	55                   	push   %ebp
  100cf1:	89 e5                	mov    %esp,%ebp
  100cf3:	a1 08 22 10 00       	mov    0x102208,%eax
  100cf8:	8d 50 01             	lea    0x1(%eax),%edx
  100cfb:	89 15 08 22 10 00    	mov    %edx,0x102208
  100d01:	8b 55 08             	mov    0x8(%ebp),%edx
  100d04:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100d0a:	5d                   	pop    %ebp
  100d0b:	c3                   	ret    

00100d0c <addDec2Buff>:
  100d0c:	55                   	push   %ebp
  100d0d:	89 e5                	mov    %esp,%ebp
  100d0f:	56                   	push   %esi
  100d10:	53                   	push   %ebx
  100d11:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100d14:	85 db                	test   %ebx,%ebx
  100d16:	0f 89 92 00 00 00    	jns    100dae <addDec2Buff+0xa2>
  100d1c:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  100d22:	74 58                	je     100d7c <addDec2Buff+0x70>
  100d24:	a1 08 22 10 00       	mov    0x102208,%eax
  100d29:	c6 80 40 21 10 00 2d 	movb   $0x2d,0x102140(%eax)
  100d30:	40                   	inc    %eax
  100d31:	f7 db                	neg    %ebx
  100d33:	a3 08 22 10 00       	mov    %eax,0x102208
  100d38:	83 ec 0c             	sub    $0xc,%esp
  100d3b:	b8 67 66 66 66       	mov    $0x66666667,%eax
  100d40:	f7 eb                	imul   %ebx
  100d42:	89 d6                	mov    %edx,%esi
  100d44:	c1 fe 02             	sar    $0x2,%esi
  100d47:	89 d8                	mov    %ebx,%eax
  100d49:	c1 f8 1f             	sar    $0x1f,%eax
  100d4c:	29 c6                	sub    %eax,%esi
  100d4e:	56                   	push   %esi
  100d4f:	e8 b8 ff ff ff       	call   100d0c <addDec2Buff>
  100d54:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100d5a:	8d 42 01             	lea    0x1(%edx),%eax
  100d5d:	a3 08 22 10 00       	mov    %eax,0x102208
  100d62:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  100d65:	01 c0                	add    %eax,%eax
  100d67:	29 c3                	sub    %eax,%ebx
  100d69:	83 c3 30             	add    $0x30,%ebx
  100d6c:	88 9a 40 21 10 00    	mov    %bl,0x102140(%edx)
  100d72:	83 c4 10             	add    $0x10,%esp
  100d75:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100d78:	5b                   	pop    %ebx
  100d79:	5e                   	pop    %esi
  100d7a:	5d                   	pop    %ebp
  100d7b:	c3                   	ret    
  100d7c:	8b 1d 08 22 10 00    	mov    0x102208,%ebx
  100d82:	8d 43 01             	lea    0x1(%ebx),%eax
  100d85:	b2 2d                	mov    $0x2d,%dl
  100d87:	b9 26 11 10 00       	mov    $0x101126,%ecx
  100d8c:	29 d9                	sub    %ebx,%ecx
  100d8e:	66 90                	xchg   %ax,%ax
  100d90:	89 c3                	mov    %eax,%ebx
  100d92:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100d98:	40                   	inc    %eax
  100d99:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  100d9d:	84 d2                	test   %dl,%dl
  100d9f:	75 ef                	jne    100d90 <addDec2Buff+0x84>
  100da1:	89 1d 08 22 10 00    	mov    %ebx,0x102208
  100da7:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100daa:	5b                   	pop    %ebx
  100dab:	5e                   	pop    %esi
  100dac:	5d                   	pop    %ebp
  100dad:	c3                   	ret    
  100dae:	74 c5                	je     100d75 <addDec2Buff+0x69>
  100db0:	eb 86                	jmp    100d38 <addDec2Buff+0x2c>
  100db2:	66 90                	xchg   %ax,%ax

00100db4 <addHex2Buff>:
  100db4:	55                   	push   %ebp
  100db5:	89 e5                	mov    %esp,%ebp
  100db7:	8b 45 08             	mov    0x8(%ebp),%eax
  100dba:	85 c0                	test   %eax,%eax
  100dbc:	75 02                	jne    100dc0 <addHex2Buff+0xc>
  100dbe:	5d                   	pop    %ebp
  100dbf:	c3                   	ret    
  100dc0:	5d                   	pop    %ebp
  100dc1:	eb 01                	jmp    100dc4 <addHex2Buff.part.1>
  100dc3:	90                   	nop

00100dc4 <addHex2Buff.part.1>:
  100dc4:	55                   	push   %ebp
  100dc5:	89 e5                	mov    %esp,%ebp
  100dc7:	53                   	push   %ebx
  100dc8:	83 ec 10             	sub    $0x10,%esp
  100dcb:	89 c3                	mov    %eax,%ebx
  100dcd:	89 c2                	mov    %eax,%edx
  100dcf:	c1 ea 04             	shr    $0x4,%edx
  100dd2:	52                   	push   %edx
  100dd3:	e8 dc ff ff ff       	call   100db4 <addHex2Buff>
  100dd8:	89 d8                	mov    %ebx,%eax
  100dda:	83 e0 0f             	and    $0xf,%eax
  100ddd:	83 c4 10             	add    $0x10,%esp
  100de0:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100de6:	8d 4a 01             	lea    0x1(%edx),%ecx
  100de9:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100def:	83 f8 09             	cmp    $0x9,%eax
  100df2:	76 10                	jbe    100e04 <addHex2Buff.part.1+0x40>
  100df4:	83 c0 57             	add    $0x57,%eax
  100df7:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100dfd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e00:	c9                   	leave  
  100e01:	c3                   	ret    
  100e02:	66 90                	xchg   %ax,%ax
  100e04:	83 c0 30             	add    $0x30,%eax
  100e07:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100e0d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e10:	c9                   	leave  
  100e11:	c3                   	ret    
  100e12:	66 90                	xchg   %ax,%ax

00100e14 <Log>:
  100e14:	55                   	push   %ebp
  100e15:	89 e5                	mov    %esp,%ebp
  100e17:	57                   	push   %edi
  100e18:	56                   	push   %esi
  100e19:	53                   	push   %ebx
  100e1a:	83 ec 0c             	sub    $0xc,%esp
  100e1d:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100e20:	8d 75 0c             	lea    0xc(%ebp),%esi
  100e23:	8a 03                	mov    (%ebx),%al
  100e25:	84 c0                	test   %al,%al
  100e27:	74 21                	je     100e4a <Log+0x36>
  100e29:	3c 25                	cmp    $0x25,%al
  100e2b:	74 5f                	je     100e8c <Log+0x78>
  100e2d:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100e33:	8d 4a 01             	lea    0x1(%edx),%ecx
  100e36:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100e3c:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  100e42:	8a 43 01             	mov    0x1(%ebx),%al
  100e45:	43                   	inc    %ebx
  100e46:	84 c0                	test   %al,%al
  100e48:	75 df                	jne    100e29 <Log+0x15>
  100e4a:	a1 08 22 10 00       	mov    0x102208,%eax
  100e4f:	c6 80 40 21 10 00 00 	movb   $0x0,0x102140(%eax)
  100e56:	85 c0                	test   %eax,%eax
  100e58:	7e 1e                	jle    100e78 <Log+0x64>
  100e5a:	31 db                	xor    %ebx,%ebx
  100e5c:	83 ec 0c             	sub    $0xc,%esp
  100e5f:	0f be 83 40 21 10 00 	movsbl 0x102140(%ebx),%eax
  100e66:	50                   	push   %eax
  100e67:	e8 d8 f8 ff ff       	call   100744 <putChar>
  100e6c:	43                   	inc    %ebx
  100e6d:	83 c4 10             	add    $0x10,%esp
  100e70:	39 1d 08 22 10 00    	cmp    %ebx,0x102208
  100e76:	7f e4                	jg     100e5c <Log+0x48>
  100e78:	c7 05 08 22 10 00 00 	movl   $0x0,0x102208
  100e7f:	00 00 00 
  100e82:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100e85:	5b                   	pop    %ebx
  100e86:	5e                   	pop    %esi
  100e87:	5f                   	pop    %edi
  100e88:	5d                   	pop    %ebp
  100e89:	c3                   	ret    
  100e8a:	66 90                	xchg   %ax,%ax
  100e8c:	8a 43 01             	mov    0x1(%ebx),%al
  100e8f:	3c 64                	cmp    $0x64,%al
  100e91:	74 5e                	je     100ef1 <Log+0xdd>
  100e93:	7f 33                	jg     100ec8 <Log+0xb4>
  100e95:	3c 25                	cmp    $0x25,%al
  100e97:	0f 84 b3 00 00 00    	je     100f50 <Log+0x13c>
  100e9d:	3c 63                	cmp    $0x63,%al
  100e9f:	75 4a                	jne    100eeb <Log+0xd7>
  100ea1:	8b 16                	mov    (%esi),%edx
  100ea3:	a1 08 22 10 00       	mov    0x102208,%eax
  100ea8:	8d 48 01             	lea    0x1(%eax),%ecx
  100eab:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  100eb1:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100eb7:	8a 43 02             	mov    0x2(%ebx),%al
  100eba:	83 c6 04             	add    $0x4,%esi
  100ebd:	83 c3 02             	add    $0x2,%ebx
  100ec0:	e9 60 ff ff ff       	jmp    100e25 <Log+0x11>
  100ec5:	8d 76 00             	lea    0x0(%esi),%esi
  100ec8:	3c 73                	cmp    $0x73,%al
  100eca:	74 47                	je     100f13 <Log+0xff>
  100ecc:	3c 78                	cmp    $0x78,%al
  100ece:	75 1b                	jne    100eeb <Log+0xd7>
  100ed0:	89 f0                	mov    %esi,%eax
  100ed2:	83 c6 04             	add    $0x4,%esi
  100ed5:	8b 00                	mov    (%eax),%eax
  100ed7:	85 c0                	test   %eax,%eax
  100ed9:	74 21                	je     100efc <Log+0xe8>
  100edb:	e8 e4 fe ff ff       	call   100dc4 <addHex2Buff.part.1>
  100ee0:	8a 43 02             	mov    0x2(%ebx),%al
  100ee3:	83 c3 02             	add    $0x2,%ebx
  100ee6:	e9 3a ff ff ff       	jmp    100e25 <Log+0x11>
  100eeb:	43                   	inc    %ebx
  100eec:	e9 34 ff ff ff       	jmp    100e25 <Log+0x11>
  100ef1:	89 f0                	mov    %esi,%eax
  100ef3:	83 c6 04             	add    $0x4,%esi
  100ef6:	8b 00                	mov    (%eax),%eax
  100ef8:	85 c0                	test   %eax,%eax
  100efa:	75 6e                	jne    100f6a <Log+0x156>
  100efc:	a1 08 22 10 00       	mov    0x102208,%eax
  100f01:	8d 50 01             	lea    0x1(%eax),%edx
  100f04:	89 15 08 22 10 00    	mov    %edx,0x102208
  100f0a:	c6 80 40 21 10 00 30 	movb   $0x30,0x102140(%eax)
  100f11:	eb cd                	jmp    100ee0 <Log+0xcc>
  100f13:	8d 4e 04             	lea    0x4(%esi),%ecx
  100f16:	8b 36                	mov    (%esi),%esi
  100f18:	8a 16                	mov    (%esi),%dl
  100f1a:	84 d2                	test   %dl,%dl
  100f1c:	74 25                	je     100f43 <Log+0x12f>
  100f1e:	8b 3d 08 22 10 00    	mov    0x102208,%edi
  100f24:	8d 47 01             	lea    0x1(%edi),%eax
  100f27:	29 fe                	sub    %edi,%esi
  100f29:	8d 76 00             	lea    0x0(%esi),%esi
  100f2c:	89 c7                	mov    %eax,%edi
  100f2e:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100f34:	40                   	inc    %eax
  100f35:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  100f39:	84 d2                	test   %dl,%dl
  100f3b:	75 ef                	jne    100f2c <Log+0x118>
  100f3d:	89 3d 08 22 10 00    	mov    %edi,0x102208
  100f43:	8a 43 02             	mov    0x2(%ebx),%al
  100f46:	89 ce                	mov    %ecx,%esi
  100f48:	83 c3 02             	add    $0x2,%ebx
  100f4b:	e9 d5 fe ff ff       	jmp    100e25 <Log+0x11>
  100f50:	a1 08 22 10 00       	mov    0x102208,%eax
  100f55:	8d 50 01             	lea    0x1(%eax),%edx
  100f58:	89 15 08 22 10 00    	mov    %edx,0x102208
  100f5e:	c6 80 40 21 10 00 25 	movb   $0x25,0x102140(%eax)
  100f65:	e9 76 ff ff ff       	jmp    100ee0 <Log+0xcc>
  100f6a:	83 ec 0c             	sub    $0xc,%esp
  100f6d:	50                   	push   %eax
  100f6e:	e8 99 fd ff ff       	call   100d0c <addDec2Buff>
  100f73:	83 c4 10             	add    $0x10,%esp
  100f76:	e9 65 ff ff ff       	jmp    100ee0 <Log+0xcc>
  100f7b:	90                   	nop

00100f7c <abort>:
  100f7c:	55                   	push   %ebp
  100f7d:	89 e5                	mov    %esp,%ebp
  100f7f:	57                   	push   %edi
  100f80:	56                   	push   %esi
  100f81:	53                   	push   %ebx
  100f82:	83 ec 1c             	sub    $0x1c,%esp
  100f85:	8b 55 08             	mov    0x8(%ebp),%edx
  100f88:	fa                   	cli    
  100f89:	8a 02                	mov    (%edx),%al
  100f8b:	b9 32 20 10 00       	mov    $0x102032,%ecx
  100f90:	84 c0                	test   %al,%al
  100f92:	74 0b                	je     100f9f <abort+0x23>
  100f94:	41                   	inc    %ecx
  100f95:	42                   	inc    %edx
  100f96:	88 41 ff             	mov    %al,-0x1(%ecx)
  100f99:	8a 02                	mov    (%edx),%al
  100f9b:	84 c0                	test   %al,%al
  100f9d:	75 f5                	jne    100f94 <abort+0x18>
  100f9f:	c6 01 3a             	movb   $0x3a,(%ecx)
  100fa2:	bb 29 22 10 00       	mov    $0x102229,%ebx
  100fa7:	be 0a 00 00 00       	mov    $0xa,%esi
  100fac:	bf 67 66 66 66       	mov    $0x66666667,%edi
  100fb1:	4b                   	dec    %ebx
  100fb2:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fb5:	99                   	cltd   
  100fb6:	f7 fe                	idiv   %esi
  100fb8:	8d 42 30             	lea    0x30(%edx),%eax
  100fbb:	88 45 e7             	mov    %al,-0x19(%ebp)
  100fbe:	88 03                	mov    %al,(%ebx)
  100fc0:	89 f8                	mov    %edi,%eax
  100fc2:	f7 6d 0c             	imull  0xc(%ebp)
  100fc5:	c1 fa 02             	sar    $0x2,%edx
  100fc8:	8b 45 0c             	mov    0xc(%ebp),%eax
  100fcb:	c1 f8 1f             	sar    $0x1f,%eax
  100fce:	29 c2                	sub    %eax,%edx
  100fd0:	89 55 0c             	mov    %edx,0xc(%ebp)
  100fd3:	75 dc                	jne    100fb1 <abort+0x35>
  100fd5:	41                   	inc    %ecx
  100fd6:	41                   	inc    %ecx
  100fd7:	43                   	inc    %ebx
  100fd8:	8a 45 e7             	mov    -0x19(%ebp),%al
  100fdb:	88 41 ff             	mov    %al,-0x1(%ecx)
  100fde:	8a 03                	mov    (%ebx),%al
  100fe0:	88 45 e7             	mov    %al,-0x19(%ebp)
  100fe3:	84 c0                	test   %al,%al
  100fe5:	75 ef                	jne    100fd6 <abort+0x5a>
  100fe7:	c6 01 0a             	movb   $0xa,(%ecx)
  100fea:	0f be 05 20 20 10 00 	movsbl 0x102020,%eax
  100ff1:	84 c0                	test   %al,%al
  100ff3:	74 1b                	je     101010 <abort+0x94>
  100ff5:	bb 20 20 10 00       	mov    $0x102020,%ebx
  100ffa:	83 ec 0c             	sub    $0xc,%esp
  100ffd:	50                   	push   %eax
  100ffe:	e8 41 f7 ff ff       	call   100744 <putChar>
  101003:	43                   	inc    %ebx
  101004:	0f be 03             	movsbl (%ebx),%eax
  101007:	83 c4 10             	add    $0x10,%esp
  10100a:	84 c0                	test   %al,%al
  10100c:	75 ec                	jne    100ffa <abort+0x7e>
  10100e:	66 90                	xchg   %ax,%ax
  101010:	f4                   	hlt    
  101011:	eb fd                	jmp    101010 <abort+0x94>
  101013:	90                   	nop

00101014 <idle_fun>:
  101014:	55                   	push   %ebp
  101015:	89 e5                	mov    %esp,%ebp
  101017:	90                   	nop
  101018:	f4                   	hlt    
  101019:	eb fd                	jmp    101018 <idle_fun+0x4>
  10101b:	90                   	nop

0010101c <kEntry>:
  10101c:	55                   	push   %ebp
  10101d:	89 e5                	mov    %esp,%ebp
  10101f:	83 ec 08             	sub    $0x8,%esp
  101022:	e8 dd f6 ff ff       	call   100704 <initSerial>
  101027:	e8 2c f0 ff ff       	call   100058 <initTimer>
  10102c:	e8 9b f3 ff ff       	call   1003cc <initIdt>
  101031:	e8 ca ef ff ff       	call   100000 <initIntr>
  101036:	e8 a5 f9 ff ff       	call   1009e0 <initSeg>
  10103b:	e8 20 f7 ff ff       	call   100760 <initProcess>
  101040:	b8 88 6a 10 00       	mov    $0x106a88,%eax
  101045:	89 c4                	mov    %eax,%esp
  101047:	fb                   	sti    
  101048:	f4                   	hlt    
  101049:	eb fd                	jmp    101048 <kEntry+0x2c>

0010104b <no0>:
  10104b:	6a 00                	push   $0x0
  10104d:	6a 00                	push   $0x0
  10104f:	eb 64                	jmp    1010b5 <asmDoIrq>

00101051 <no1>:
  101051:	6a 00                	push   $0x0
  101053:	6a 01                	push   $0x1
  101055:	eb 5e                	jmp    1010b5 <asmDoIrq>

00101057 <no2>:
  101057:	6a 00                	push   $0x0
  101059:	6a 02                	push   $0x2
  10105b:	eb 58                	jmp    1010b5 <asmDoIrq>

0010105d <no3>:
  10105d:	6a 00                	push   $0x0
  10105f:	6a 03                	push   $0x3
  101061:	eb 52                	jmp    1010b5 <asmDoIrq>

00101063 <no4>:
  101063:	6a 00                	push   $0x0
  101065:	6a 04                	push   $0x4
  101067:	eb 4c                	jmp    1010b5 <asmDoIrq>

00101069 <no5>:
  101069:	6a 00                	push   $0x0
  10106b:	6a 05                	push   $0x5
  10106d:	eb 46                	jmp    1010b5 <asmDoIrq>

0010106f <no6>:
  10106f:	6a 00                	push   $0x0
  101071:	6a 06                	push   $0x6
  101073:	eb 40                	jmp    1010b5 <asmDoIrq>

00101075 <no7>:
  101075:	6a 00                	push   $0x0
  101077:	6a 07                	push   $0x7
  101079:	eb 3a                	jmp    1010b5 <asmDoIrq>

0010107b <no8>:
  10107b:	6a 08                	push   $0x8
  10107d:	eb 36                	jmp    1010b5 <asmDoIrq>

0010107f <no9>:
  10107f:	6a 00                	push   $0x0
  101081:	6a 09                	push   $0x9
  101083:	eb 30                	jmp    1010b5 <asmDoIrq>

00101085 <no10>:
  101085:	6a 0a                	push   $0xa
  101087:	eb 2c                	jmp    1010b5 <asmDoIrq>

00101089 <no11>:
  101089:	6a 0b                	push   $0xb
  10108b:	eb 28                	jmp    1010b5 <asmDoIrq>

0010108d <no12>:
  10108d:	6a 0c                	push   $0xc
  10108f:	eb 24                	jmp    1010b5 <asmDoIrq>

00101091 <no13>:
  101091:	6a 0d                	push   $0xd
  101093:	eb 20                	jmp    1010b5 <asmDoIrq>

00101095 <no14>:
  101095:	6a 0e                	push   $0xe
  101097:	eb 1c                	jmp    1010b5 <asmDoIrq>

00101099 <intr0>:
  101099:	6a 00                	push   $0x0
  10109b:	68 e8 03 00 00       	push   $0x3e8
  1010a0:	eb 13                	jmp    1010b5 <asmDoIrq>

001010a2 <irqEmpty>:
  1010a2:	6a 00                	push   $0x0
  1010a4:	6a ff                	push   $0xffffffff
  1010a6:	eb 0d                	jmp    1010b5 <asmDoIrq>

001010a8 <irqGProtectFault>:
  1010a8:	6a 0d                	push   $0xd
  1010aa:	eb 09                	jmp    1010b5 <asmDoIrq>

001010ac <irqSyscall>:
  1010ac:	6a 00                	push   $0x0
  1010ae:	68 80 00 00 00       	push   $0x80
  1010b3:	eb 00                	jmp    1010b5 <asmDoIrq>

001010b5 <asmDoIrq>:
  1010b5:	fa                   	cli    
  1010b6:	1e                   	push   %ds
  1010b7:	06                   	push   %es
  1010b8:	0f a0                	push   %fs
  1010ba:	0f a8                	push   %gs
  1010bc:	60                   	pusha  
  1010bd:	54                   	push   %esp
  1010be:	e8 01 f2 ff ff       	call   1002c4 <irqHandle>
  1010c3:	a1 2c 22 10 00       	mov    0x10222c,%eax
  1010c8:	85 c0                	test   %eax,%eax
  1010ca:	74 02                	je     1010ce <switch>
  1010cc:	89 c4                	mov    %eax,%esp

001010ce <switch>:
  1010ce:	83 c4 04             	add    $0x4,%esp
  1010d1:	61                   	popa   
  1010d2:	0f a9                	pop    %gs
  1010d4:	0f a1                	pop    %fs
  1010d6:	07                   	pop    %es
  1010d7:	1f                   	pop    %ds
  1010d8:	83 c4 04             	add    $0x4,%esp
  1010db:	83 c4 04             	add    $0x4,%esp
  1010de:	fb                   	sti    
  1010df:	cf                   	iret   
