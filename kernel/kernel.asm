
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

00100070 <do_sys_exit>:
  100070:	55                   	push   %ebp
  100071:	89 e5                	mov    %esp,%ebp
  100073:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  100078:	c7 80 50 10 00 00 03 	movl   $0x3,0x1050(%eax)
  10007f:	00 00 00 
  100082:	5d                   	pop    %ebp
  100083:	e9 70 09 00 00       	jmp    1009f8 <schedule>

00100088 <do_sys_sleep>:
  100088:	55                   	push   %ebp
  100089:	89 e5                	mov    %esp,%ebp
  10008b:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  100090:	c7 80 50 10 00 00 01 	movl   $0x1,0x1050(%eax)
  100097:	00 00 00 
  10009a:	8b 55 08             	mov    0x8(%ebp),%edx
  10009d:	8b 52 10             	mov    0x10(%edx),%edx
  1000a0:	89 90 58 10 00 00    	mov    %edx,0x1058(%eax)
  1000a6:	5d                   	pop    %ebp
  1000a7:	e9 4c 09 00 00       	jmp    1009f8 <schedule>

001000ac <do_sys_fork>:
  1000ac:	55                   	push   %ebp
  1000ad:	89 e5                	mov    %esp,%ebp
  1000af:	57                   	push   %edi
  1000b0:	56                   	push   %esi
  1000b1:	53                   	push   %ebx
  1000b2:	83 ec 1c             	sub    $0x1c,%esp
  1000b5:	e8 de 0a 00 00       	call   100b98 <applyANewPcb>
  1000ba:	89 c2                	mov    %eax,%edx
  1000bc:	c1 e2 06             	shl    $0x6,%edx
  1000bf:	01 c2                	add    %eax,%edx
  1000c1:	01 d2                	add    %edx,%edx
  1000c3:	01 c2                	add    %eax,%edx
  1000c5:	01 d2                	add    %edx,%edx
  1000c7:	01 c2                	add    %eax,%edx
  1000c9:	c1 e2 04             	shl    $0x4,%edx
  1000cc:	8d 9a c0 3a 10 00    	lea    0x103ac0(%edx),%ebx
  1000d2:	8b b2 20 4b 10 00    	mov    0x104b20(%edx),%esi
  1000d8:	8b ba 24 4b 10 00    	mov    0x104b24(%edx),%edi
  1000de:	89 75 e0             	mov    %esi,-0x20(%ebp)
  1000e1:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  1000e4:	8b 8a 2c 4b 10 00    	mov    0x104b2c(%edx),%ecx
  1000ea:	8b 92 28 4b 10 00    	mov    0x104b28(%edx),%edx
  1000f0:	89 55 d8             	mov    %edx,-0x28(%ebp)
  1000f3:	89 4d dc             	mov    %ecx,-0x24(%ebp)
  1000f6:	8b 15 b0 3a 10 00    	mov    0x103ab0,%edx
  1000fc:	b9 1c 04 00 00       	mov    $0x41c,%ecx
  100101:	89 df                	mov    %ebx,%edi
  100103:	89 d6                	mov    %edx,%esi
  100105:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  100107:	8b 75 e0             	mov    -0x20(%ebp),%esi
  10010a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
  10010d:	89 b3 60 10 00 00    	mov    %esi,0x1060(%ebx)
  100113:	89 bb 64 10 00 00    	mov    %edi,0x1064(%ebx)
  100119:	8b 75 d8             	mov    -0x28(%ebp),%esi
  10011c:	8b 7d dc             	mov    -0x24(%ebp),%edi
  10011f:	89 b3 68 10 00 00    	mov    %esi,0x1068(%ebx)
  100125:	89 bb 6c 10 00 00    	mov    %edi,0x106c(%ebx)
  10012b:	50                   	push   %eax
  10012c:	68 00 00 40 00       	push   $0x400000
  100131:	0f b6 82 67 10 00 00 	movzbl 0x1067(%edx),%eax
  100138:	c1 e0 18             	shl    $0x18,%eax
  10013b:	89 c1                	mov    %eax,%ecx
  10013d:	0f b6 82 64 10 00 00 	movzbl 0x1064(%edx),%eax
  100144:	c1 e0 10             	shl    $0x10,%eax
  100147:	09 c8                	or     %ecx,%eax
  100149:	0f b7 92 62 10 00 00 	movzwl 0x1062(%edx),%edx
  100150:	09 d0                	or     %edx,%eax
  100152:	50                   	push   %eax
  100153:	0f b6 83 67 10 00 00 	movzbl 0x1067(%ebx),%eax
  10015a:	c1 e0 18             	shl    $0x18,%eax
  10015d:	89 c2                	mov    %eax,%edx
  10015f:	0f b6 83 64 10 00 00 	movzbl 0x1064(%ebx),%eax
  100166:	c1 e0 10             	shl    $0x10,%eax
  100169:	09 d0                	or     %edx,%eax
  10016b:	0f b7 93 62 10 00 00 	movzwl 0x1062(%ebx),%edx
  100172:	09 d0                	or     %edx,%eax
  100174:	50                   	push   %eax
  100175:	e8 5a 0a 00 00       	call   100bd4 <memcpy>
  10017a:	c7 83 50 10 00 00 02 	movl   $0x2,0x1050(%ebx)
  100181:	00 00 00 
  100184:	c7 83 20 10 00 00 00 	movl   $0x0,0x1020(%ebx)
  10018b:	00 00 00 
  10018e:	8b 93 5c 10 00 00    	mov    0x105c(%ebx),%edx
  100194:	8b 45 08             	mov    0x8(%ebp),%eax
  100197:	89 50 1c             	mov    %edx,0x1c(%eax)
  10019a:	83 c4 10             	add    $0x10,%esp
  10019d:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1001a0:	5b                   	pop    %ebx
  1001a1:	5e                   	pop    %esi
  1001a2:	5f                   	pop    %edi
  1001a3:	5d                   	pop    %ebp
  1001a4:	c3                   	ret    
  1001a5:	8d 76 00             	lea    0x0(%esi),%esi

001001a8 <timerHandle>:
  1001a8:	55                   	push   %ebp
  1001a9:	89 e5                	mov    %esp,%ebp
  1001ab:	83 ec 08             	sub    $0x8,%esp
  1001ae:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  1001b3:	3d 40 2a 10 00       	cmp    $0x102a40,%eax
  1001b8:	0f 84 ba 00 00 00    	je     100278 <timerHandle+0xd0>
  1001be:	3d c0 3a 10 00       	cmp    $0x103ac0,%eax
  1001c3:	0f 84 c3 00 00 00    	je     10028c <timerHandle+0xe4>
  1001c9:	3d 30 4b 10 00       	cmp    $0x104b30,%eax
  1001ce:	0f 84 90 00 00 00    	je     100264 <timerHandle+0xbc>
  1001d4:	83 ec 08             	sub    $0x8,%esp
  1001d7:	68 8f 00 00 00       	push   $0x8f
  1001dc:	68 94 13 10 00       	push   $0x101394
  1001e1:	e8 46 10 00 00       	call   10122c <abort>
  1001e6:	83 c4 10             	add    $0x10,%esp
  1001e9:	83 3d 10 4b 10 00 01 	cmpl   $0x1,0x104b10
  1001f0:	74 22                	je     100214 <timerHandle+0x6c>
  1001f2:	83 3d 80 5b 10 00 01 	cmpl   $0x1,0x105b80
  1001f9:	74 35                	je     100230 <timerHandle+0x88>
  1001fb:	8b 15 b0 3a 10 00    	mov    0x103ab0,%edx
  100201:	8b 82 54 10 00 00    	mov    0x1054(%edx),%eax
  100207:	85 c0                	test   %eax,%eax
  100209:	74 47                	je     100252 <timerHandle+0xaa>
  10020b:	48                   	dec    %eax
  10020c:	89 82 54 10 00 00    	mov    %eax,0x1054(%edx)
  100212:	c9                   	leave  
  100213:	c3                   	ret    
  100214:	ff 0d 18 4b 10 00    	decl   0x104b18
  10021a:	75 d6                	jne    1001f2 <timerHandle+0x4a>
  10021c:	c7 05 10 4b 10 00 02 	movl   $0x2,0x104b10
  100223:	00 00 00 
  100226:	83 3d 80 5b 10 00 01 	cmpl   $0x1,0x105b80
  10022d:	75 cc                	jne    1001fb <timerHandle+0x53>
  10022f:	90                   	nop
  100230:	ff 0d 88 5b 10 00    	decl   0x105b88
  100236:	75 c3                	jne    1001fb <timerHandle+0x53>
  100238:	c7 05 80 5b 10 00 02 	movl   $0x2,0x105b80
  10023f:	00 00 00 
  100242:	8b 15 b0 3a 10 00    	mov    0x103ab0,%edx
  100248:	8b 82 54 10 00 00    	mov    0x1054(%edx),%eax
  10024e:	85 c0                	test   %eax,%eax
  100250:	75 b9                	jne    10020b <timerHandle+0x63>
  100252:	c7 82 50 10 00 00 02 	movl   $0x2,0x1050(%edx)
  100259:	00 00 00 
  10025c:	c9                   	leave  
  10025d:	e9 96 07 00 00       	jmp    1009f8 <schedule>
  100262:	66 90                	xchg   %ax,%ax
  100264:	83 ec 0c             	sub    $0xc,%esp
  100267:	6a 32                	push   $0x32
  100269:	e8 06 06 00 00       	call   100874 <putChar>
  10026e:	83 c4 10             	add    $0x10,%esp
  100271:	e9 73 ff ff ff       	jmp    1001e9 <timerHandle+0x41>
  100276:	66 90                	xchg   %ax,%ax
  100278:	83 ec 0c             	sub    $0xc,%esp
  10027b:	6a 2e                	push   $0x2e
  10027d:	e8 f2 05 00 00       	call   100874 <putChar>
  100282:	83 c4 10             	add    $0x10,%esp
  100285:	e9 5f ff ff ff       	jmp    1001e9 <timerHandle+0x41>
  10028a:	66 90                	xchg   %ax,%ax
  10028c:	83 ec 0c             	sub    $0xc,%esp
  10028f:	6a 31                	push   $0x31
  100291:	e8 de 05 00 00       	call   100874 <putChar>
  100296:	83 c4 10             	add    $0x10,%esp
  100299:	e9 4b ff ff ff       	jmp    1001e9 <timerHandle+0x41>
  10029e:	66 90                	xchg   %ax,%ax

001002a0 <GProtectFaultHandle>:
  1002a0:	55                   	push   %ebp
  1002a1:	89 e5                	mov    %esp,%ebp
  1002a3:	83 ec 10             	sub    $0x10,%esp
  1002a6:	68 b0 00 00 00       	push   $0xb0
  1002ab:	68 94 13 10 00       	push   $0x101394
  1002b0:	e8 77 0f 00 00       	call   10122c <abort>
  1002b5:	83 c4 10             	add    $0x10,%esp
  1002b8:	c9                   	leave  
  1002b9:	c3                   	ret    
  1002ba:	66 90                	xchg   %ax,%ax

001002bc <showCharInScreen>:
  1002bc:	55                   	push   %ebp
  1002bd:	89 e5                	mov    %esp,%ebp
  1002bf:	53                   	push   %ebx
  1002c0:	8b 45 08             	mov    0x8(%ebp),%eax
  1002c3:	3c 0a                	cmp    $0xa,%al
  1002c5:	74 35                	je     1002fc <showCharInScreen+0x40>
  1002c7:	8b 0d 00 20 10 00    	mov    0x102000,%ecx
  1002cd:	8b 15 20 21 10 00    	mov    0x102120,%edx
  1002d3:	8d 1c 89             	lea    (%ecx,%ecx,4),%ebx
  1002d6:	c1 e3 04             	shl    $0x4,%ebx
  1002d9:	01 d3                	add    %edx,%ebx
  1002db:	66 98                	cbtw   
  1002dd:	05 00 0c 00 00       	add    $0xc00,%eax
  1002e2:	66 89 84 1b 00 80 0b 	mov    %ax,0xb8000(%ebx,%ebx,1)
  1002e9:	00 
  1002ea:	8d 42 01             	lea    0x1(%edx),%eax
  1002ed:	a3 20 21 10 00       	mov    %eax,0x102120
  1002f2:	83 f8 50             	cmp    $0x50,%eax
  1002f5:	74 19                	je     100310 <showCharInScreen+0x54>
  1002f7:	5b                   	pop    %ebx
  1002f8:	5d                   	pop    %ebp
  1002f9:	c3                   	ret    
  1002fa:	66 90                	xchg   %ax,%ax
  1002fc:	ff 05 00 20 10 00    	incl   0x102000
  100302:	c7 05 20 21 10 00 00 	movl   $0x0,0x102120
  100309:	00 00 00 
  10030c:	5b                   	pop    %ebx
  10030d:	5d                   	pop    %ebp
  10030e:	c3                   	ret    
  10030f:	90                   	nop
  100310:	41                   	inc    %ecx
  100311:	89 0d 00 20 10 00    	mov    %ecx,0x102000
  100317:	c7 05 20 21 10 00 00 	movl   $0x0,0x102120
  10031e:	00 00 00 
  100321:	5b                   	pop    %ebx
  100322:	5d                   	pop    %ebp
  100323:	c3                   	ret    

00100324 <do_sys_write>:
  100324:	55                   	push   %ebp
  100325:	89 e5                	mov    %esp,%ebp
  100327:	57                   	push   %edi
  100328:	56                   	push   %esi
  100329:	53                   	push   %ebx
  10032a:	83 ec 1c             	sub    $0x1c,%esp
  10032d:	8b 45 08             	mov    0x8(%ebp),%eax
  100330:	8b 40 10             	mov    0x10(%eax),%eax
  100333:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100336:	48                   	dec    %eax
  100337:	83 f8 01             	cmp    $0x1,%eax
  10033a:	76 1c                	jbe    100358 <do_sys_write+0x34>
  10033c:	83 ec 08             	sub    $0x8,%esp
  10033f:	6a 5c                	push   $0x5c
  100341:	68 94 13 10 00       	push   $0x101394
  100346:	e8 e1 0e 00 00       	call   10122c <abort>
  10034b:	83 c4 10             	add    $0x10,%esp
  10034e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100351:	5b                   	pop    %ebx
  100352:	5e                   	pop    %esi
  100353:	5f                   	pop    %edi
  100354:	5d                   	pop    %ebp
  100355:	c3                   	ret    
  100356:	66 90                	xchg   %ax,%ax
  100358:	8b 15 b0 3a 10 00    	mov    0x103ab0,%edx
  10035e:	0f b6 9a 6f 10 00 00 	movzbl 0x106f(%edx),%ebx
  100365:	c1 e3 18             	shl    $0x18,%ebx
  100368:	0f b6 82 6c 10 00 00 	movzbl 0x106c(%edx),%eax
  10036f:	c1 e0 10             	shl    $0x10,%eax
  100372:	09 c3                	or     %eax,%ebx
  100374:	0f b7 82 6a 10 00 00 	movzwl 0x106a(%edx),%eax
  10037b:	09 c3                	or     %eax,%ebx
  10037d:	8b 45 08             	mov    0x8(%ebp),%eax
  100380:	03 58 18             	add    0x18(%eax),%ebx
  100383:	8b 70 14             	mov    0x14(%eax),%esi
  100386:	85 f6                	test   %esi,%esi
  100388:	74 27                	je     1003b1 <do_sys_write+0x8d>
  10038a:	0f be 03             	movsbl (%ebx),%eax
  10038d:	84 c0                	test   %al,%al
  10038f:	74 39                	je     1003ca <do_sys_write+0xa6>
  100391:	bf 01 00 00 00       	mov    $0x1,%edi
  100396:	eb 0e                	jmp    1003a6 <do_sys_write+0x82>
  100398:	8d 4f 01             	lea    0x1(%edi),%ecx
  10039b:	0f be 44 19 ff       	movsbl -0x1(%ecx,%ebx,1),%eax
  1003a0:	84 c0                	test   %al,%al
  1003a2:	74 1c                	je     1003c0 <do_sys_write+0x9c>
  1003a4:	89 cf                	mov    %ecx,%edi
  1003a6:	50                   	push   %eax
  1003a7:	e8 10 ff ff ff       	call   1002bc <showCharInScreen>
  1003ac:	58                   	pop    %eax
  1003ad:	39 fe                	cmp    %edi,%esi
  1003af:	75 e7                	jne    100398 <do_sys_write+0x74>
  1003b1:	8b 45 08             	mov    0x8(%ebp),%eax
  1003b4:	89 70 1c             	mov    %esi,0x1c(%eax)
  1003b7:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1003ba:	5b                   	pop    %ebx
  1003bb:	5e                   	pop    %esi
  1003bc:	5f                   	pop    %edi
  1003bd:	5d                   	pop    %ebp
  1003be:	c3                   	ret    
  1003bf:	90                   	nop
  1003c0:	89 fe                	mov    %edi,%esi
  1003c2:	8b 45 08             	mov    0x8(%ebp),%eax
  1003c5:	89 70 1c             	mov    %esi,0x1c(%eax)
  1003c8:	eb ed                	jmp    1003b7 <do_sys_write+0x93>
  1003ca:	31 f6                	xor    %esi,%esi
  1003cc:	eb e3                	jmp    1003b1 <do_sys_write+0x8d>
  1003ce:	66 90                	xchg   %ax,%ax

001003d0 <syscallHandle>:
  1003d0:	55                   	push   %ebp
  1003d1:	89 e5                	mov    %esp,%ebp
  1003d3:	83 ec 08             	sub    $0x8,%esp
  1003d6:	8b 55 08             	mov    0x8(%ebp),%edx
  1003d9:	8b 42 1c             	mov    0x1c(%edx),%eax
  1003dc:	83 f8 02             	cmp    $0x2,%eax
  1003df:	74 6b                	je     10044c <syscallHandle+0x7c>
  1003e1:	76 39                	jbe    10041c <syscallHandle+0x4c>
  1003e3:	83 f8 04             	cmp    $0x4,%eax
  1003e6:	74 28                	je     100410 <syscallHandle+0x40>
  1003e8:	3d a2 00 00 00       	cmp    $0xa2,%eax
  1003ed:	75 45                	jne    100434 <syscallHandle+0x64>
  1003ef:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  1003f4:	c7 80 50 10 00 00 01 	movl   $0x1,0x1050(%eax)
  1003fb:	00 00 00 
  1003fe:	8b 52 10             	mov    0x10(%edx),%edx
  100401:	89 90 58 10 00 00    	mov    %edx,0x1058(%eax)
  100407:	c9                   	leave  
  100408:	e9 eb 05 00 00       	jmp    1009f8 <schedule>
  10040d:	8d 76 00             	lea    0x0(%esi),%esi
  100410:	89 55 08             	mov    %edx,0x8(%ebp)
  100413:	c9                   	leave  
  100414:	e9 0b ff ff ff       	jmp    100324 <do_sys_write>
  100419:	8d 76 00             	lea    0x0(%esi),%esi
  10041c:	48                   	dec    %eax
  10041d:	75 15                	jne    100434 <syscallHandle+0x64>
  10041f:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  100424:	c7 80 50 10 00 00 03 	movl   $0x3,0x1050(%eax)
  10042b:	00 00 00 
  10042e:	c9                   	leave  
  10042f:	e9 c4 05 00 00       	jmp    1009f8 <schedule>
  100434:	83 ec 08             	sub    $0x8,%esp
  100437:	68 aa 00 00 00       	push   $0xaa
  10043c:	68 94 13 10 00       	push   $0x101394
  100441:	e8 e6 0d 00 00       	call   10122c <abort>
  100446:	83 c4 10             	add    $0x10,%esp
  100449:	c9                   	leave  
  10044a:	c3                   	ret    
  10044b:	90                   	nop
  10044c:	89 55 08             	mov    %edx,0x8(%ebp)
  10044f:	c9                   	leave  
  100450:	e9 57 fc ff ff       	jmp    1000ac <do_sys_fork>
  100455:	8d 76 00             	lea    0x0(%esi),%esi

00100458 <irqHandle>:
  100458:	55                   	push   %ebp
  100459:	89 e5                	mov    %esp,%ebp
  10045b:	83 ec 08             	sub    $0x8,%esp
  10045e:	8b 55 08             	mov    0x8(%ebp),%edx
  100461:	b8 10 00 00 00       	mov    $0x10,%eax
  100466:	8e c0                	mov    %eax,%es
  100468:	8e d8                	mov    %eax,%ds
  10046a:	8e e0                	mov    %eax,%fs
  10046c:	8e e8                	mov    %eax,%gs
  10046e:	8b 42 30             	mov    0x30(%edx),%eax
  100471:	83 f8 0d             	cmp    $0xd,%eax
  100474:	74 62                	je     1004d8 <irqHandle+0x80>
  100476:	7e 38                	jle    1004b0 <irqHandle+0x58>
  100478:	3d 80 00 00 00       	cmp    $0x80,%eax
  10047d:	74 25                	je     1004a4 <irqHandle+0x4c>
  10047f:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  100484:	75 2f                	jne    1004b5 <irqHandle+0x5d>
  100486:	e8 1d fd ff ff       	call   1001a8 <timerHandle>
  10048b:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  100490:	3d 40 2a 10 00       	cmp    $0x102a40,%eax
  100495:	74 59                	je     1004f0 <irqHandle+0x98>
  100497:	05 00 10 00 00       	add    $0x1000,%eax
  10049c:	a3 2c 22 10 00       	mov    %eax,0x10222c
  1004a1:	c9                   	leave  
  1004a2:	c3                   	ret    
  1004a3:	90                   	nop
  1004a4:	89 55 08             	mov    %edx,0x8(%ebp)
  1004a7:	c9                   	leave  
  1004a8:	e9 23 ff ff ff       	jmp    1003d0 <syscallHandle>
  1004ad:	8d 76 00             	lea    0x0(%esi),%esi
  1004b0:	83 f8 ff             	cmp    $0xffffffff,%eax
  1004b3:	74 ec                	je     1004a1 <irqHandle+0x49>
  1004b5:	83 ec 08             	sub    $0x8,%esp
  1004b8:	50                   	push   %eax
  1004b9:	68 a7 13 10 00       	push   $0x1013a7
  1004be:	e8 dd 0b 00 00       	call   1010a0 <Log>
  1004c3:	58                   	pop    %eax
  1004c4:	5a                   	pop    %edx
  1004c5:	6a 3c                	push   $0x3c
  1004c7:	68 94 13 10 00       	push   $0x101394
  1004cc:	e8 5b 0d 00 00       	call   10122c <abort>
  1004d1:	83 c4 10             	add    $0x10,%esp
  1004d4:	c9                   	leave  
  1004d5:	c3                   	ret    
  1004d6:	66 90                	xchg   %ax,%ax
  1004d8:	83 ec 08             	sub    $0x8,%esp
  1004db:	68 b0 00 00 00       	push   $0xb0
  1004e0:	68 94 13 10 00       	push   $0x101394
  1004e5:	e8 42 0d 00 00       	call   10122c <abort>
  1004ea:	83 c4 10             	add    $0x10,%esp
  1004ed:	c9                   	leave  
  1004ee:	c3                   	ret    
  1004ef:	90                   	nop
  1004f0:	c7 05 2c 22 10 00 00 	movl   $0x0,0x10222c
  1004f7:	00 00 00 
  1004fa:	c9                   	leave  
  1004fb:	c3                   	ret    

001004fc <initIdt>:
  1004fc:	55                   	push   %ebp
  1004fd:	89 e5                	mov    %esp,%ebp
  1004ff:	53                   	push   %ebx
  100500:	ba 53 13 10 00       	mov    $0x101353,%edx
  100505:	89 d3                	mov    %edx,%ebx
  100507:	c1 ea 10             	shr    $0x10,%edx
  10050a:	b9 40 2a 10 00       	mov    $0x102a40,%ecx
  10050f:	b8 40 22 10 00       	mov    $0x102240,%eax
  100514:	66 89 18             	mov    %bx,(%eax)
  100517:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  10051d:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100521:	c6 40 05 8f          	movb   $0x8f,0x5(%eax)
  100525:	66 89 50 06          	mov    %dx,0x6(%eax)
  100529:	83 c0 08             	add    $0x8,%eax
  10052c:	39 c1                	cmp    %eax,%ecx
  10052e:	75 e4                	jne    100514 <initIdt+0x18>
  100530:	b8 fc 12 10 00       	mov    $0x1012fc,%eax
  100535:	66 a3 40 22 10 00    	mov    %ax,0x102240
  10053b:	66 c7 05 42 22 10 00 	movw   $0x8,0x102242
  100542:	08 00 
  100544:	c6 05 44 22 10 00 00 	movb   $0x0,0x102244
  10054b:	c6 05 45 22 10 00 8f 	movb   $0x8f,0x102245
  100552:	c1 e8 10             	shr    $0x10,%eax
  100555:	66 a3 46 22 10 00    	mov    %ax,0x102246
  10055b:	b8 02 13 10 00       	mov    $0x101302,%eax
  100560:	66 a3 48 22 10 00    	mov    %ax,0x102248
  100566:	66 c7 05 4a 22 10 00 	movw   $0x8,0x10224a
  10056d:	08 00 
  10056f:	c6 05 4c 22 10 00 00 	movb   $0x0,0x10224c
  100576:	c6 05 4d 22 10 00 8f 	movb   $0x8f,0x10224d
  10057d:	c1 e8 10             	shr    $0x10,%eax
  100580:	66 a3 4e 22 10 00    	mov    %ax,0x10224e
  100586:	b8 08 13 10 00       	mov    $0x101308,%eax
  10058b:	66 a3 50 22 10 00    	mov    %ax,0x102250
  100591:	66 c7 05 52 22 10 00 	movw   $0x8,0x102252
  100598:	08 00 
  10059a:	c6 05 54 22 10 00 00 	movb   $0x0,0x102254
  1005a1:	c6 05 55 22 10 00 8f 	movb   $0x8f,0x102255
  1005a8:	c1 e8 10             	shr    $0x10,%eax
  1005ab:	66 a3 56 22 10 00    	mov    %ax,0x102256
  1005b1:	b8 0e 13 10 00       	mov    $0x10130e,%eax
  1005b6:	66 a3 58 22 10 00    	mov    %ax,0x102258
  1005bc:	66 c7 05 5a 22 10 00 	movw   $0x8,0x10225a
  1005c3:	08 00 
  1005c5:	c6 05 5c 22 10 00 00 	movb   $0x0,0x10225c
  1005cc:	c6 05 5d 22 10 00 8f 	movb   $0x8f,0x10225d
  1005d3:	c1 e8 10             	shr    $0x10,%eax
  1005d6:	66 a3 5e 22 10 00    	mov    %ax,0x10225e
  1005dc:	b8 14 13 10 00       	mov    $0x101314,%eax
  1005e1:	66 a3 60 22 10 00    	mov    %ax,0x102260
  1005e7:	66 c7 05 62 22 10 00 	movw   $0x8,0x102262
  1005ee:	08 00 
  1005f0:	c6 05 64 22 10 00 00 	movb   $0x0,0x102264
  1005f7:	c6 05 65 22 10 00 8f 	movb   $0x8f,0x102265
  1005fe:	c1 e8 10             	shr    $0x10,%eax
  100601:	66 a3 66 22 10 00    	mov    %ax,0x102266
  100607:	b8 1a 13 10 00       	mov    $0x10131a,%eax
  10060c:	66 a3 68 22 10 00    	mov    %ax,0x102268
  100612:	66 c7 05 6a 22 10 00 	movw   $0x8,0x10226a
  100619:	08 00 
  10061b:	c6 05 6c 22 10 00 00 	movb   $0x0,0x10226c
  100622:	c6 05 6d 22 10 00 8f 	movb   $0x8f,0x10226d
  100629:	c1 e8 10             	shr    $0x10,%eax
  10062c:	66 a3 6e 22 10 00    	mov    %ax,0x10226e
  100632:	b8 20 13 10 00       	mov    $0x101320,%eax
  100637:	66 a3 70 22 10 00    	mov    %ax,0x102270
  10063d:	66 c7 05 72 22 10 00 	movw   $0x8,0x102272
  100644:	08 00 
  100646:	c6 05 74 22 10 00 00 	movb   $0x0,0x102274
  10064d:	c6 05 75 22 10 00 8f 	movb   $0x8f,0x102275
  100654:	c1 e8 10             	shr    $0x10,%eax
  100657:	66 a3 76 22 10 00    	mov    %ax,0x102276
  10065d:	b8 26 13 10 00       	mov    $0x101326,%eax
  100662:	66 a3 78 22 10 00    	mov    %ax,0x102278
  100668:	66 c7 05 7a 22 10 00 	movw   $0x8,0x10227a
  10066f:	08 00 
  100671:	c6 05 7c 22 10 00 00 	movb   $0x0,0x10227c
  100678:	c6 05 7d 22 10 00 8f 	movb   $0x8f,0x10227d
  10067f:	c1 e8 10             	shr    $0x10,%eax
  100682:	66 a3 7e 22 10 00    	mov    %ax,0x10227e
  100688:	b8 2c 13 10 00       	mov    $0x10132c,%eax
  10068d:	66 a3 80 22 10 00    	mov    %ax,0x102280
  100693:	66 c7 05 82 22 10 00 	movw   $0x8,0x102282
  10069a:	08 00 
  10069c:	c6 05 84 22 10 00 00 	movb   $0x0,0x102284
  1006a3:	c6 05 85 22 10 00 8f 	movb   $0x8f,0x102285
  1006aa:	c1 e8 10             	shr    $0x10,%eax
  1006ad:	66 a3 86 22 10 00    	mov    %ax,0x102286
  1006b3:	b8 30 13 10 00       	mov    $0x101330,%eax
  1006b8:	66 a3 88 22 10 00    	mov    %ax,0x102288
  1006be:	66 c7 05 8a 22 10 00 	movw   $0x8,0x10228a
  1006c5:	08 00 
  1006c7:	c6 05 8c 22 10 00 00 	movb   $0x0,0x10228c
  1006ce:	c6 05 8d 22 10 00 8f 	movb   $0x8f,0x10228d
  1006d5:	c1 e8 10             	shr    $0x10,%eax
  1006d8:	66 a3 8e 22 10 00    	mov    %ax,0x10228e
  1006de:	b8 36 13 10 00       	mov    $0x101336,%eax
  1006e3:	66 a3 90 22 10 00    	mov    %ax,0x102290
  1006e9:	66 c7 05 92 22 10 00 	movw   $0x8,0x102292
  1006f0:	08 00 
  1006f2:	c6 05 94 22 10 00 00 	movb   $0x0,0x102294
  1006f9:	c6 05 95 22 10 00 8f 	movb   $0x8f,0x102295
  100700:	c1 e8 10             	shr    $0x10,%eax
  100703:	66 a3 96 22 10 00    	mov    %ax,0x102296
  100709:	b8 3a 13 10 00       	mov    $0x10133a,%eax
  10070e:	66 a3 98 22 10 00    	mov    %ax,0x102298
  100714:	66 c7 05 9a 22 10 00 	movw   $0x8,0x10229a
  10071b:	08 00 
  10071d:	c6 05 9c 22 10 00 00 	movb   $0x0,0x10229c
  100724:	c6 05 9d 22 10 00 8f 	movb   $0x8f,0x10229d
  10072b:	c1 e8 10             	shr    $0x10,%eax
  10072e:	66 a3 9e 22 10 00    	mov    %ax,0x10229e
  100734:	b8 3e 13 10 00       	mov    $0x10133e,%eax
  100739:	66 a3 a0 22 10 00    	mov    %ax,0x1022a0
  10073f:	66 c7 05 a2 22 10 00 	movw   $0x8,0x1022a2
  100746:	08 00 
  100748:	c6 05 a4 22 10 00 00 	movb   $0x0,0x1022a4
  10074f:	c6 05 a5 22 10 00 8f 	movb   $0x8f,0x1022a5
  100756:	c1 e8 10             	shr    $0x10,%eax
  100759:	66 a3 a6 22 10 00    	mov    %ax,0x1022a6
  10075f:	66 c7 05 aa 22 10 00 	movw   $0x8,0x1022aa
  100766:	08 00 
  100768:	c6 05 ac 22 10 00 00 	movb   $0x0,0x1022ac
  10076f:	c6 05 ad 22 10 00 8f 	movb   $0x8f,0x1022ad
  100776:	b8 46 13 10 00       	mov    $0x101346,%eax
  10077b:	66 a3 b0 22 10 00    	mov    %ax,0x1022b0
  100781:	66 c7 05 b2 22 10 00 	movw   $0x8,0x1022b2
  100788:	08 00 
  10078a:	c6 05 b4 22 10 00 00 	movb   $0x0,0x1022b4
  100791:	c6 05 b5 22 10 00 8f 	movb   $0x8f,0x1022b5
  100798:	c1 e8 10             	shr    $0x10,%eax
  10079b:	66 a3 b6 22 10 00    	mov    %ax,0x1022b6
  1007a1:	b8 59 13 10 00       	mov    $0x101359,%eax
  1007a6:	66 a3 a8 22 10 00    	mov    %ax,0x1022a8
  1007ac:	c1 e8 10             	shr    $0x10,%eax
  1007af:	66 a3 ae 22 10 00    	mov    %ax,0x1022ae
  1007b5:	b8 5d 13 10 00       	mov    $0x10135d,%eax
  1007ba:	66 a3 40 26 10 00    	mov    %ax,0x102640
  1007c0:	66 c7 05 42 26 10 00 	movw   $0x8,0x102642
  1007c7:	08 00 
  1007c9:	c6 05 44 26 10 00 00 	movb   $0x0,0x102644
  1007d0:	c6 05 45 26 10 00 ef 	movb   $0xef,0x102645
  1007d7:	c1 e8 10             	shr    $0x10,%eax
  1007da:	66 a3 46 26 10 00    	mov    %ax,0x102646
  1007e0:	b8 4a 13 10 00       	mov    $0x10134a,%eax
  1007e5:	66 a3 40 23 10 00    	mov    %ax,0x102340
  1007eb:	66 c7 05 42 23 10 00 	movw   $0x8,0x102342
  1007f2:	08 00 
  1007f4:	c6 05 44 23 10 00 00 	movb   $0x0,0x102344
  1007fb:	c6 05 45 23 10 00 8e 	movb   $0x8e,0x102345
  100802:	c1 e8 10             	shr    $0x10,%eax
  100805:	66 a3 46 23 10 00    	mov    %ax,0x102346
  10080b:	66 c7 05 24 21 10 00 	movw   $0x7ff,0x102124
  100812:	ff 07 
  100814:	b8 40 22 10 00       	mov    $0x102240,%eax
  100819:	66 a3 26 21 10 00    	mov    %ax,0x102126
  10081f:	c1 e8 10             	shr    $0x10,%eax
  100822:	66 a3 28 21 10 00    	mov    %ax,0x102128
  100828:	b8 24 21 10 00       	mov    $0x102124,%eax
  10082d:	0f 01 18             	lidtl  (%eax)
  100830:	5b                   	pop    %ebx
  100831:	5d                   	pop    %ebp
  100832:	c3                   	ret    
  100833:	90                   	nop

00100834 <initSerial>:
  100834:	55                   	push   %ebp
  100835:	89 e5                	mov    %esp,%ebp
  100837:	ba f9 03 00 00       	mov    $0x3f9,%edx
  10083c:	31 c0                	xor    %eax,%eax
  10083e:	ee                   	out    %al,(%dx)
  10083f:	ba fb 03 00 00       	mov    $0x3fb,%edx
  100844:	b0 80                	mov    $0x80,%al
  100846:	ee                   	out    %al,(%dx)
  100847:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10084c:	b0 01                	mov    $0x1,%al
  10084e:	ee                   	out    %al,(%dx)
  10084f:	ba f9 03 00 00       	mov    $0x3f9,%edx
  100854:	31 c0                	xor    %eax,%eax
  100856:	ee                   	out    %al,(%dx)
  100857:	ba fb 03 00 00       	mov    $0x3fb,%edx
  10085c:	b0 03                	mov    $0x3,%al
  10085e:	ee                   	out    %al,(%dx)
  10085f:	ba fa 03 00 00       	mov    $0x3fa,%edx
  100864:	b0 c7                	mov    $0xc7,%al
  100866:	ee                   	out    %al,(%dx)
  100867:	ba fc 03 00 00       	mov    $0x3fc,%edx
  10086c:	b0 0b                	mov    $0xb,%al
  10086e:	ee                   	out    %al,(%dx)
  10086f:	5d                   	pop    %ebp
  100870:	c3                   	ret    
  100871:	8d 76 00             	lea    0x0(%esi),%esi

00100874 <putChar>:
  100874:	55                   	push   %ebp
  100875:	89 e5                	mov    %esp,%ebp
  100877:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10087a:	ba fd 03 00 00       	mov    $0x3fd,%edx
  10087f:	90                   	nop
  100880:	ec                   	in     (%dx),%al
  100881:	a8 20                	test   $0x20,%al
  100883:	74 fb                	je     100880 <putChar+0xc>
  100885:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10088a:	88 c8                	mov    %cl,%al
  10088c:	ee                   	out    %al,(%dx)
  10088d:	5d                   	pop    %ebp
  10088e:	c3                   	ret    
  10088f:	90                   	nop

00100890 <initProcess>:
  100890:	55                   	push   %ebp
  100891:	89 e5                	mov    %esp,%ebp
  100893:	57                   	push   %edi
  100894:	56                   	push   %esi
  100895:	53                   	push   %ebx
  100896:	83 ec 1c             	sub    $0x1c,%esp
  100899:	c7 05 90 3a 10 00 00 	movl   $0x0,0x103a90
  1008a0:	00 00 00 
  1008a3:	c7 05 94 3a 10 00 05 	movl   $0x5,0x103a94
  1008aa:	00 00 00 
  1008ad:	ba c0 3a 10 00       	mov    $0x103ac0,%edx
  1008b2:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1008b9:	31 c0                	xor    %eax,%eax
  1008bb:	c7 82 50 10 00 00 03 	movl   $0x3,0x1050(%edx)
  1008c2:	00 00 00 
  1008c5:	c7 82 24 10 00 00 23 	movl   $0x23,0x1024(%edx)
  1008cc:	00 00 00 
  1008cf:	c7 82 28 10 00 00 23 	movl   $0x23,0x1028(%edx)
  1008d6:	00 00 00 
  1008d9:	c7 82 2c 10 00 00 23 	movl   $0x23,0x102c(%edx)
  1008e0:	00 00 00 
  1008e3:	c7 82 30 10 00 00 23 	movl   $0x23,0x1030(%edx)
  1008ea:	00 00 00 
  1008ed:	c7 82 40 10 00 00 1b 	movl   $0x1b,0x1040(%edx)
  1008f4:	00 00 00 
  1008f7:	c7 82 44 10 00 00 02 	movl   $0x202,0x1044(%edx)
  1008fe:	02 00 00 
  100901:	c7 82 48 10 00 00 00 	movl   $0x200000,0x1048(%edx)
  100908:	00 20 00 
  10090b:	c7 82 4c 10 00 00 23 	movl   $0x23,0x104c(%edx)
  100912:	00 00 00 
  100915:	8d 70 01             	lea    0x1(%eax),%esi
  100918:	89 b2 5c 10 00 00    	mov    %esi,0x105c(%edx)
  10091e:	8b 7d e4             	mov    -0x1c(%ebp),%edi
  100921:	c1 ef 10             	shr    $0x10,%edi
  100924:	89 c1                	mov    %eax,%ecx
  100926:	c1 e1 06             	shl    $0x6,%ecx
  100929:	01 c1                	add    %eax,%ecx
  10092b:	01 c9                	add    %ecx,%ecx
  10092d:	01 c1                	add    %eax,%ecx
  10092f:	01 c9                	add    %ecx,%ecx
  100931:	01 c8                	add    %ecx,%eax
  100933:	c1 e0 04             	shl    $0x4,%eax
  100936:	8d 88 c0 3a 10 00    	lea    0x103ac0(%eax),%ecx
  10093c:	66 c7 80 20 4b 10 00 	movw   $0xffff,0x104b20(%eax)
  100943:	ff ff 
  100945:	66 c7 80 22 4b 10 00 	movw   $0x0,0x104b22(%eax)
  10094c:	00 00 
  10094e:	89 fb                	mov    %edi,%ebx
  100950:	88 98 24 4b 10 00    	mov    %bl,0x104b24(%eax)
  100956:	c6 80 25 4b 10 00 fa 	movb   $0xfa,0x104b25(%eax)
  10095d:	c6 80 26 4b 10 00 cf 	movb   $0xcf,0x104b26(%eax)
  100964:	c6 80 27 4b 10 00 00 	movb   $0x0,0x104b27(%eax)
  10096b:	66 c7 80 28 4b 10 00 	movw   $0xffff,0x104b28(%eax)
  100972:	ff ff 
  100974:	66 c7 80 2a 4b 10 00 	movw   $0x0,0x104b2a(%eax)
  10097b:	00 00 
  10097d:	88 98 2c 4b 10 00    	mov    %bl,0x104b2c(%eax)
  100983:	c6 80 2d 4b 10 00 f2 	movb   $0xf2,0x104b2d(%eax)
  10098a:	c6 80 2e 4b 10 00 cf 	movb   $0xcf,0x104b2e(%eax)
  100991:	c6 81 6f 10 00 00 00 	movb   $0x0,0x106f(%ecx)
  100998:	81 c2 70 10 00 00    	add    $0x1070,%edx
  10099e:	81 45 e4 00 00 40 00 	addl   $0x400000,-0x1c(%ebp)
  1009a5:	89 f0                	mov    %esi,%eax
  1009a7:	83 fe 02             	cmp    $0x2,%esi
  1009aa:	0f 85 0b ff ff ff    	jne    1008bb <initProcess+0x2b>
  1009b0:	50                   	push   %eax
  1009b1:	68 00 92 01 00       	push   $0x19200
  1009b6:	68 00 02 00 00       	push   $0x200
  1009bb:	68 00 80 00 00       	push   $0x8000
  1009c0:	e8 1b 04 00 00       	call   100de0 <readseg>
  1009c5:	5a                   	pop    %edx
  1009c6:	59                   	pop    %ecx
  1009c7:	6a 00                	push   $0x0
  1009c9:	68 00 80 00 00       	push   $0x8000
  1009ce:	e8 69 04 00 00       	call   100e3c <loader>
  1009d3:	a3 fc 4a 10 00       	mov    %eax,0x104afc
  1009d8:	c7 05 10 4b 10 00 02 	movl   $0x2,0x104b10
  1009df:	00 00 00 
  1009e2:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  1009e9:	2a 10 00 
  1009ec:	83 c4 10             	add    $0x10,%esp
  1009ef:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1009f2:	5b                   	pop    %ebx
  1009f3:	5e                   	pop    %esi
  1009f4:	5f                   	pop    %edi
  1009f5:	5d                   	pop    %ebp
  1009f6:	c3                   	ret    
  1009f7:	90                   	nop

001009f8 <schedule>:
  1009f8:	55                   	push   %ebp
  1009f9:	89 e5                	mov    %esp,%ebp
  1009fb:	53                   	push   %ebx
  1009fc:	83 ec 10             	sub    $0x10,%esp
  1009ff:	68 b1 13 10 00       	push   $0x1013b1
  100a04:	e8 97 06 00 00       	call   1010a0 <Log>
  100a09:	83 c4 10             	add    $0x10,%esp
  100a0c:	81 3d b0 3a 10 00 c0 	cmpl   $0x103ac0,0x103ab0
  100a13:	3a 10 00 
  100a16:	0f 84 6c 01 00 00    	je     100b88 <schedule+0x190>
  100a1c:	bb c0 3a 10 00       	mov    $0x103ac0,%ebx
  100a21:	b9 30 4b 10 00       	mov    $0x104b30,%ecx
  100a26:	83 bb 50 10 00 00 02 	cmpl   $0x2,0x1050(%ebx)
  100a2d:	0f 84 c9 00 00 00    	je     100afc <schedule+0x104>
  100a33:	83 b9 50 10 00 00 02 	cmpl   $0x2,0x1050(%ecx)
  100a3a:	74 34                	je     100a70 <schedule+0x78>
  100a3c:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  100a43:	2a 10 00 
  100a46:	c7 05 90 3a 10 00 00 	movl   $0x0,0x103a90
  100a4d:	00 00 00 
  100a50:	c7 05 94 3a 10 00 0a 	movl   $0xa,0x103a94
  100a57:	00 00 00 
  100a5a:	c7 05 2c 22 10 00 00 	movl   $0x0,0x10222c
  100a61:	00 00 00 
  100a64:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100a67:	c9                   	leave  
  100a68:	e9 57 08 00 00       	jmp    1012c4 <idle_fun>
  100a6d:	8d 76 00             	lea    0x0(%esi),%esi
  100a70:	89 0d b0 3a 10 00    	mov    %ecx,0x103ab0
  100a76:	c7 81 54 10 00 00 0a 	movl   $0xa,0x1054(%ecx)
  100a7d:	00 00 00 
  100a80:	c7 81 50 10 00 00 00 	movl   $0x0,0x1050(%ecx)
  100a87:	00 00 00 
  100a8a:	8d 81 50 10 00 00    	lea    0x1050(%ecx),%eax
  100a90:	a3 e4 5b 10 00       	mov    %eax,0x105be4
  100a95:	bb a0 5b 10 00       	mov    $0x105ba0,%ebx
  100a9a:	8b 81 60 10 00 00    	mov    0x1060(%ecx),%eax
  100aa0:	8b 91 64 10 00 00    	mov    0x1064(%ecx),%edx
  100aa6:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100aab:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100ab1:	8b 81 68 10 00 00    	mov    0x1068(%ecx),%eax
  100ab7:	8b 91 6c 10 00 00    	mov    0x106c(%ecx),%edx
  100abd:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  100ac2:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100ac8:	66 c7 05 2c 21 10 00 	movw   $0x37,0x10212c
  100acf:	37 00 
  100ad1:	66 89 1d 2e 21 10 00 	mov    %bx,0x10212e
  100ad8:	c1 eb 10             	shr    $0x10,%ebx
  100adb:	66 89 1d 30 21 10 00 	mov    %bx,0x102130
  100ae2:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  100ae7:	0f 01 10             	lgdtl  (%eax)
  100aea:	81 c1 00 10 00 00    	add    $0x1000,%ecx
  100af0:	89 0d 2c 22 10 00    	mov    %ecx,0x10222c
  100af6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100af9:	c9                   	leave  
  100afa:	c3                   	ret    
  100afb:	90                   	nop
  100afc:	89 1d b0 3a 10 00    	mov    %ebx,0x103ab0
  100b02:	c7 83 54 10 00 00 0a 	movl   $0xa,0x1054(%ebx)
  100b09:	00 00 00 
  100b0c:	c7 83 50 10 00 00 00 	movl   $0x0,0x1050(%ebx)
  100b13:	00 00 00 
  100b16:	8d 83 50 10 00 00    	lea    0x1050(%ebx),%eax
  100b1c:	a3 e4 5b 10 00       	mov    %eax,0x105be4
  100b21:	b9 a0 5b 10 00       	mov    $0x105ba0,%ecx
  100b26:	8b 83 60 10 00 00    	mov    0x1060(%ebx),%eax
  100b2c:	8b 93 64 10 00 00    	mov    0x1064(%ebx),%edx
  100b32:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100b37:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100b3d:	8b 83 68 10 00 00    	mov    0x1068(%ebx),%eax
  100b43:	8b 93 6c 10 00 00    	mov    0x106c(%ebx),%edx
  100b49:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  100b4e:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100b54:	66 c7 05 2c 21 10 00 	movw   $0x37,0x10212c
  100b5b:	37 00 
  100b5d:	66 89 0d 2e 21 10 00 	mov    %cx,0x10212e
  100b64:	c1 e9 10             	shr    $0x10,%ecx
  100b67:	66 89 0d 30 21 10 00 	mov    %cx,0x102130
  100b6e:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  100b73:	0f 01 10             	lgdtl  (%eax)
  100b76:	81 c3 00 10 00 00    	add    $0x1000,%ebx
  100b7c:	89 1d 2c 22 10 00    	mov    %ebx,0x10222c
  100b82:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100b85:	c9                   	leave  
  100b86:	c3                   	ret    
  100b87:	90                   	nop
  100b88:	bb 30 4b 10 00       	mov    $0x104b30,%ebx
  100b8d:	b9 c0 3a 10 00       	mov    $0x103ac0,%ecx
  100b92:	e9 8f fe ff ff       	jmp    100a26 <schedule+0x2e>
  100b97:	90                   	nop

00100b98 <applyANewPcb>:
  100b98:	83 3d 10 4b 10 00 03 	cmpl   $0x3,0x104b10
  100b9f:	74 27                	je     100bc8 <applyANewPcb+0x30>
  100ba1:	83 3d 80 5b 10 00 03 	cmpl   $0x3,0x105b80
  100ba8:	74 22                	je     100bcc <applyANewPcb+0x34>
  100baa:	55                   	push   %ebp
  100bab:	89 e5                	mov    %esp,%ebp
  100bad:	83 ec 10             	sub    $0x10,%esp
  100bb0:	6a 78                	push   $0x78
  100bb2:	68 b3 13 10 00       	push   $0x1013b3
  100bb7:	e8 70 06 00 00       	call   10122c <abort>
  100bbc:	83 c4 10             	add    $0x10,%esp
  100bbf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100bc4:	c9                   	leave  
  100bc5:	c3                   	ret    
  100bc6:	66 90                	xchg   %ax,%ax
  100bc8:	31 c0                	xor    %eax,%eax
  100bca:	c3                   	ret    
  100bcb:	90                   	nop
  100bcc:	b8 01 00 00 00       	mov    $0x1,%eax
  100bd1:	c3                   	ret    
  100bd2:	66 90                	xchg   %ax,%ax

00100bd4 <memcpy>:
  100bd4:	55                   	push   %ebp
  100bd5:	89 e5                	mov    %esp,%ebp
  100bd7:	56                   	push   %esi
  100bd8:	53                   	push   %ebx
  100bd9:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100bdc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  100bdf:	8b 75 10             	mov    0x10(%ebp),%esi
  100be2:	85 f6                	test   %esi,%esi
  100be4:	7e 12                	jle    100bf8 <memcpy+0x24>
  100be6:	31 c0                	xor    %eax,%eax
  100be8:	8a 14 03             	mov    (%ebx,%eax,1),%dl
  100beb:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  100bee:	40                   	inc    %eax
  100bef:	39 c6                	cmp    %eax,%esi
  100bf1:	75 f5                	jne    100be8 <memcpy+0x14>
  100bf3:	5b                   	pop    %ebx
  100bf4:	5e                   	pop    %esi
  100bf5:	5d                   	pop    %ebp
  100bf6:	c3                   	ret    
  100bf7:	90                   	nop
  100bf8:	c7 45 0c 05 00 00 00 	movl   $0x5,0xc(%ebp)
  100bff:	c7 45 08 c4 13 10 00 	movl   $0x1013c4,0x8(%ebp)
  100c06:	5b                   	pop    %ebx
  100c07:	5e                   	pop    %esi
  100c08:	5d                   	pop    %ebp
  100c09:	e9 1e 06 00 00       	jmp    10122c <abort>
  100c0e:	66 90                	xchg   %ax,%ax

00100c10 <waitDisk>:
  100c10:	55                   	push   %ebp
  100c11:	89 e5                	mov    %esp,%ebp
  100c13:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100c18:	ec                   	in     (%dx),%al
  100c19:	83 e0 c0             	and    $0xffffffc0,%eax
  100c1c:	3c 40                	cmp    $0x40,%al
  100c1e:	75 f8                	jne    100c18 <waitDisk+0x8>
  100c20:	5d                   	pop    %ebp
  100c21:	c3                   	ret    
  100c22:	66 90                	xchg   %ax,%ax

00100c24 <readSect>:
  100c24:	55                   	push   %ebp
  100c25:	89 e5                	mov    %esp,%ebp
  100c27:	53                   	push   %ebx
  100c28:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  100c2b:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100c30:	ec                   	in     (%dx),%al
  100c31:	83 e0 c0             	and    $0xffffffc0,%eax
  100c34:	3c 40                	cmp    $0x40,%al
  100c36:	75 f8                	jne    100c30 <readSect+0xc>
  100c38:	ba f2 01 00 00       	mov    $0x1f2,%edx
  100c3d:	b0 01                	mov    $0x1,%al
  100c3f:	ee                   	out    %al,(%dx)
  100c40:	ba f3 01 00 00       	mov    $0x1f3,%edx
  100c45:	88 c8                	mov    %cl,%al
  100c47:	ee                   	out    %al,(%dx)
  100c48:	89 c8                	mov    %ecx,%eax
  100c4a:	c1 f8 08             	sar    $0x8,%eax
  100c4d:	ba f4 01 00 00       	mov    $0x1f4,%edx
  100c52:	ee                   	out    %al,(%dx)
  100c53:	89 c8                	mov    %ecx,%eax
  100c55:	c1 f8 10             	sar    $0x10,%eax
  100c58:	ba f5 01 00 00       	mov    $0x1f5,%edx
  100c5d:	ee                   	out    %al,(%dx)
  100c5e:	89 c8                	mov    %ecx,%eax
  100c60:	c1 f8 18             	sar    $0x18,%eax
  100c63:	83 c8 e0             	or     $0xffffffe0,%eax
  100c66:	ba f6 01 00 00       	mov    $0x1f6,%edx
  100c6b:	ee                   	out    %al,(%dx)
  100c6c:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100c71:	b0 20                	mov    $0x20,%al
  100c73:	ee                   	out    %al,(%dx)
  100c74:	ec                   	in     (%dx),%al
  100c75:	83 e0 c0             	and    $0xffffffc0,%eax
  100c78:	3c 40                	cmp    $0x40,%al
  100c7a:	75 f8                	jne    100c74 <readSect+0x50>
  100c7c:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100c7f:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  100c85:	ba f0 01 00 00       	mov    $0x1f0,%edx
  100c8a:	66 90                	xchg   %ax,%ax
  100c8c:	ed                   	in     (%dx),%eax
  100c8d:	89 01                	mov    %eax,(%ecx)
  100c8f:	83 c1 04             	add    $0x4,%ecx
  100c92:	39 d9                	cmp    %ebx,%ecx
  100c94:	75 f6                	jne    100c8c <readSect+0x68>
  100c96:	5b                   	pop    %ebx
  100c97:	5d                   	pop    %ebp
  100c98:	c3                   	ret    
  100c99:	8d 76 00             	lea    0x0(%esi),%esi

00100c9c <initSeg>:
  100c9c:	55                   	push   %ebp
  100c9d:	89 e5                	mov    %esp,%ebp
  100c9f:	b9 a0 5b 10 00       	mov    $0x105ba0,%ecx
  100ca4:	66 c7 05 a8 5b 10 00 	movw   $0xffff,0x105ba8
  100cab:	ff ff 
  100cad:	66 c7 05 aa 5b 10 00 	movw   $0x0,0x105baa
  100cb4:	00 00 
  100cb6:	c6 05 ac 5b 10 00 00 	movb   $0x0,0x105bac
  100cbd:	c6 05 ad 5b 10 00 9a 	movb   $0x9a,0x105bad
  100cc4:	c6 05 ae 5b 10 00 cf 	movb   $0xcf,0x105bae
  100ccb:	c6 05 af 5b 10 00 00 	movb   $0x0,0x105baf
  100cd2:	66 c7 05 b0 5b 10 00 	movw   $0xffff,0x105bb0
  100cd9:	ff ff 
  100cdb:	66 c7 05 b2 5b 10 00 	movw   $0x0,0x105bb2
  100ce2:	00 00 
  100ce4:	c6 05 b4 5b 10 00 00 	movb   $0x0,0x105bb4
  100ceb:	c6 05 b5 5b 10 00 92 	movb   $0x92,0x105bb5
  100cf2:	c6 05 b6 5b 10 00 cf 	movb   $0xcf,0x105bb6
  100cf9:	c6 05 b7 5b 10 00 00 	movb   $0x0,0x105bb7
  100d00:	a1 d4 13 10 00       	mov    0x1013d4,%eax
  100d05:	8b 15 d8 13 10 00    	mov    0x1013d8,%edx
  100d0b:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100d10:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100d16:	a1 dc 13 10 00       	mov    0x1013dc,%eax
  100d1b:	8b 15 e0 13 10 00    	mov    0x1013e0,%edx
  100d21:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  100d26:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100d2c:	66 c7 05 c8 5b 10 00 	movw   $0x63,0x105bc8
  100d33:	63 00 
  100d35:	b8 e0 5b 10 00       	mov    $0x105be0,%eax
  100d3a:	66 a3 ca 5b 10 00    	mov    %ax,0x105bca
  100d40:	89 c2                	mov    %eax,%edx
  100d42:	c1 ea 10             	shr    $0x10,%edx
  100d45:	88 15 cc 5b 10 00    	mov    %dl,0x105bcc
  100d4b:	c6 05 cd 5b 10 00 89 	movb   $0x89,0x105bcd
  100d52:	c6 05 ce 5b 10 00 40 	movb   $0x40,0x105bce
  100d59:	c1 e8 18             	shr    $0x18,%eax
  100d5c:	a2 cf 5b 10 00       	mov    %al,0x105bcf
  100d61:	66 c7 05 34 21 10 00 	movw   $0x37,0x102134
  100d68:	37 00 
  100d6a:	66 89 0d 36 21 10 00 	mov    %cx,0x102136
  100d71:	c1 e9 10             	shr    $0x10,%ecx
  100d74:	66 89 0d 38 21 10 00 	mov    %cx,0x102138
  100d7b:	b8 34 21 10 00       	mov    $0x102134,%eax
  100d80:	0f 01 10             	lgdtl  (%eax)
  100d83:	b8 28 00 00 00       	mov    $0x28,%eax
  100d88:	0f 00 d8             	ltr    %ax
  100d8b:	c7 05 e8 5b 10 00 10 	movl   $0x10,0x105be8
  100d92:	00 00 00 
  100d95:	c7 05 e4 5b 10 00 90 	movl   $0x103a90,0x105be4
  100d9c:	3a 10 00 
  100d9f:	b8 10 00 00 00       	mov    $0x10,%eax
  100da4:	8e c0                	mov    %eax,%es
  100da6:	8e d8                	mov    %eax,%ds
  100da8:	8e e8                	mov    %eax,%gs
  100daa:	8e e0                	mov    %eax,%fs
  100dac:	8e d0                	mov    %eax,%ss
  100dae:	31 c0                	xor    %eax,%eax
  100db0:	0f 00 d0             	lldt   %ax
  100db3:	5d                   	pop    %ebp
  100db4:	c3                   	ret    
  100db5:	8d 76 00             	lea    0x0(%esi),%esi

00100db8 <enterUserSpace>:
  100db8:	55                   	push   %ebp
  100db9:	89 e5                	mov    %esp,%ebp
  100dbb:	b8 23 00 00 00       	mov    $0x23,%eax
  100dc0:	fa                   	cli    
  100dc1:	8e c0                	mov    %eax,%es
  100dc3:	8e e0                	mov    %eax,%fs
  100dc5:	8e d8                	mov    %eax,%ds
  100dc7:	8e e8                	mov    %eax,%gs
  100dc9:	66 6a 23             	pushw  $0x23
  100dcc:	68 00 00 40 00       	push   $0x400000
  100dd1:	68 02 02 00 00       	push   $0x202
  100dd6:	6a 1b                	push   $0x1b
  100dd8:	ff 75 08             	pushl  0x8(%ebp)
  100ddb:	fb                   	sti    
  100ddc:	cf                   	iret   
  100ddd:	5d                   	pop    %ebp
  100dde:	c3                   	ret    
  100ddf:	90                   	nop

00100de0 <readseg>:
  100de0:	55                   	push   %ebp
  100de1:	89 e5                	mov    %esp,%ebp
  100de3:	57                   	push   %edi
  100de4:	56                   	push   %esi
  100de5:	53                   	push   %ebx
  100de6:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100de9:	8b 7d 10             	mov    0x10(%ebp),%edi
  100dec:	8b 75 0c             	mov    0xc(%ebp),%esi
  100def:	01 de                	add    %ebx,%esi
  100df1:	89 f8                	mov    %edi,%eax
  100df3:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100df8:	78 2a                	js     100e24 <readseg+0x44>
  100dfa:	29 c3                	sub    %eax,%ebx
  100dfc:	85 ff                	test   %edi,%edi
  100dfe:	78 31                	js     100e31 <readseg+0x51>
  100e00:	c1 ff 09             	sar    $0x9,%edi
  100e03:	39 de                	cmp    %ebx,%esi
  100e05:	76 15                	jbe    100e1c <readseg+0x3c>
  100e07:	90                   	nop
  100e08:	57                   	push   %edi
  100e09:	53                   	push   %ebx
  100e0a:	e8 15 fe ff ff       	call   100c24 <readSect>
  100e0f:	81 c3 00 02 00 00    	add    $0x200,%ebx
  100e15:	47                   	inc    %edi
  100e16:	58                   	pop    %eax
  100e17:	5a                   	pop    %edx
  100e18:	39 de                	cmp    %ebx,%esi
  100e1a:	77 ec                	ja     100e08 <readseg+0x28>
  100e1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100e1f:	5b                   	pop    %ebx
  100e20:	5e                   	pop    %esi
  100e21:	5f                   	pop    %edi
  100e22:	5d                   	pop    %ebp
  100e23:	c3                   	ret    
  100e24:	48                   	dec    %eax
  100e25:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100e2a:	40                   	inc    %eax
  100e2b:	29 c3                	sub    %eax,%ebx
  100e2d:	85 ff                	test   %edi,%edi
  100e2f:	79 cf                	jns    100e00 <readseg+0x20>
  100e31:	81 c7 ff 01 00 00    	add    $0x1ff,%edi
  100e37:	eb c7                	jmp    100e00 <readseg+0x20>
  100e39:	8d 76 00             	lea    0x0(%esi),%esi

00100e3c <loader>:
  100e3c:	55                   	push   %ebp
  100e3d:	89 e5                	mov    %esp,%ebp
  100e3f:	57                   	push   %edi
  100e40:	56                   	push   %esi
  100e41:	53                   	push   %ebx
  100e42:	83 ec 2c             	sub    $0x2c,%esp
  100e45:	8b 55 08             	mov    0x8(%ebp),%edx
  100e48:	8b 42 2c             	mov    0x2c(%edx),%eax
  100e4b:	66 83 f8 ff          	cmp    $0xffff,%ax
  100e4f:	0f 84 8b 00 00 00    	je     100ee0 <loader+0xa4>
  100e55:	0f b7 c8             	movzwl %ax,%ecx
  100e58:	85 c9                	test   %ecx,%ecx
  100e5a:	74 72                	je     100ece <loader+0x92>
  100e5c:	31 ff                	xor    %edi,%edi
  100e5e:	89 d6                	mov    %edx,%esi
  100e60:	eb 07                	jmp    100e69 <loader+0x2d>
  100e62:	66 90                	xchg   %ax,%ax
  100e64:	47                   	inc    %edi
  100e65:	39 cf                	cmp    %ecx,%edi
  100e67:	7d 63                	jge    100ecc <loader+0x90>
  100e69:	0f b7 46 2a          	movzwl 0x2a(%esi),%eax
  100e6d:	0f af c7             	imul   %edi,%eax
  100e70:	03 46 1c             	add    0x1c(%esi),%eax
  100e73:	01 f0                	add    %esi,%eax
  100e75:	83 38 01             	cmpl   $0x1,(%eax)
  100e78:	75 ea                	jne    100e64 <loader+0x28>
  100e7a:	89 4d d0             	mov    %ecx,-0x30(%ebp)
  100e7d:	8b 55 0c             	mov    0xc(%ebp),%edx
  100e80:	03 50 08             	add    0x8(%eax),%edx
  100e83:	8b 58 10             	mov    0x10(%eax),%ebx
  100e86:	8b 48 14             	mov    0x14(%eax),%ecx
  100e89:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  100e8c:	51                   	push   %ecx
  100e8d:	8b 40 04             	mov    0x4(%eax),%eax
  100e90:	05 00 92 01 00       	add    $0x19200,%eax
  100e95:	50                   	push   %eax
  100e96:	53                   	push   %ebx
  100e97:	52                   	push   %edx
  100e98:	89 55 cc             	mov    %edx,-0x34(%ebp)
  100e9b:	e8 40 ff ff ff       	call   100de0 <readseg>
  100ea0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100ea3:	29 d8                	sub    %ebx,%eax
  100ea5:	83 c4 10             	add    $0x10,%esp
  100ea8:	85 c0                	test   %eax,%eax
  100eaa:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  100ead:	7e b5                	jle    100e64 <loader+0x28>
  100eaf:	8b 55 cc             	mov    -0x34(%ebp),%edx
  100eb2:	01 d3                	add    %edx,%ebx
  100eb4:	03 55 d4             	add    -0x2c(%ebp),%edx
  100eb7:	39 d3                	cmp    %edx,%ebx
  100eb9:	73 a9                	jae    100e64 <loader+0x28>
  100ebb:	90                   	nop
  100ebc:	43                   	inc    %ebx
  100ebd:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
  100ec1:	39 d3                	cmp    %edx,%ebx
  100ec3:	75 f7                	jne    100ebc <loader+0x80>
  100ec5:	47                   	inc    %edi
  100ec6:	39 cf                	cmp    %ecx,%edi
  100ec8:	7c 9f                	jl     100e69 <loader+0x2d>
  100eca:	66 90                	xchg   %ax,%ax
  100ecc:	89 f2                	mov    %esi,%edx
  100ece:	8b 42 18             	mov    0x18(%edx),%eax
  100ed1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100ed4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100ed7:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100eda:	5b                   	pop    %ebx
  100edb:	5e                   	pop    %esi
  100edc:	5f                   	pop    %edi
  100edd:	5d                   	pop    %ebp
  100ede:	c3                   	ret    
  100edf:	90                   	nop
  100ee0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  100ee3:	83 ec 08             	sub    $0x8,%esp
  100ee6:	6a 7e                	push   $0x7e
  100ee8:	68 e4 13 10 00       	push   $0x1013e4
  100eed:	e8 3a 03 00 00       	call   10122c <abort>
  100ef2:	83 c4 10             	add    $0x10,%esp
  100ef5:	b9 ff ff 00 00       	mov    $0xffff,%ecx
  100efa:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100efd:	e9 5a ff ff ff       	jmp    100e5c <loader+0x20>
  100f02:	66 90                	xchg   %ax,%ax

00100f04 <loadUMain>:
  100f04:	55                   	push   %ebp
  100f05:	89 e5                	mov    %esp,%ebp
  100f07:	83 ec 18             	sub    $0x18,%esp
  100f0a:	68 c9 00 00 00       	push   $0xc9
  100f0f:	68 00 80 00 00       	push   $0x8000
  100f14:	e8 0b fd ff ff       	call   100c24 <readSect>
  100f19:	6a 00                	push   $0x0
  100f1b:	68 00 80 00 00       	push   $0x8000
  100f20:	e8 17 ff ff ff       	call   100e3c <loader>
  100f25:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f28:	b8 23 00 00 00       	mov    $0x23,%eax
  100f2d:	fa                   	cli    
  100f2e:	8e c0                	mov    %eax,%es
  100f30:	8e e0                	mov    %eax,%fs
  100f32:	8e d8                	mov    %eax,%ds
  100f34:	8e e8                	mov    %eax,%gs
  100f36:	66 6a 23             	pushw  $0x23
  100f39:	68 00 00 40 00       	push   $0x400000
  100f3e:	68 02 02 00 00       	push   $0x202
  100f43:	6a 1b                	push   $0x1b
  100f45:	ff 75 f4             	pushl  -0xc(%ebp)
  100f48:	fb                   	sti    
  100f49:	cf                   	iret   
  100f4a:	83 c4 10             	add    $0x10,%esp
  100f4d:	c9                   	leave  
  100f4e:	c3                   	ret    
  100f4f:	90                   	nop

00100f50 <addString2Buff>:
  100f50:	55                   	push   %ebp
  100f51:	89 e5                	mov    %esp,%ebp
  100f53:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100f56:	8a 11                	mov    (%ecx),%dl
  100f58:	84 d2                	test   %dl,%dl
  100f5a:	74 1b                	je     100f77 <addString2Buff+0x27>
  100f5c:	a1 08 22 10 00       	mov    0x102208,%eax
  100f61:	29 c1                	sub    %eax,%ecx
  100f63:	90                   	nop
  100f64:	40                   	inc    %eax
  100f65:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100f6b:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  100f6e:	84 d2                	test   %dl,%dl
  100f70:	75 f2                	jne    100f64 <addString2Buff+0x14>
  100f72:	a3 08 22 10 00       	mov    %eax,0x102208
  100f77:	5d                   	pop    %ebp
  100f78:	c3                   	ret    
  100f79:	8d 76 00             	lea    0x0(%esi),%esi

00100f7c <addCh2Buff>:
  100f7c:	55                   	push   %ebp
  100f7d:	89 e5                	mov    %esp,%ebp
  100f7f:	a1 08 22 10 00       	mov    0x102208,%eax
  100f84:	8d 50 01             	lea    0x1(%eax),%edx
  100f87:	89 15 08 22 10 00    	mov    %edx,0x102208
  100f8d:	8b 55 08             	mov    0x8(%ebp),%edx
  100f90:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100f96:	5d                   	pop    %ebp
  100f97:	c3                   	ret    

00100f98 <addDec2Buff>:
  100f98:	55                   	push   %ebp
  100f99:	89 e5                	mov    %esp,%ebp
  100f9b:	56                   	push   %esi
  100f9c:	53                   	push   %ebx
  100f9d:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100fa0:	85 db                	test   %ebx,%ebx
  100fa2:	0f 89 92 00 00 00    	jns    10103a <addDec2Buff+0xa2>
  100fa8:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  100fae:	74 58                	je     101008 <addDec2Buff+0x70>
  100fb0:	a1 08 22 10 00       	mov    0x102208,%eax
  100fb5:	c6 80 40 21 10 00 2d 	movb   $0x2d,0x102140(%eax)
  100fbc:	40                   	inc    %eax
  100fbd:	f7 db                	neg    %ebx
  100fbf:	a3 08 22 10 00       	mov    %eax,0x102208
  100fc4:	83 ec 0c             	sub    $0xc,%esp
  100fc7:	b8 67 66 66 66       	mov    $0x66666667,%eax
  100fcc:	f7 eb                	imul   %ebx
  100fce:	89 d6                	mov    %edx,%esi
  100fd0:	c1 fe 02             	sar    $0x2,%esi
  100fd3:	89 d8                	mov    %ebx,%eax
  100fd5:	c1 f8 1f             	sar    $0x1f,%eax
  100fd8:	29 c6                	sub    %eax,%esi
  100fda:	56                   	push   %esi
  100fdb:	e8 b8 ff ff ff       	call   100f98 <addDec2Buff>
  100fe0:	8b 15 08 22 10 00    	mov    0x102208,%edx
  100fe6:	8d 42 01             	lea    0x1(%edx),%eax
  100fe9:	a3 08 22 10 00       	mov    %eax,0x102208
  100fee:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  100ff1:	01 c0                	add    %eax,%eax
  100ff3:	29 c3                	sub    %eax,%ebx
  100ff5:	83 c3 30             	add    $0x30,%ebx
  100ff8:	88 9a 40 21 10 00    	mov    %bl,0x102140(%edx)
  100ffe:	83 c4 10             	add    $0x10,%esp
  101001:	8d 65 f8             	lea    -0x8(%ebp),%esp
  101004:	5b                   	pop    %ebx
  101005:	5e                   	pop    %esi
  101006:	5d                   	pop    %ebp
  101007:	c3                   	ret    
  101008:	8b 1d 08 22 10 00    	mov    0x102208,%ebx
  10100e:	8d 43 01             	lea    0x1(%ebx),%eax
  101011:	b2 2d                	mov    $0x2d,%dl
  101013:	b9 f1 13 10 00       	mov    $0x1013f1,%ecx
  101018:	29 d9                	sub    %ebx,%ecx
  10101a:	66 90                	xchg   %ax,%ax
  10101c:	89 c3                	mov    %eax,%ebx
  10101e:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  101024:	40                   	inc    %eax
  101025:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  101029:	84 d2                	test   %dl,%dl
  10102b:	75 ef                	jne    10101c <addDec2Buff+0x84>
  10102d:	89 1d 08 22 10 00    	mov    %ebx,0x102208
  101033:	8d 65 f8             	lea    -0x8(%ebp),%esp
  101036:	5b                   	pop    %ebx
  101037:	5e                   	pop    %esi
  101038:	5d                   	pop    %ebp
  101039:	c3                   	ret    
  10103a:	74 c5                	je     101001 <addDec2Buff+0x69>
  10103c:	eb 86                	jmp    100fc4 <addDec2Buff+0x2c>
  10103e:	66 90                	xchg   %ax,%ax

00101040 <addHex2Buff>:
  101040:	55                   	push   %ebp
  101041:	89 e5                	mov    %esp,%ebp
  101043:	8b 45 08             	mov    0x8(%ebp),%eax
  101046:	85 c0                	test   %eax,%eax
  101048:	75 02                	jne    10104c <addHex2Buff+0xc>
  10104a:	5d                   	pop    %ebp
  10104b:	c3                   	ret    
  10104c:	5d                   	pop    %ebp
  10104d:	eb 01                	jmp    101050 <addHex2Buff.part.1>
  10104f:	90                   	nop

00101050 <addHex2Buff.part.1>:
  101050:	55                   	push   %ebp
  101051:	89 e5                	mov    %esp,%ebp
  101053:	53                   	push   %ebx
  101054:	83 ec 10             	sub    $0x10,%esp
  101057:	89 c3                	mov    %eax,%ebx
  101059:	89 c2                	mov    %eax,%edx
  10105b:	c1 ea 04             	shr    $0x4,%edx
  10105e:	52                   	push   %edx
  10105f:	e8 dc ff ff ff       	call   101040 <addHex2Buff>
  101064:	89 d8                	mov    %ebx,%eax
  101066:	83 e0 0f             	and    $0xf,%eax
  101069:	83 c4 10             	add    $0x10,%esp
  10106c:	8b 15 08 22 10 00    	mov    0x102208,%edx
  101072:	8d 4a 01             	lea    0x1(%edx),%ecx
  101075:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  10107b:	83 f8 09             	cmp    $0x9,%eax
  10107e:	76 10                	jbe    101090 <addHex2Buff.part.1+0x40>
  101080:	83 c0 57             	add    $0x57,%eax
  101083:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  101089:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10108c:	c9                   	leave  
  10108d:	c3                   	ret    
  10108e:	66 90                	xchg   %ax,%ax
  101090:	83 c0 30             	add    $0x30,%eax
  101093:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  101099:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10109c:	c9                   	leave  
  10109d:	c3                   	ret    
  10109e:	66 90                	xchg   %ax,%ax

001010a0 <Log>:
  1010a0:	55                   	push   %ebp
  1010a1:	89 e5                	mov    %esp,%ebp
  1010a3:	57                   	push   %edi
  1010a4:	56                   	push   %esi
  1010a5:	53                   	push   %ebx
  1010a6:	83 ec 0c             	sub    $0xc,%esp
  1010a9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1010ac:	8d 75 0c             	lea    0xc(%ebp),%esi
  1010af:	8a 03                	mov    (%ebx),%al
  1010b1:	84 c0                	test   %al,%al
  1010b3:	74 21                	je     1010d6 <Log+0x36>
  1010b5:	3c 25                	cmp    $0x25,%al
  1010b7:	74 5f                	je     101118 <Log+0x78>
  1010b9:	8b 15 08 22 10 00    	mov    0x102208,%edx
  1010bf:	8d 4a 01             	lea    0x1(%edx),%ecx
  1010c2:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  1010c8:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  1010ce:	8a 43 01             	mov    0x1(%ebx),%al
  1010d1:	43                   	inc    %ebx
  1010d2:	84 c0                	test   %al,%al
  1010d4:	75 df                	jne    1010b5 <Log+0x15>
  1010d6:	a1 08 22 10 00       	mov    0x102208,%eax
  1010db:	c6 80 40 21 10 00 00 	movb   $0x0,0x102140(%eax)
  1010e2:	85 c0                	test   %eax,%eax
  1010e4:	7e 1e                	jle    101104 <Log+0x64>
  1010e6:	31 db                	xor    %ebx,%ebx
  1010e8:	83 ec 0c             	sub    $0xc,%esp
  1010eb:	0f be 83 40 21 10 00 	movsbl 0x102140(%ebx),%eax
  1010f2:	50                   	push   %eax
  1010f3:	e8 7c f7 ff ff       	call   100874 <putChar>
  1010f8:	43                   	inc    %ebx
  1010f9:	83 c4 10             	add    $0x10,%esp
  1010fc:	39 1d 08 22 10 00    	cmp    %ebx,0x102208
  101102:	7f e4                	jg     1010e8 <Log+0x48>
  101104:	c7 05 08 22 10 00 00 	movl   $0x0,0x102208
  10110b:	00 00 00 
  10110e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  101111:	5b                   	pop    %ebx
  101112:	5e                   	pop    %esi
  101113:	5f                   	pop    %edi
  101114:	5d                   	pop    %ebp
  101115:	c3                   	ret    
  101116:	66 90                	xchg   %ax,%ax
  101118:	8a 43 01             	mov    0x1(%ebx),%al
  10111b:	3c 64                	cmp    $0x64,%al
  10111d:	74 5e                	je     10117d <Log+0xdd>
  10111f:	7f 33                	jg     101154 <Log+0xb4>
  101121:	3c 25                	cmp    $0x25,%al
  101123:	0f 84 b3 00 00 00    	je     1011dc <Log+0x13c>
  101129:	3c 63                	cmp    $0x63,%al
  10112b:	75 4a                	jne    101177 <Log+0xd7>
  10112d:	8b 16                	mov    (%esi),%edx
  10112f:	a1 08 22 10 00       	mov    0x102208,%eax
  101134:	8d 48 01             	lea    0x1(%eax),%ecx
  101137:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  10113d:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  101143:	8a 43 02             	mov    0x2(%ebx),%al
  101146:	83 c6 04             	add    $0x4,%esi
  101149:	83 c3 02             	add    $0x2,%ebx
  10114c:	e9 60 ff ff ff       	jmp    1010b1 <Log+0x11>
  101151:	8d 76 00             	lea    0x0(%esi),%esi
  101154:	3c 73                	cmp    $0x73,%al
  101156:	74 47                	je     10119f <Log+0xff>
  101158:	3c 78                	cmp    $0x78,%al
  10115a:	75 1b                	jne    101177 <Log+0xd7>
  10115c:	89 f0                	mov    %esi,%eax
  10115e:	83 c6 04             	add    $0x4,%esi
  101161:	8b 00                	mov    (%eax),%eax
  101163:	85 c0                	test   %eax,%eax
  101165:	74 21                	je     101188 <Log+0xe8>
  101167:	e8 e4 fe ff ff       	call   101050 <addHex2Buff.part.1>
  10116c:	8a 43 02             	mov    0x2(%ebx),%al
  10116f:	83 c3 02             	add    $0x2,%ebx
  101172:	e9 3a ff ff ff       	jmp    1010b1 <Log+0x11>
  101177:	43                   	inc    %ebx
  101178:	e9 34 ff ff ff       	jmp    1010b1 <Log+0x11>
  10117d:	89 f0                	mov    %esi,%eax
  10117f:	83 c6 04             	add    $0x4,%esi
  101182:	8b 00                	mov    (%eax),%eax
  101184:	85 c0                	test   %eax,%eax
  101186:	75 6e                	jne    1011f6 <Log+0x156>
  101188:	a1 08 22 10 00       	mov    0x102208,%eax
  10118d:	8d 50 01             	lea    0x1(%eax),%edx
  101190:	89 15 08 22 10 00    	mov    %edx,0x102208
  101196:	c6 80 40 21 10 00 30 	movb   $0x30,0x102140(%eax)
  10119d:	eb cd                	jmp    10116c <Log+0xcc>
  10119f:	8d 4e 04             	lea    0x4(%esi),%ecx
  1011a2:	8b 36                	mov    (%esi),%esi
  1011a4:	8a 16                	mov    (%esi),%dl
  1011a6:	84 d2                	test   %dl,%dl
  1011a8:	74 25                	je     1011cf <Log+0x12f>
  1011aa:	8b 3d 08 22 10 00    	mov    0x102208,%edi
  1011b0:	8d 47 01             	lea    0x1(%edi),%eax
  1011b3:	29 fe                	sub    %edi,%esi
  1011b5:	8d 76 00             	lea    0x0(%esi),%esi
  1011b8:	89 c7                	mov    %eax,%edi
  1011ba:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  1011c0:	40                   	inc    %eax
  1011c1:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  1011c5:	84 d2                	test   %dl,%dl
  1011c7:	75 ef                	jne    1011b8 <Log+0x118>
  1011c9:	89 3d 08 22 10 00    	mov    %edi,0x102208
  1011cf:	8a 43 02             	mov    0x2(%ebx),%al
  1011d2:	89 ce                	mov    %ecx,%esi
  1011d4:	83 c3 02             	add    $0x2,%ebx
  1011d7:	e9 d5 fe ff ff       	jmp    1010b1 <Log+0x11>
  1011dc:	a1 08 22 10 00       	mov    0x102208,%eax
  1011e1:	8d 50 01             	lea    0x1(%eax),%edx
  1011e4:	89 15 08 22 10 00    	mov    %edx,0x102208
  1011ea:	c6 80 40 21 10 00 25 	movb   $0x25,0x102140(%eax)
  1011f1:	e9 76 ff ff ff       	jmp    10116c <Log+0xcc>
  1011f6:	83 ec 0c             	sub    $0xc,%esp
  1011f9:	50                   	push   %eax
  1011fa:	e8 99 fd ff ff       	call   100f98 <addDec2Buff>
  1011ff:	83 c4 10             	add    $0x10,%esp
  101202:	e9 65 ff ff ff       	jmp    10116c <Log+0xcc>
  101207:	90                   	nop

00101208 <ProcessTableIndex>:
  101208:	55                   	push   %ebp
  101209:	89 e5                	mov    %esp,%ebp
  10120b:	81 7d 08 40 2a 10 00 	cmpl   $0x102a40,0x8(%ebp)
  101212:	74 0e                	je     101222 <ProcessTableIndex+0x1a>
  101214:	31 c0                	xor    %eax,%eax
  101216:	81 7d 08 c0 3a 10 00 	cmpl   $0x103ac0,0x8(%ebp)
  10121d:	0f 95 c0             	setne  %al
  101220:	5d                   	pop    %ebp
  101221:	c3                   	ret    
  101222:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  101227:	5d                   	pop    %ebp
  101228:	c3                   	ret    
  101229:	66 90                	xchg   %ax,%ax
  10122b:	90                   	nop

0010122c <abort>:
  10122c:	55                   	push   %ebp
  10122d:	89 e5                	mov    %esp,%ebp
  10122f:	57                   	push   %edi
  101230:	56                   	push   %esi
  101231:	53                   	push   %ebx
  101232:	83 ec 1c             	sub    $0x1c,%esp
  101235:	8b 55 08             	mov    0x8(%ebp),%edx
  101238:	fa                   	cli    
  101239:	8a 02                	mov    (%edx),%al
  10123b:	b9 32 20 10 00       	mov    $0x102032,%ecx
  101240:	84 c0                	test   %al,%al
  101242:	74 0b                	je     10124f <abort+0x23>
  101244:	41                   	inc    %ecx
  101245:	42                   	inc    %edx
  101246:	88 41 ff             	mov    %al,-0x1(%ecx)
  101249:	8a 02                	mov    (%edx),%al
  10124b:	84 c0                	test   %al,%al
  10124d:	75 f5                	jne    101244 <abort+0x18>
  10124f:	c6 01 3a             	movb   $0x3a,(%ecx)
  101252:	bb 29 22 10 00       	mov    $0x102229,%ebx
  101257:	be 0a 00 00 00       	mov    $0xa,%esi
  10125c:	bf 67 66 66 66       	mov    $0x66666667,%edi
  101261:	4b                   	dec    %ebx
  101262:	8b 45 0c             	mov    0xc(%ebp),%eax
  101265:	99                   	cltd   
  101266:	f7 fe                	idiv   %esi
  101268:	8d 42 30             	lea    0x30(%edx),%eax
  10126b:	88 45 e7             	mov    %al,-0x19(%ebp)
  10126e:	88 03                	mov    %al,(%ebx)
  101270:	89 f8                	mov    %edi,%eax
  101272:	f7 6d 0c             	imull  0xc(%ebp)
  101275:	c1 fa 02             	sar    $0x2,%edx
  101278:	8b 45 0c             	mov    0xc(%ebp),%eax
  10127b:	c1 f8 1f             	sar    $0x1f,%eax
  10127e:	29 c2                	sub    %eax,%edx
  101280:	89 55 0c             	mov    %edx,0xc(%ebp)
  101283:	75 dc                	jne    101261 <abort+0x35>
  101285:	41                   	inc    %ecx
  101286:	41                   	inc    %ecx
  101287:	43                   	inc    %ebx
  101288:	8a 45 e7             	mov    -0x19(%ebp),%al
  10128b:	88 41 ff             	mov    %al,-0x1(%ecx)
  10128e:	8a 03                	mov    (%ebx),%al
  101290:	88 45 e7             	mov    %al,-0x19(%ebp)
  101293:	84 c0                	test   %al,%al
  101295:	75 ef                	jne    101286 <abort+0x5a>
  101297:	c6 01 0a             	movb   $0xa,(%ecx)
  10129a:	0f be 05 20 20 10 00 	movsbl 0x102020,%eax
  1012a1:	84 c0                	test   %al,%al
  1012a3:	74 1b                	je     1012c0 <abort+0x94>
  1012a5:	bb 20 20 10 00       	mov    $0x102020,%ebx
  1012aa:	83 ec 0c             	sub    $0xc,%esp
  1012ad:	50                   	push   %eax
  1012ae:	e8 c1 f5 ff ff       	call   100874 <putChar>
  1012b3:	43                   	inc    %ebx
  1012b4:	0f be 03             	movsbl (%ebx),%eax
  1012b7:	83 c4 10             	add    $0x10,%esp
  1012ba:	84 c0                	test   %al,%al
  1012bc:	75 ec                	jne    1012aa <abort+0x7e>
  1012be:	66 90                	xchg   %ax,%ax
  1012c0:	f4                   	hlt    
  1012c1:	eb fd                	jmp    1012c0 <abort+0x94>
  1012c3:	90                   	nop

001012c4 <idle_fun>:
  1012c4:	55                   	push   %ebp
  1012c5:	89 e5                	mov    %esp,%ebp
  1012c7:	fb                   	sti    
  1012c8:	f4                   	hlt    
  1012c9:	eb fd                	jmp    1012c8 <idle_fun+0x4>
  1012cb:	90                   	nop

001012cc <kEntry>:
  1012cc:	55                   	push   %ebp
  1012cd:	89 e5                	mov    %esp,%ebp
  1012cf:	83 ec 08             	sub    $0x8,%esp
  1012d2:	e8 5d f5 ff ff       	call   100834 <initSerial>
  1012d7:	e8 7c ed ff ff       	call   100058 <initTimer>
  1012dc:	e8 1b f2 ff ff       	call   1004fc <initIdt>
  1012e1:	e8 1a ed ff ff       	call   100000 <initIntr>
  1012e6:	e8 b1 f9 ff ff       	call   100c9c <initSeg>
  1012eb:	e8 a0 f5 ff ff       	call   100890 <initProcess>
  1012f0:	b8 88 3a 10 00       	mov    $0x103a88,%eax
  1012f5:	89 c4                	mov    %eax,%esp
  1012f7:	e8 c8 ff ff ff       	call   1012c4 <idle_fun>

001012fc <no0>:
  1012fc:	6a 00                	push   $0x0
  1012fe:	6a 00                	push   $0x0
  101300:	eb 64                	jmp    101366 <asmDoIrq>

00101302 <no1>:
  101302:	6a 00                	push   $0x0
  101304:	6a 01                	push   $0x1
  101306:	eb 5e                	jmp    101366 <asmDoIrq>

00101308 <no2>:
  101308:	6a 00                	push   $0x0
  10130a:	6a 02                	push   $0x2
  10130c:	eb 58                	jmp    101366 <asmDoIrq>

0010130e <no3>:
  10130e:	6a 00                	push   $0x0
  101310:	6a 03                	push   $0x3
  101312:	eb 52                	jmp    101366 <asmDoIrq>

00101314 <no4>:
  101314:	6a 00                	push   $0x0
  101316:	6a 04                	push   $0x4
  101318:	eb 4c                	jmp    101366 <asmDoIrq>

0010131a <no5>:
  10131a:	6a 00                	push   $0x0
  10131c:	6a 05                	push   $0x5
  10131e:	eb 46                	jmp    101366 <asmDoIrq>

00101320 <no6>:
  101320:	6a 00                	push   $0x0
  101322:	6a 06                	push   $0x6
  101324:	eb 40                	jmp    101366 <asmDoIrq>

00101326 <no7>:
  101326:	6a 00                	push   $0x0
  101328:	6a 07                	push   $0x7
  10132a:	eb 3a                	jmp    101366 <asmDoIrq>

0010132c <no8>:
  10132c:	6a 08                	push   $0x8
  10132e:	eb 36                	jmp    101366 <asmDoIrq>

00101330 <no9>:
  101330:	6a 00                	push   $0x0
  101332:	6a 09                	push   $0x9
  101334:	eb 30                	jmp    101366 <asmDoIrq>

00101336 <no10>:
  101336:	6a 0a                	push   $0xa
  101338:	eb 2c                	jmp    101366 <asmDoIrq>

0010133a <no11>:
  10133a:	6a 0b                	push   $0xb
  10133c:	eb 28                	jmp    101366 <asmDoIrq>

0010133e <no12>:
  10133e:	6a 0c                	push   $0xc
  101340:	eb 24                	jmp    101366 <asmDoIrq>

00101342 <no13>:
  101342:	6a 0d                	push   $0xd
  101344:	eb 20                	jmp    101366 <asmDoIrq>

00101346 <no14>:
  101346:	6a 0e                	push   $0xe
  101348:	eb 1c                	jmp    101366 <asmDoIrq>

0010134a <intr0>:
  10134a:	6a 00                	push   $0x0
  10134c:	68 e8 03 00 00       	push   $0x3e8
  101351:	eb 13                	jmp    101366 <asmDoIrq>

00101353 <irqEmpty>:
  101353:	6a 00                	push   $0x0
  101355:	6a ff                	push   $0xffffffff
  101357:	eb 0d                	jmp    101366 <asmDoIrq>

00101359 <irqGProtectFault>:
  101359:	6a 0d                	push   $0xd
  10135b:	eb 09                	jmp    101366 <asmDoIrq>

0010135d <irqSyscall>:
  10135d:	6a 00                	push   $0x0
  10135f:	68 80 00 00 00       	push   $0x80
  101364:	eb 00                	jmp    101366 <asmDoIrq>

00101366 <asmDoIrq>:
  101366:	fa                   	cli    
  101367:	1e                   	push   %ds
  101368:	06                   	push   %es
  101369:	0f a0                	push   %fs
  10136b:	0f a8                	push   %gs
  10136d:	60                   	pusha  
  10136e:	54                   	push   %esp
  10136f:	e8 e4 f0 ff ff       	call   100458 <irqHandle>
  101374:	a1 2c 22 10 00       	mov    0x10222c,%eax
  101379:	85 c0                	test   %eax,%eax
  10137b:	74 02                	je     10137f <switch>
  10137d:	89 c4                	mov    %eax,%esp

0010137f <switch>:
  10137f:	83 c4 04             	add    $0x4,%esp
  101382:	61                   	popa   
  101383:	0f a9                	pop    %gs
  101385:	0f a1                	pop    %fs
  101387:	07                   	pop    %es
  101388:	1f                   	pop    %ds
  101389:	83 c4 04             	add    $0x4,%esp
  10138c:	83 c4 04             	add    $0x4,%esp
  10138f:	fb                   	sti    
  101390:	cf                   	iret   
