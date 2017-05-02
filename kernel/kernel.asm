
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
  100083:	e9 ac 09 00 00       	jmp    100a34 <schedule>

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
  1000a7:	e9 88 09 00 00       	jmp    100a34 <schedule>

001000ac <do_sys_fork>:
  1000ac:	55                   	push   %ebp
  1000ad:	89 e5                	mov    %esp,%ebp
  1000af:	57                   	push   %edi
  1000b0:	56                   	push   %esi
  1000b1:	53                   	push   %ebx
  1000b2:	83 ec 1c             	sub    $0x1c,%esp
  1000b5:	e8 06 0b 00 00       	call   100bc0 <applyANewPcb>
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
  100175:	e8 86 0a 00 00       	call   100c00 <memcpy>
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
  1001dc:	68 c8 13 10 00       	push   $0x1013c8
  1001e1:	e8 72 10 00 00       	call   101258 <abort>
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
  10025d:	e9 d2 07 00 00       	jmp    100a34 <schedule>
  100262:	66 90                	xchg   %ax,%ax
  100264:	83 ec 0c             	sub    $0xc,%esp
  100267:	6a 32                	push   $0x32
  100269:	e8 e6 05 00 00       	call   100854 <putChar>
  10026e:	83 c4 10             	add    $0x10,%esp
  100271:	e9 73 ff ff ff       	jmp    1001e9 <timerHandle+0x41>
  100276:	66 90                	xchg   %ax,%ax
  100278:	83 ec 0c             	sub    $0xc,%esp
  10027b:	6a 2e                	push   $0x2e
  10027d:	e8 d2 05 00 00       	call   100854 <putChar>
  100282:	83 c4 10             	add    $0x10,%esp
  100285:	e9 5f ff ff ff       	jmp    1001e9 <timerHandle+0x41>
  10028a:	66 90                	xchg   %ax,%ax
  10028c:	83 ec 0c             	sub    $0xc,%esp
  10028f:	6a 31                	push   $0x31
  100291:	e8 be 05 00 00       	call   100854 <putChar>
  100296:	83 c4 10             	add    $0x10,%esp
  100299:	e9 4b ff ff ff       	jmp    1001e9 <timerHandle+0x41>
  10029e:	66 90                	xchg   %ax,%ax

001002a0 <GProtectFaultHandle>:
  1002a0:	55                   	push   %ebp
  1002a1:	89 e5                	mov    %esp,%ebp
  1002a3:	83 ec 10             	sub    $0x10,%esp
  1002a6:	68 b0 00 00 00       	push   $0xb0
  1002ab:	68 c8 13 10 00       	push   $0x1013c8
  1002b0:	e8 a3 0f 00 00       	call   101258 <abort>
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
  100341:	68 c8 13 10 00       	push   $0x1013c8
  100346:	e8 0d 0f 00 00       	call   101258 <abort>
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
  100408:	e9 27 06 00 00       	jmp    100a34 <schedule>
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
  10042f:	e9 00 06 00 00       	jmp    100a34 <schedule>
  100434:	83 ec 08             	sub    $0x8,%esp
  100437:	68 aa 00 00 00       	push   $0xaa
  10043c:	68 c8 13 10 00       	push   $0x1013c8
  100441:	e8 12 0e 00 00       	call   101258 <abort>
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
  100474:	74 4e                	je     1004c4 <irqHandle+0x6c>
  100476:	7e 20                	jle    100498 <irqHandle+0x40>
  100478:	3d 80 00 00 00       	cmp    $0x80,%eax
  10047d:	74 0d                	je     10048c <irqHandle+0x34>
  10047f:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  100484:	75 1a                	jne    1004a0 <irqHandle+0x48>
  100486:	c9                   	leave  
  100487:	e9 1c fd ff ff       	jmp    1001a8 <timerHandle>
  10048c:	89 55 08             	mov    %edx,0x8(%ebp)
  10048f:	c9                   	leave  
  100490:	e9 3b ff ff ff       	jmp    1003d0 <syscallHandle>
  100495:	8d 76 00             	lea    0x0(%esi),%esi
  100498:	83 f8 ff             	cmp    $0xffffffff,%eax
  10049b:	75 03                	jne    1004a0 <irqHandle+0x48>
  10049d:	c9                   	leave  
  10049e:	c3                   	ret    
  10049f:	90                   	nop
  1004a0:	83 ec 08             	sub    $0x8,%esp
  1004a3:	50                   	push   %eax
  1004a4:	68 db 13 10 00       	push   $0x1013db
  1004a9:	e8 1e 0c 00 00       	call   1010cc <Log>
  1004ae:	58                   	pop    %eax
  1004af:	5a                   	pop    %edx
  1004b0:	6a 3c                	push   $0x3c
  1004b2:	68 c8 13 10 00       	push   $0x1013c8
  1004b7:	e8 9c 0d 00 00       	call   101258 <abort>
  1004bc:	83 c4 10             	add    $0x10,%esp
  1004bf:	c9                   	leave  
  1004c0:	c3                   	ret    
  1004c1:	8d 76 00             	lea    0x0(%esi),%esi
  1004c4:	83 ec 08             	sub    $0x8,%esp
  1004c7:	68 b0 00 00 00       	push   $0xb0
  1004cc:	68 c8 13 10 00       	push   $0x1013c8
  1004d1:	e8 82 0d 00 00       	call   101258 <abort>
  1004d6:	83 c4 10             	add    $0x10,%esp
  1004d9:	c9                   	leave  
  1004da:	c3                   	ret    
  1004db:	90                   	nop

001004dc <initIdt>:
  1004dc:	55                   	push   %ebp
  1004dd:	89 e5                	mov    %esp,%ebp
  1004df:	53                   	push   %ebx
  1004e0:	ba 87 13 10 00       	mov    $0x101387,%edx
  1004e5:	89 d3                	mov    %edx,%ebx
  1004e7:	c1 ea 10             	shr    $0x10,%edx
  1004ea:	b9 40 2a 10 00       	mov    $0x102a40,%ecx
  1004ef:	b8 40 22 10 00       	mov    $0x102240,%eax
  1004f4:	66 89 18             	mov    %bx,(%eax)
  1004f7:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  1004fd:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100501:	c6 40 05 8f          	movb   $0x8f,0x5(%eax)
  100505:	66 89 50 06          	mov    %dx,0x6(%eax)
  100509:	83 c0 08             	add    $0x8,%eax
  10050c:	39 c1                	cmp    %eax,%ecx
  10050e:	75 e4                	jne    1004f4 <initIdt+0x18>
  100510:	b8 30 13 10 00       	mov    $0x101330,%eax
  100515:	66 a3 40 22 10 00    	mov    %ax,0x102240
  10051b:	66 c7 05 42 22 10 00 	movw   $0x8,0x102242
  100522:	08 00 
  100524:	c6 05 44 22 10 00 00 	movb   $0x0,0x102244
  10052b:	c6 05 45 22 10 00 8f 	movb   $0x8f,0x102245
  100532:	c1 e8 10             	shr    $0x10,%eax
  100535:	66 a3 46 22 10 00    	mov    %ax,0x102246
  10053b:	b8 36 13 10 00       	mov    $0x101336,%eax
  100540:	66 a3 48 22 10 00    	mov    %ax,0x102248
  100546:	66 c7 05 4a 22 10 00 	movw   $0x8,0x10224a
  10054d:	08 00 
  10054f:	c6 05 4c 22 10 00 00 	movb   $0x0,0x10224c
  100556:	c6 05 4d 22 10 00 8f 	movb   $0x8f,0x10224d
  10055d:	c1 e8 10             	shr    $0x10,%eax
  100560:	66 a3 4e 22 10 00    	mov    %ax,0x10224e
  100566:	b8 3c 13 10 00       	mov    $0x10133c,%eax
  10056b:	66 a3 50 22 10 00    	mov    %ax,0x102250
  100571:	66 c7 05 52 22 10 00 	movw   $0x8,0x102252
  100578:	08 00 
  10057a:	c6 05 54 22 10 00 00 	movb   $0x0,0x102254
  100581:	c6 05 55 22 10 00 8f 	movb   $0x8f,0x102255
  100588:	c1 e8 10             	shr    $0x10,%eax
  10058b:	66 a3 56 22 10 00    	mov    %ax,0x102256
  100591:	b8 42 13 10 00       	mov    $0x101342,%eax
  100596:	66 a3 58 22 10 00    	mov    %ax,0x102258
  10059c:	66 c7 05 5a 22 10 00 	movw   $0x8,0x10225a
  1005a3:	08 00 
  1005a5:	c6 05 5c 22 10 00 00 	movb   $0x0,0x10225c
  1005ac:	c6 05 5d 22 10 00 8f 	movb   $0x8f,0x10225d
  1005b3:	c1 e8 10             	shr    $0x10,%eax
  1005b6:	66 a3 5e 22 10 00    	mov    %ax,0x10225e
  1005bc:	b8 48 13 10 00       	mov    $0x101348,%eax
  1005c1:	66 a3 60 22 10 00    	mov    %ax,0x102260
  1005c7:	66 c7 05 62 22 10 00 	movw   $0x8,0x102262
  1005ce:	08 00 
  1005d0:	c6 05 64 22 10 00 00 	movb   $0x0,0x102264
  1005d7:	c6 05 65 22 10 00 8f 	movb   $0x8f,0x102265
  1005de:	c1 e8 10             	shr    $0x10,%eax
  1005e1:	66 a3 66 22 10 00    	mov    %ax,0x102266
  1005e7:	b8 4e 13 10 00       	mov    $0x10134e,%eax
  1005ec:	66 a3 68 22 10 00    	mov    %ax,0x102268
  1005f2:	66 c7 05 6a 22 10 00 	movw   $0x8,0x10226a
  1005f9:	08 00 
  1005fb:	c6 05 6c 22 10 00 00 	movb   $0x0,0x10226c
  100602:	c6 05 6d 22 10 00 8f 	movb   $0x8f,0x10226d
  100609:	c1 e8 10             	shr    $0x10,%eax
  10060c:	66 a3 6e 22 10 00    	mov    %ax,0x10226e
  100612:	b8 54 13 10 00       	mov    $0x101354,%eax
  100617:	66 a3 70 22 10 00    	mov    %ax,0x102270
  10061d:	66 c7 05 72 22 10 00 	movw   $0x8,0x102272
  100624:	08 00 
  100626:	c6 05 74 22 10 00 00 	movb   $0x0,0x102274
  10062d:	c6 05 75 22 10 00 8f 	movb   $0x8f,0x102275
  100634:	c1 e8 10             	shr    $0x10,%eax
  100637:	66 a3 76 22 10 00    	mov    %ax,0x102276
  10063d:	b8 5a 13 10 00       	mov    $0x10135a,%eax
  100642:	66 a3 78 22 10 00    	mov    %ax,0x102278
  100648:	66 c7 05 7a 22 10 00 	movw   $0x8,0x10227a
  10064f:	08 00 
  100651:	c6 05 7c 22 10 00 00 	movb   $0x0,0x10227c
  100658:	c6 05 7d 22 10 00 8f 	movb   $0x8f,0x10227d
  10065f:	c1 e8 10             	shr    $0x10,%eax
  100662:	66 a3 7e 22 10 00    	mov    %ax,0x10227e
  100668:	b8 60 13 10 00       	mov    $0x101360,%eax
  10066d:	66 a3 80 22 10 00    	mov    %ax,0x102280
  100673:	66 c7 05 82 22 10 00 	movw   $0x8,0x102282
  10067a:	08 00 
  10067c:	c6 05 84 22 10 00 00 	movb   $0x0,0x102284
  100683:	c6 05 85 22 10 00 8f 	movb   $0x8f,0x102285
  10068a:	c1 e8 10             	shr    $0x10,%eax
  10068d:	66 a3 86 22 10 00    	mov    %ax,0x102286
  100693:	b8 64 13 10 00       	mov    $0x101364,%eax
  100698:	66 a3 88 22 10 00    	mov    %ax,0x102288
  10069e:	66 c7 05 8a 22 10 00 	movw   $0x8,0x10228a
  1006a5:	08 00 
  1006a7:	c6 05 8c 22 10 00 00 	movb   $0x0,0x10228c
  1006ae:	c6 05 8d 22 10 00 8f 	movb   $0x8f,0x10228d
  1006b5:	c1 e8 10             	shr    $0x10,%eax
  1006b8:	66 a3 8e 22 10 00    	mov    %ax,0x10228e
  1006be:	b8 6a 13 10 00       	mov    $0x10136a,%eax
  1006c3:	66 a3 90 22 10 00    	mov    %ax,0x102290
  1006c9:	66 c7 05 92 22 10 00 	movw   $0x8,0x102292
  1006d0:	08 00 
  1006d2:	c6 05 94 22 10 00 00 	movb   $0x0,0x102294
  1006d9:	c6 05 95 22 10 00 8f 	movb   $0x8f,0x102295
  1006e0:	c1 e8 10             	shr    $0x10,%eax
  1006e3:	66 a3 96 22 10 00    	mov    %ax,0x102296
  1006e9:	b8 6e 13 10 00       	mov    $0x10136e,%eax
  1006ee:	66 a3 98 22 10 00    	mov    %ax,0x102298
  1006f4:	66 c7 05 9a 22 10 00 	movw   $0x8,0x10229a
  1006fb:	08 00 
  1006fd:	c6 05 9c 22 10 00 00 	movb   $0x0,0x10229c
  100704:	c6 05 9d 22 10 00 8f 	movb   $0x8f,0x10229d
  10070b:	c1 e8 10             	shr    $0x10,%eax
  10070e:	66 a3 9e 22 10 00    	mov    %ax,0x10229e
  100714:	b8 72 13 10 00       	mov    $0x101372,%eax
  100719:	66 a3 a0 22 10 00    	mov    %ax,0x1022a0
  10071f:	66 c7 05 a2 22 10 00 	movw   $0x8,0x1022a2
  100726:	08 00 
  100728:	c6 05 a4 22 10 00 00 	movb   $0x0,0x1022a4
  10072f:	c6 05 a5 22 10 00 8f 	movb   $0x8f,0x1022a5
  100736:	c1 e8 10             	shr    $0x10,%eax
  100739:	66 a3 a6 22 10 00    	mov    %ax,0x1022a6
  10073f:	66 c7 05 aa 22 10 00 	movw   $0x8,0x1022aa
  100746:	08 00 
  100748:	c6 05 ac 22 10 00 00 	movb   $0x0,0x1022ac
  10074f:	c6 05 ad 22 10 00 8f 	movb   $0x8f,0x1022ad
  100756:	b8 7a 13 10 00       	mov    $0x10137a,%eax
  10075b:	66 a3 b0 22 10 00    	mov    %ax,0x1022b0
  100761:	66 c7 05 b2 22 10 00 	movw   $0x8,0x1022b2
  100768:	08 00 
  10076a:	c6 05 b4 22 10 00 00 	movb   $0x0,0x1022b4
  100771:	c6 05 b5 22 10 00 8f 	movb   $0x8f,0x1022b5
  100778:	c1 e8 10             	shr    $0x10,%eax
  10077b:	66 a3 b6 22 10 00    	mov    %ax,0x1022b6
  100781:	b8 8d 13 10 00       	mov    $0x10138d,%eax
  100786:	66 a3 a8 22 10 00    	mov    %ax,0x1022a8
  10078c:	c1 e8 10             	shr    $0x10,%eax
  10078f:	66 a3 ae 22 10 00    	mov    %ax,0x1022ae
  100795:	b8 91 13 10 00       	mov    $0x101391,%eax
  10079a:	66 a3 40 26 10 00    	mov    %ax,0x102640
  1007a0:	66 c7 05 42 26 10 00 	movw   $0x8,0x102642
  1007a7:	08 00 
  1007a9:	c6 05 44 26 10 00 00 	movb   $0x0,0x102644
  1007b0:	c6 05 45 26 10 00 ef 	movb   $0xef,0x102645
  1007b7:	c1 e8 10             	shr    $0x10,%eax
  1007ba:	66 a3 46 26 10 00    	mov    %ax,0x102646
  1007c0:	b8 7e 13 10 00       	mov    $0x10137e,%eax
  1007c5:	66 a3 40 23 10 00    	mov    %ax,0x102340
  1007cb:	66 c7 05 42 23 10 00 	movw   $0x8,0x102342
  1007d2:	08 00 
  1007d4:	c6 05 44 23 10 00 00 	movb   $0x0,0x102344
  1007db:	c6 05 45 23 10 00 8e 	movb   $0x8e,0x102345
  1007e2:	c1 e8 10             	shr    $0x10,%eax
  1007e5:	66 a3 46 23 10 00    	mov    %ax,0x102346
  1007eb:	66 c7 05 24 21 10 00 	movw   $0x7ff,0x102124
  1007f2:	ff 07 
  1007f4:	b8 40 22 10 00       	mov    $0x102240,%eax
  1007f9:	66 a3 26 21 10 00    	mov    %ax,0x102126
  1007ff:	c1 e8 10             	shr    $0x10,%eax
  100802:	66 a3 28 21 10 00    	mov    %ax,0x102128
  100808:	b8 24 21 10 00       	mov    $0x102124,%eax
  10080d:	0f 01 18             	lidtl  (%eax)
  100810:	5b                   	pop    %ebx
  100811:	5d                   	pop    %ebp
  100812:	c3                   	ret    
  100813:	90                   	nop

00100814 <initSerial>:
  100814:	55                   	push   %ebp
  100815:	89 e5                	mov    %esp,%ebp
  100817:	ba f9 03 00 00       	mov    $0x3f9,%edx
  10081c:	31 c0                	xor    %eax,%eax
  10081e:	ee                   	out    %al,(%dx)
  10081f:	ba fb 03 00 00       	mov    $0x3fb,%edx
  100824:	b0 80                	mov    $0x80,%al
  100826:	ee                   	out    %al,(%dx)
  100827:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10082c:	b0 01                	mov    $0x1,%al
  10082e:	ee                   	out    %al,(%dx)
  10082f:	ba f9 03 00 00       	mov    $0x3f9,%edx
  100834:	31 c0                	xor    %eax,%eax
  100836:	ee                   	out    %al,(%dx)
  100837:	ba fb 03 00 00       	mov    $0x3fb,%edx
  10083c:	b0 03                	mov    $0x3,%al
  10083e:	ee                   	out    %al,(%dx)
  10083f:	ba fa 03 00 00       	mov    $0x3fa,%edx
  100844:	b0 c7                	mov    $0xc7,%al
  100846:	ee                   	out    %al,(%dx)
  100847:	ba fc 03 00 00       	mov    $0x3fc,%edx
  10084c:	b0 0b                	mov    $0xb,%al
  10084e:	ee                   	out    %al,(%dx)
  10084f:	5d                   	pop    %ebp
  100850:	c3                   	ret    
  100851:	8d 76 00             	lea    0x0(%esi),%esi

00100854 <putChar>:
  100854:	55                   	push   %ebp
  100855:	89 e5                	mov    %esp,%ebp
  100857:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10085a:	ba fd 03 00 00       	mov    $0x3fd,%edx
  10085f:	90                   	nop
  100860:	ec                   	in     (%dx),%al
  100861:	a8 20                	test   $0x20,%al
  100863:	74 fb                	je     100860 <putChar+0xc>
  100865:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10086a:	88 c8                	mov    %cl,%al
  10086c:	ee                   	out    %al,(%dx)
  10086d:	5d                   	pop    %ebp
  10086e:	c3                   	ret    
  10086f:	90                   	nop

00100870 <initProcess>:
  100870:	55                   	push   %ebp
  100871:	89 e5                	mov    %esp,%ebp
  100873:	57                   	push   %edi
  100874:	56                   	push   %esi
  100875:	53                   	push   %ebx
  100876:	83 ec 1c             	sub    $0x1c,%esp
  100879:	c7 05 90 3a 10 00 00 	movl   $0x0,0x103a90
  100880:	00 00 00 
  100883:	c7 05 94 3a 10 00 05 	movl   $0x5,0x103a94
  10088a:	00 00 00 
  10088d:	c7 05 64 3a 10 00 10 	movl   $0x10,0x103a64
  100894:	00 00 00 
  100897:	c7 05 68 3a 10 00 10 	movl   $0x10,0x103a68
  10089e:	00 00 00 
  1008a1:	c7 05 6c 3a 10 00 10 	movl   $0x10,0x103a6c
  1008a8:	00 00 00 
  1008ab:	c7 05 70 3a 10 00 10 	movl   $0x10,0x103a70
  1008b2:	00 00 00 
  1008b5:	c7 05 80 3a 10 00 08 	movl   $0x8,0x103a80
  1008bc:	00 00 00 
  1008bf:	c7 05 84 3a 10 00 02 	movl   $0x202,0x103a84
  1008c6:	02 00 00 
  1008c9:	c7 05 88 3a 10 00 00 	movl   $0x200000,0x103a88
  1008d0:	00 20 00 
  1008d3:	c7 05 8c 3a 10 00 10 	movl   $0x10,0x103a8c
  1008da:	00 00 00 
  1008dd:	c7 05 7c 3a 10 00 f0 	movl   $0x1012f0,0x103a7c
  1008e4:	12 10 00 
  1008e7:	ba c0 3a 10 00       	mov    $0x103ac0,%edx
  1008ec:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1008f3:	31 c0                	xor    %eax,%eax
  1008f5:	c7 82 50 10 00 00 03 	movl   $0x3,0x1050(%edx)
  1008fc:	00 00 00 
  1008ff:	c7 82 24 10 00 00 23 	movl   $0x23,0x1024(%edx)
  100906:	00 00 00 
  100909:	c7 82 28 10 00 00 23 	movl   $0x23,0x1028(%edx)
  100910:	00 00 00 
  100913:	c7 82 2c 10 00 00 23 	movl   $0x23,0x102c(%edx)
  10091a:	00 00 00 
  10091d:	c7 82 30 10 00 00 23 	movl   $0x23,0x1030(%edx)
  100924:	00 00 00 
  100927:	c7 82 40 10 00 00 1b 	movl   $0x1b,0x1040(%edx)
  10092e:	00 00 00 
  100931:	c7 82 44 10 00 00 02 	movl   $0x202,0x1044(%edx)
  100938:	02 00 00 
  10093b:	c7 82 48 10 00 00 00 	movl   $0x200000,0x1048(%edx)
  100942:	00 20 00 
  100945:	c7 82 4c 10 00 00 23 	movl   $0x23,0x104c(%edx)
  10094c:	00 00 00 
  10094f:	8d 70 01             	lea    0x1(%eax),%esi
  100952:	89 b2 5c 10 00 00    	mov    %esi,0x105c(%edx)
  100958:	8b 7d e4             	mov    -0x1c(%ebp),%edi
  10095b:	c1 ef 10             	shr    $0x10,%edi
  10095e:	89 c1                	mov    %eax,%ecx
  100960:	c1 e1 06             	shl    $0x6,%ecx
  100963:	01 c1                	add    %eax,%ecx
  100965:	01 c9                	add    %ecx,%ecx
  100967:	01 c1                	add    %eax,%ecx
  100969:	01 c9                	add    %ecx,%ecx
  10096b:	01 c8                	add    %ecx,%eax
  10096d:	c1 e0 04             	shl    $0x4,%eax
  100970:	8d 88 c0 3a 10 00    	lea    0x103ac0(%eax),%ecx
  100976:	66 c7 80 20 4b 10 00 	movw   $0xffff,0x104b20(%eax)
  10097d:	ff ff 
  10097f:	66 c7 80 22 4b 10 00 	movw   $0x0,0x104b22(%eax)
  100986:	00 00 
  100988:	89 fb                	mov    %edi,%ebx
  10098a:	88 98 24 4b 10 00    	mov    %bl,0x104b24(%eax)
  100990:	c6 80 25 4b 10 00 fa 	movb   $0xfa,0x104b25(%eax)
  100997:	c6 80 26 4b 10 00 cf 	movb   $0xcf,0x104b26(%eax)
  10099e:	c6 80 27 4b 10 00 00 	movb   $0x0,0x104b27(%eax)
  1009a5:	66 c7 80 28 4b 10 00 	movw   $0xffff,0x104b28(%eax)
  1009ac:	ff ff 
  1009ae:	66 c7 80 2a 4b 10 00 	movw   $0x0,0x104b2a(%eax)
  1009b5:	00 00 
  1009b7:	88 98 2c 4b 10 00    	mov    %bl,0x104b2c(%eax)
  1009bd:	c6 80 2d 4b 10 00 f2 	movb   $0xf2,0x104b2d(%eax)
  1009c4:	c6 80 2e 4b 10 00 cf 	movb   $0xcf,0x104b2e(%eax)
  1009cb:	c6 81 6f 10 00 00 00 	movb   $0x0,0x106f(%ecx)
  1009d2:	81 c2 70 10 00 00    	add    $0x1070,%edx
  1009d8:	81 45 e4 00 00 40 00 	addl   $0x400000,-0x1c(%ebp)
  1009df:	89 f0                	mov    %esi,%eax
  1009e1:	83 fe 02             	cmp    $0x2,%esi
  1009e4:	0f 85 0b ff ff ff    	jne    1008f5 <initProcess+0x85>
  1009ea:	50                   	push   %eax
  1009eb:	68 00 92 01 00       	push   $0x19200
  1009f0:	68 00 02 00 00       	push   $0x200
  1009f5:	68 00 80 00 00       	push   $0x8000
  1009fa:	e8 0d 04 00 00       	call   100e0c <readseg>
  1009ff:	5a                   	pop    %edx
  100a00:	59                   	pop    %ecx
  100a01:	6a 00                	push   $0x0
  100a03:	68 00 80 00 00       	push   $0x8000
  100a08:	e8 5b 04 00 00       	call   100e68 <loader>
  100a0d:	a3 fc 4a 10 00       	mov    %eax,0x104afc
  100a12:	c7 05 10 4b 10 00 02 	movl   $0x2,0x104b10
  100a19:	00 00 00 
  100a1c:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  100a23:	2a 10 00 
  100a26:	83 c4 10             	add    $0x10,%esp
  100a29:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100a2c:	5b                   	pop    %ebx
  100a2d:	5e                   	pop    %esi
  100a2e:	5f                   	pop    %edi
  100a2f:	5d                   	pop    %ebp
  100a30:	c3                   	ret    
  100a31:	8d 76 00             	lea    0x0(%esi),%esi

00100a34 <schedule>:
  100a34:	55                   	push   %ebp
  100a35:	89 e5                	mov    %esp,%ebp
  100a37:	53                   	push   %ebx
  100a38:	81 3d b0 3a 10 00 c0 	cmpl   $0x103ac0,0x103ab0
  100a3f:	3a 10 00 
  100a42:	0f 84 68 01 00 00    	je     100bb0 <schedule+0x17c>
  100a48:	bb c0 3a 10 00       	mov    $0x103ac0,%ebx
  100a4d:	b9 30 4b 10 00       	mov    $0x104b30,%ecx
  100a52:	83 bb 50 10 00 00 02 	cmpl   $0x2,0x1050(%ebx)
  100a59:	0f 84 c5 00 00 00    	je     100b24 <schedule+0xf0>
  100a5f:	83 b9 50 10 00 00 02 	cmpl   $0x2,0x1050(%ecx)
  100a66:	74 30                	je     100a98 <schedule+0x64>
  100a68:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  100a6f:	2a 10 00 
  100a72:	c7 05 90 3a 10 00 00 	movl   $0x0,0x103a90
  100a79:	00 00 00 
  100a7c:	c7 05 94 3a 10 00 0a 	movl   $0xa,0x103a94
  100a83:	00 00 00 
  100a86:	c7 05 2c 22 10 00 00 	movl   $0x0,0x10222c
  100a8d:	00 00 00 
  100a90:	5b                   	pop    %ebx
  100a91:	5d                   	pop    %ebp
  100a92:	e9 59 08 00 00       	jmp    1012f0 <idle_fun>
  100a97:	90                   	nop
  100a98:	89 0d b0 3a 10 00    	mov    %ecx,0x103ab0
  100a9e:	c7 81 54 10 00 00 0a 	movl   $0xa,0x1054(%ecx)
  100aa5:	00 00 00 
  100aa8:	c7 81 50 10 00 00 00 	movl   $0x0,0x1050(%ecx)
  100aaf:	00 00 00 
  100ab2:	8d 81 50 10 00 00    	lea    0x1050(%ecx),%eax
  100ab8:	a3 e4 5b 10 00       	mov    %eax,0x105be4
  100abd:	bb a0 5b 10 00       	mov    $0x105ba0,%ebx
  100ac2:	8b 81 60 10 00 00    	mov    0x1060(%ecx),%eax
  100ac8:	8b 91 64 10 00 00    	mov    0x1064(%ecx),%edx
  100ace:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100ad3:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100ad9:	8b 81 68 10 00 00    	mov    0x1068(%ecx),%eax
  100adf:	8b 91 6c 10 00 00    	mov    0x106c(%ecx),%edx
  100ae5:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  100aea:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100af0:	66 c7 05 2c 21 10 00 	movw   $0x37,0x10212c
  100af7:	37 00 
  100af9:	66 89 1d 2e 21 10 00 	mov    %bx,0x10212e
  100b00:	c1 eb 10             	shr    $0x10,%ebx
  100b03:	66 89 1d 30 21 10 00 	mov    %bx,0x102130
  100b0a:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  100b0f:	0f 01 10             	lgdtl  (%eax)
  100b12:	81 c1 00 10 00 00    	add    $0x1000,%ecx
  100b18:	89 0d 2c 22 10 00    	mov    %ecx,0x10222c
  100b1e:	5b                   	pop    %ebx
  100b1f:	5d                   	pop    %ebp
  100b20:	c3                   	ret    
  100b21:	8d 76 00             	lea    0x0(%esi),%esi
  100b24:	89 1d b0 3a 10 00    	mov    %ebx,0x103ab0
  100b2a:	c7 83 54 10 00 00 0a 	movl   $0xa,0x1054(%ebx)
  100b31:	00 00 00 
  100b34:	c7 83 50 10 00 00 00 	movl   $0x0,0x1050(%ebx)
  100b3b:	00 00 00 
  100b3e:	8d 83 50 10 00 00    	lea    0x1050(%ebx),%eax
  100b44:	a3 e4 5b 10 00       	mov    %eax,0x105be4
  100b49:	b9 a0 5b 10 00       	mov    $0x105ba0,%ecx
  100b4e:	8b 83 60 10 00 00    	mov    0x1060(%ebx),%eax
  100b54:	8b 93 64 10 00 00    	mov    0x1064(%ebx),%edx
  100b5a:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100b5f:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100b65:	8b 83 68 10 00 00    	mov    0x1068(%ebx),%eax
  100b6b:	8b 93 6c 10 00 00    	mov    0x106c(%ebx),%edx
  100b71:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  100b76:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100b7c:	66 c7 05 2c 21 10 00 	movw   $0x37,0x10212c
  100b83:	37 00 
  100b85:	66 89 0d 2e 21 10 00 	mov    %cx,0x10212e
  100b8c:	c1 e9 10             	shr    $0x10,%ecx
  100b8f:	66 89 0d 30 21 10 00 	mov    %cx,0x102130
  100b96:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  100b9b:	0f 01 10             	lgdtl  (%eax)
  100b9e:	81 c3 00 10 00 00    	add    $0x1000,%ebx
  100ba4:	89 1d 2c 22 10 00    	mov    %ebx,0x10222c
  100baa:	5b                   	pop    %ebx
  100bab:	5d                   	pop    %ebp
  100bac:	c3                   	ret    
  100bad:	8d 76 00             	lea    0x0(%esi),%esi
  100bb0:	bb 30 4b 10 00       	mov    $0x104b30,%ebx
  100bb5:	b9 c0 3a 10 00       	mov    $0x103ac0,%ecx
  100bba:	e9 93 fe ff ff       	jmp    100a52 <schedule+0x1e>
  100bbf:	90                   	nop

00100bc0 <applyANewPcb>:
  100bc0:	83 3d 10 4b 10 00 03 	cmpl   $0x3,0x104b10
  100bc7:	74 2b                	je     100bf4 <applyANewPcb+0x34>
  100bc9:	83 3d 80 5b 10 00 03 	cmpl   $0x3,0x105b80
  100bd0:	74 26                	je     100bf8 <applyANewPcb+0x38>
  100bd2:	55                   	push   %ebp
  100bd3:	89 e5                	mov    %esp,%ebp
  100bd5:	83 ec 10             	sub    $0x10,%esp
  100bd8:	68 84 00 00 00       	push   $0x84
  100bdd:	68 e5 13 10 00       	push   $0x1013e5
  100be2:	e8 71 06 00 00       	call   101258 <abort>
  100be7:	83 c4 10             	add    $0x10,%esp
  100bea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100bef:	c9                   	leave  
  100bf0:	c3                   	ret    
  100bf1:	8d 76 00             	lea    0x0(%esi),%esi
  100bf4:	31 c0                	xor    %eax,%eax
  100bf6:	c3                   	ret    
  100bf7:	90                   	nop
  100bf8:	b8 01 00 00 00       	mov    $0x1,%eax
  100bfd:	c3                   	ret    
  100bfe:	66 90                	xchg   %ax,%ax

00100c00 <memcpy>:
  100c00:	55                   	push   %ebp
  100c01:	89 e5                	mov    %esp,%ebp
  100c03:	56                   	push   %esi
  100c04:	53                   	push   %ebx
  100c05:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100c08:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  100c0b:	8b 75 10             	mov    0x10(%ebp),%esi
  100c0e:	85 f6                	test   %esi,%esi
  100c10:	7e 12                	jle    100c24 <memcpy+0x24>
  100c12:	31 c0                	xor    %eax,%eax
  100c14:	8a 14 03             	mov    (%ebx,%eax,1),%dl
  100c17:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  100c1a:	40                   	inc    %eax
  100c1b:	39 c6                	cmp    %eax,%esi
  100c1d:	75 f5                	jne    100c14 <memcpy+0x14>
  100c1f:	5b                   	pop    %ebx
  100c20:	5e                   	pop    %esi
  100c21:	5d                   	pop    %ebp
  100c22:	c3                   	ret    
  100c23:	90                   	nop
  100c24:	c7 45 0c 05 00 00 00 	movl   $0x5,0xc(%ebp)
  100c2b:	c7 45 08 f6 13 10 00 	movl   $0x1013f6,0x8(%ebp)
  100c32:	5b                   	pop    %ebx
  100c33:	5e                   	pop    %esi
  100c34:	5d                   	pop    %ebp
  100c35:	e9 1e 06 00 00       	jmp    101258 <abort>
  100c3a:	66 90                	xchg   %ax,%ax

00100c3c <waitDisk>:
  100c3c:	55                   	push   %ebp
  100c3d:	89 e5                	mov    %esp,%ebp
  100c3f:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100c44:	ec                   	in     (%dx),%al
  100c45:	83 e0 c0             	and    $0xffffffc0,%eax
  100c48:	3c 40                	cmp    $0x40,%al
  100c4a:	75 f8                	jne    100c44 <waitDisk+0x8>
  100c4c:	5d                   	pop    %ebp
  100c4d:	c3                   	ret    
  100c4e:	66 90                	xchg   %ax,%ax

00100c50 <readSect>:
  100c50:	55                   	push   %ebp
  100c51:	89 e5                	mov    %esp,%ebp
  100c53:	53                   	push   %ebx
  100c54:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  100c57:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100c5c:	ec                   	in     (%dx),%al
  100c5d:	83 e0 c0             	and    $0xffffffc0,%eax
  100c60:	3c 40                	cmp    $0x40,%al
  100c62:	75 f8                	jne    100c5c <readSect+0xc>
  100c64:	ba f2 01 00 00       	mov    $0x1f2,%edx
  100c69:	b0 01                	mov    $0x1,%al
  100c6b:	ee                   	out    %al,(%dx)
  100c6c:	ba f3 01 00 00       	mov    $0x1f3,%edx
  100c71:	88 c8                	mov    %cl,%al
  100c73:	ee                   	out    %al,(%dx)
  100c74:	89 c8                	mov    %ecx,%eax
  100c76:	c1 f8 08             	sar    $0x8,%eax
  100c79:	ba f4 01 00 00       	mov    $0x1f4,%edx
  100c7e:	ee                   	out    %al,(%dx)
  100c7f:	89 c8                	mov    %ecx,%eax
  100c81:	c1 f8 10             	sar    $0x10,%eax
  100c84:	ba f5 01 00 00       	mov    $0x1f5,%edx
  100c89:	ee                   	out    %al,(%dx)
  100c8a:	89 c8                	mov    %ecx,%eax
  100c8c:	c1 f8 18             	sar    $0x18,%eax
  100c8f:	83 c8 e0             	or     $0xffffffe0,%eax
  100c92:	ba f6 01 00 00       	mov    $0x1f6,%edx
  100c97:	ee                   	out    %al,(%dx)
  100c98:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100c9d:	b0 20                	mov    $0x20,%al
  100c9f:	ee                   	out    %al,(%dx)
  100ca0:	ec                   	in     (%dx),%al
  100ca1:	83 e0 c0             	and    $0xffffffc0,%eax
  100ca4:	3c 40                	cmp    $0x40,%al
  100ca6:	75 f8                	jne    100ca0 <readSect+0x50>
  100ca8:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100cab:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  100cb1:	ba f0 01 00 00       	mov    $0x1f0,%edx
  100cb6:	66 90                	xchg   %ax,%ax
  100cb8:	ed                   	in     (%dx),%eax
  100cb9:	89 01                	mov    %eax,(%ecx)
  100cbb:	83 c1 04             	add    $0x4,%ecx
  100cbe:	39 d9                	cmp    %ebx,%ecx
  100cc0:	75 f6                	jne    100cb8 <readSect+0x68>
  100cc2:	5b                   	pop    %ebx
  100cc3:	5d                   	pop    %ebp
  100cc4:	c3                   	ret    
  100cc5:	8d 76 00             	lea    0x0(%esi),%esi

00100cc8 <initSeg>:
  100cc8:	55                   	push   %ebp
  100cc9:	89 e5                	mov    %esp,%ebp
  100ccb:	b9 a0 5b 10 00       	mov    $0x105ba0,%ecx
  100cd0:	66 c7 05 a8 5b 10 00 	movw   $0xffff,0x105ba8
  100cd7:	ff ff 
  100cd9:	66 c7 05 aa 5b 10 00 	movw   $0x0,0x105baa
  100ce0:	00 00 
  100ce2:	c6 05 ac 5b 10 00 00 	movb   $0x0,0x105bac
  100ce9:	c6 05 ad 5b 10 00 9a 	movb   $0x9a,0x105bad
  100cf0:	c6 05 ae 5b 10 00 cf 	movb   $0xcf,0x105bae
  100cf7:	c6 05 af 5b 10 00 00 	movb   $0x0,0x105baf
  100cfe:	66 c7 05 b0 5b 10 00 	movw   $0xffff,0x105bb0
  100d05:	ff ff 
  100d07:	66 c7 05 b2 5b 10 00 	movw   $0x0,0x105bb2
  100d0e:	00 00 
  100d10:	c6 05 b4 5b 10 00 00 	movb   $0x0,0x105bb4
  100d17:	c6 05 b5 5b 10 00 92 	movb   $0x92,0x105bb5
  100d1e:	c6 05 b6 5b 10 00 cf 	movb   $0xcf,0x105bb6
  100d25:	c6 05 b7 5b 10 00 00 	movb   $0x0,0x105bb7
  100d2c:	a1 08 14 10 00       	mov    0x101408,%eax
  100d31:	8b 15 0c 14 10 00    	mov    0x10140c,%edx
  100d37:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100d3c:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100d42:	a1 10 14 10 00       	mov    0x101410,%eax
  100d47:	8b 15 14 14 10 00    	mov    0x101414,%edx
  100d4d:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  100d52:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100d58:	66 c7 05 c8 5b 10 00 	movw   $0x63,0x105bc8
  100d5f:	63 00 
  100d61:	b8 e0 5b 10 00       	mov    $0x105be0,%eax
  100d66:	66 a3 ca 5b 10 00    	mov    %ax,0x105bca
  100d6c:	89 c2                	mov    %eax,%edx
  100d6e:	c1 ea 10             	shr    $0x10,%edx
  100d71:	88 15 cc 5b 10 00    	mov    %dl,0x105bcc
  100d77:	c6 05 cd 5b 10 00 89 	movb   $0x89,0x105bcd
  100d7e:	c6 05 ce 5b 10 00 40 	movb   $0x40,0x105bce
  100d85:	c1 e8 18             	shr    $0x18,%eax
  100d88:	a2 cf 5b 10 00       	mov    %al,0x105bcf
  100d8d:	66 c7 05 34 21 10 00 	movw   $0x37,0x102134
  100d94:	37 00 
  100d96:	66 89 0d 36 21 10 00 	mov    %cx,0x102136
  100d9d:	c1 e9 10             	shr    $0x10,%ecx
  100da0:	66 89 0d 38 21 10 00 	mov    %cx,0x102138
  100da7:	b8 34 21 10 00       	mov    $0x102134,%eax
  100dac:	0f 01 10             	lgdtl  (%eax)
  100daf:	b8 28 00 00 00       	mov    $0x28,%eax
  100db4:	0f 00 d8             	ltr    %ax
  100db7:	c7 05 e8 5b 10 00 10 	movl   $0x10,0x105be8
  100dbe:	00 00 00 
  100dc1:	c7 05 e4 5b 10 00 90 	movl   $0x103a90,0x105be4
  100dc8:	3a 10 00 
  100dcb:	b8 10 00 00 00       	mov    $0x10,%eax
  100dd0:	8e c0                	mov    %eax,%es
  100dd2:	8e d8                	mov    %eax,%ds
  100dd4:	8e e8                	mov    %eax,%gs
  100dd6:	8e e0                	mov    %eax,%fs
  100dd8:	8e d0                	mov    %eax,%ss
  100dda:	31 c0                	xor    %eax,%eax
  100ddc:	0f 00 d0             	lldt   %ax
  100ddf:	5d                   	pop    %ebp
  100de0:	c3                   	ret    
  100de1:	8d 76 00             	lea    0x0(%esi),%esi

00100de4 <enterUserSpace>:
  100de4:	55                   	push   %ebp
  100de5:	89 e5                	mov    %esp,%ebp
  100de7:	b8 23 00 00 00       	mov    $0x23,%eax
  100dec:	fa                   	cli    
  100ded:	8e c0                	mov    %eax,%es
  100def:	8e e0                	mov    %eax,%fs
  100df1:	8e d8                	mov    %eax,%ds
  100df3:	8e e8                	mov    %eax,%gs
  100df5:	66 6a 23             	pushw  $0x23
  100df8:	68 00 00 40 00       	push   $0x400000
  100dfd:	68 02 02 00 00       	push   $0x202
  100e02:	6a 1b                	push   $0x1b
  100e04:	ff 75 08             	pushl  0x8(%ebp)
  100e07:	fb                   	sti    
  100e08:	cf                   	iret   
  100e09:	5d                   	pop    %ebp
  100e0a:	c3                   	ret    
  100e0b:	90                   	nop

00100e0c <readseg>:
  100e0c:	55                   	push   %ebp
  100e0d:	89 e5                	mov    %esp,%ebp
  100e0f:	57                   	push   %edi
  100e10:	56                   	push   %esi
  100e11:	53                   	push   %ebx
  100e12:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100e15:	8b 7d 10             	mov    0x10(%ebp),%edi
  100e18:	8b 75 0c             	mov    0xc(%ebp),%esi
  100e1b:	01 de                	add    %ebx,%esi
  100e1d:	89 f8                	mov    %edi,%eax
  100e1f:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100e24:	78 2a                	js     100e50 <readseg+0x44>
  100e26:	29 c3                	sub    %eax,%ebx
  100e28:	85 ff                	test   %edi,%edi
  100e2a:	78 31                	js     100e5d <readseg+0x51>
  100e2c:	c1 ff 09             	sar    $0x9,%edi
  100e2f:	39 de                	cmp    %ebx,%esi
  100e31:	76 15                	jbe    100e48 <readseg+0x3c>
  100e33:	90                   	nop
  100e34:	57                   	push   %edi
  100e35:	53                   	push   %ebx
  100e36:	e8 15 fe ff ff       	call   100c50 <readSect>
  100e3b:	81 c3 00 02 00 00    	add    $0x200,%ebx
  100e41:	47                   	inc    %edi
  100e42:	58                   	pop    %eax
  100e43:	5a                   	pop    %edx
  100e44:	39 de                	cmp    %ebx,%esi
  100e46:	77 ec                	ja     100e34 <readseg+0x28>
  100e48:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100e4b:	5b                   	pop    %ebx
  100e4c:	5e                   	pop    %esi
  100e4d:	5f                   	pop    %edi
  100e4e:	5d                   	pop    %ebp
  100e4f:	c3                   	ret    
  100e50:	48                   	dec    %eax
  100e51:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100e56:	40                   	inc    %eax
  100e57:	29 c3                	sub    %eax,%ebx
  100e59:	85 ff                	test   %edi,%edi
  100e5b:	79 cf                	jns    100e2c <readseg+0x20>
  100e5d:	81 c7 ff 01 00 00    	add    $0x1ff,%edi
  100e63:	eb c7                	jmp    100e2c <readseg+0x20>
  100e65:	8d 76 00             	lea    0x0(%esi),%esi

00100e68 <loader>:
  100e68:	55                   	push   %ebp
  100e69:	89 e5                	mov    %esp,%ebp
  100e6b:	57                   	push   %edi
  100e6c:	56                   	push   %esi
  100e6d:	53                   	push   %ebx
  100e6e:	83 ec 2c             	sub    $0x2c,%esp
  100e71:	8b 55 08             	mov    0x8(%ebp),%edx
  100e74:	8b 42 2c             	mov    0x2c(%edx),%eax
  100e77:	66 83 f8 ff          	cmp    $0xffff,%ax
  100e7b:	0f 84 8b 00 00 00    	je     100f0c <loader+0xa4>
  100e81:	0f b7 c8             	movzwl %ax,%ecx
  100e84:	85 c9                	test   %ecx,%ecx
  100e86:	74 72                	je     100efa <loader+0x92>
  100e88:	31 ff                	xor    %edi,%edi
  100e8a:	89 d6                	mov    %edx,%esi
  100e8c:	eb 07                	jmp    100e95 <loader+0x2d>
  100e8e:	66 90                	xchg   %ax,%ax
  100e90:	47                   	inc    %edi
  100e91:	39 cf                	cmp    %ecx,%edi
  100e93:	7d 63                	jge    100ef8 <loader+0x90>
  100e95:	0f b7 46 2a          	movzwl 0x2a(%esi),%eax
  100e99:	0f af c7             	imul   %edi,%eax
  100e9c:	03 46 1c             	add    0x1c(%esi),%eax
  100e9f:	01 f0                	add    %esi,%eax
  100ea1:	83 38 01             	cmpl   $0x1,(%eax)
  100ea4:	75 ea                	jne    100e90 <loader+0x28>
  100ea6:	89 4d d0             	mov    %ecx,-0x30(%ebp)
  100ea9:	8b 55 0c             	mov    0xc(%ebp),%edx
  100eac:	03 50 08             	add    0x8(%eax),%edx
  100eaf:	8b 58 10             	mov    0x10(%eax),%ebx
  100eb2:	8b 48 14             	mov    0x14(%eax),%ecx
  100eb5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  100eb8:	51                   	push   %ecx
  100eb9:	8b 40 04             	mov    0x4(%eax),%eax
  100ebc:	05 00 92 01 00       	add    $0x19200,%eax
  100ec1:	50                   	push   %eax
  100ec2:	53                   	push   %ebx
  100ec3:	52                   	push   %edx
  100ec4:	89 55 cc             	mov    %edx,-0x34(%ebp)
  100ec7:	e8 40 ff ff ff       	call   100e0c <readseg>
  100ecc:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100ecf:	29 d8                	sub    %ebx,%eax
  100ed1:	83 c4 10             	add    $0x10,%esp
  100ed4:	85 c0                	test   %eax,%eax
  100ed6:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  100ed9:	7e b5                	jle    100e90 <loader+0x28>
  100edb:	8b 55 cc             	mov    -0x34(%ebp),%edx
  100ede:	01 d3                	add    %edx,%ebx
  100ee0:	03 55 d4             	add    -0x2c(%ebp),%edx
  100ee3:	39 d3                	cmp    %edx,%ebx
  100ee5:	73 a9                	jae    100e90 <loader+0x28>
  100ee7:	90                   	nop
  100ee8:	43                   	inc    %ebx
  100ee9:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
  100eed:	39 d3                	cmp    %edx,%ebx
  100eef:	75 f7                	jne    100ee8 <loader+0x80>
  100ef1:	47                   	inc    %edi
  100ef2:	39 cf                	cmp    %ecx,%edi
  100ef4:	7c 9f                	jl     100e95 <loader+0x2d>
  100ef6:	66 90                	xchg   %ax,%ax
  100ef8:	89 f2                	mov    %esi,%edx
  100efa:	8b 42 18             	mov    0x18(%edx),%eax
  100efd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100f00:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100f03:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100f06:	5b                   	pop    %ebx
  100f07:	5e                   	pop    %esi
  100f08:	5f                   	pop    %edi
  100f09:	5d                   	pop    %ebp
  100f0a:	c3                   	ret    
  100f0b:	90                   	nop
  100f0c:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  100f0f:	83 ec 08             	sub    $0x8,%esp
  100f12:	6a 7e                	push   $0x7e
  100f14:	68 18 14 10 00       	push   $0x101418
  100f19:	e8 3a 03 00 00       	call   101258 <abort>
  100f1e:	83 c4 10             	add    $0x10,%esp
  100f21:	b9 ff ff 00 00       	mov    $0xffff,%ecx
  100f26:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100f29:	e9 5a ff ff ff       	jmp    100e88 <loader+0x20>
  100f2e:	66 90                	xchg   %ax,%ax

00100f30 <loadUMain>:
  100f30:	55                   	push   %ebp
  100f31:	89 e5                	mov    %esp,%ebp
  100f33:	83 ec 18             	sub    $0x18,%esp
  100f36:	68 c9 00 00 00       	push   $0xc9
  100f3b:	68 00 80 00 00       	push   $0x8000
  100f40:	e8 0b fd ff ff       	call   100c50 <readSect>
  100f45:	6a 00                	push   $0x0
  100f47:	68 00 80 00 00       	push   $0x8000
  100f4c:	e8 17 ff ff ff       	call   100e68 <loader>
  100f51:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f54:	b8 23 00 00 00       	mov    $0x23,%eax
  100f59:	fa                   	cli    
  100f5a:	8e c0                	mov    %eax,%es
  100f5c:	8e e0                	mov    %eax,%fs
  100f5e:	8e d8                	mov    %eax,%ds
  100f60:	8e e8                	mov    %eax,%gs
  100f62:	66 6a 23             	pushw  $0x23
  100f65:	68 00 00 40 00       	push   $0x400000
  100f6a:	68 02 02 00 00       	push   $0x202
  100f6f:	6a 1b                	push   $0x1b
  100f71:	ff 75 f4             	pushl  -0xc(%ebp)
  100f74:	fb                   	sti    
  100f75:	cf                   	iret   
  100f76:	83 c4 10             	add    $0x10,%esp
  100f79:	c9                   	leave  
  100f7a:	c3                   	ret    
  100f7b:	90                   	nop

00100f7c <addString2Buff>:
  100f7c:	55                   	push   %ebp
  100f7d:	89 e5                	mov    %esp,%ebp
  100f7f:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100f82:	8a 11                	mov    (%ecx),%dl
  100f84:	84 d2                	test   %dl,%dl
  100f86:	74 1b                	je     100fa3 <addString2Buff+0x27>
  100f88:	a1 08 22 10 00       	mov    0x102208,%eax
  100f8d:	29 c1                	sub    %eax,%ecx
  100f8f:	90                   	nop
  100f90:	40                   	inc    %eax
  100f91:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100f97:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  100f9a:	84 d2                	test   %dl,%dl
  100f9c:	75 f2                	jne    100f90 <addString2Buff+0x14>
  100f9e:	a3 08 22 10 00       	mov    %eax,0x102208
  100fa3:	5d                   	pop    %ebp
  100fa4:	c3                   	ret    
  100fa5:	8d 76 00             	lea    0x0(%esi),%esi

00100fa8 <addCh2Buff>:
  100fa8:	55                   	push   %ebp
  100fa9:	89 e5                	mov    %esp,%ebp
  100fab:	a1 08 22 10 00       	mov    0x102208,%eax
  100fb0:	8d 50 01             	lea    0x1(%eax),%edx
  100fb3:	89 15 08 22 10 00    	mov    %edx,0x102208
  100fb9:	8b 55 08             	mov    0x8(%ebp),%edx
  100fbc:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100fc2:	5d                   	pop    %ebp
  100fc3:	c3                   	ret    

00100fc4 <addDec2Buff>:
  100fc4:	55                   	push   %ebp
  100fc5:	89 e5                	mov    %esp,%ebp
  100fc7:	56                   	push   %esi
  100fc8:	53                   	push   %ebx
  100fc9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100fcc:	85 db                	test   %ebx,%ebx
  100fce:	0f 89 92 00 00 00    	jns    101066 <addDec2Buff+0xa2>
  100fd4:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  100fda:	74 58                	je     101034 <addDec2Buff+0x70>
  100fdc:	a1 08 22 10 00       	mov    0x102208,%eax
  100fe1:	c6 80 40 21 10 00 2d 	movb   $0x2d,0x102140(%eax)
  100fe8:	40                   	inc    %eax
  100fe9:	f7 db                	neg    %ebx
  100feb:	a3 08 22 10 00       	mov    %eax,0x102208
  100ff0:	83 ec 0c             	sub    $0xc,%esp
  100ff3:	b8 67 66 66 66       	mov    $0x66666667,%eax
  100ff8:	f7 eb                	imul   %ebx
  100ffa:	89 d6                	mov    %edx,%esi
  100ffc:	c1 fe 02             	sar    $0x2,%esi
  100fff:	89 d8                	mov    %ebx,%eax
  101001:	c1 f8 1f             	sar    $0x1f,%eax
  101004:	29 c6                	sub    %eax,%esi
  101006:	56                   	push   %esi
  101007:	e8 b8 ff ff ff       	call   100fc4 <addDec2Buff>
  10100c:	8b 15 08 22 10 00    	mov    0x102208,%edx
  101012:	8d 42 01             	lea    0x1(%edx),%eax
  101015:	a3 08 22 10 00       	mov    %eax,0x102208
  10101a:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  10101d:	01 c0                	add    %eax,%eax
  10101f:	29 c3                	sub    %eax,%ebx
  101021:	83 c3 30             	add    $0x30,%ebx
  101024:	88 9a 40 21 10 00    	mov    %bl,0x102140(%edx)
  10102a:	83 c4 10             	add    $0x10,%esp
  10102d:	8d 65 f8             	lea    -0x8(%ebp),%esp
  101030:	5b                   	pop    %ebx
  101031:	5e                   	pop    %esi
  101032:	5d                   	pop    %ebp
  101033:	c3                   	ret    
  101034:	8b 1d 08 22 10 00    	mov    0x102208,%ebx
  10103a:	8d 43 01             	lea    0x1(%ebx),%eax
  10103d:	b2 2d                	mov    $0x2d,%dl
  10103f:	b9 25 14 10 00       	mov    $0x101425,%ecx
  101044:	29 d9                	sub    %ebx,%ecx
  101046:	66 90                	xchg   %ax,%ax
  101048:	89 c3                	mov    %eax,%ebx
  10104a:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  101050:	40                   	inc    %eax
  101051:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  101055:	84 d2                	test   %dl,%dl
  101057:	75 ef                	jne    101048 <addDec2Buff+0x84>
  101059:	89 1d 08 22 10 00    	mov    %ebx,0x102208
  10105f:	8d 65 f8             	lea    -0x8(%ebp),%esp
  101062:	5b                   	pop    %ebx
  101063:	5e                   	pop    %esi
  101064:	5d                   	pop    %ebp
  101065:	c3                   	ret    
  101066:	74 c5                	je     10102d <addDec2Buff+0x69>
  101068:	eb 86                	jmp    100ff0 <addDec2Buff+0x2c>
  10106a:	66 90                	xchg   %ax,%ax

0010106c <addHex2Buff>:
  10106c:	55                   	push   %ebp
  10106d:	89 e5                	mov    %esp,%ebp
  10106f:	8b 45 08             	mov    0x8(%ebp),%eax
  101072:	85 c0                	test   %eax,%eax
  101074:	75 02                	jne    101078 <addHex2Buff+0xc>
  101076:	5d                   	pop    %ebp
  101077:	c3                   	ret    
  101078:	5d                   	pop    %ebp
  101079:	eb 01                	jmp    10107c <addHex2Buff.part.1>
  10107b:	90                   	nop

0010107c <addHex2Buff.part.1>:
  10107c:	55                   	push   %ebp
  10107d:	89 e5                	mov    %esp,%ebp
  10107f:	53                   	push   %ebx
  101080:	83 ec 10             	sub    $0x10,%esp
  101083:	89 c3                	mov    %eax,%ebx
  101085:	89 c2                	mov    %eax,%edx
  101087:	c1 ea 04             	shr    $0x4,%edx
  10108a:	52                   	push   %edx
  10108b:	e8 dc ff ff ff       	call   10106c <addHex2Buff>
  101090:	89 d8                	mov    %ebx,%eax
  101092:	83 e0 0f             	and    $0xf,%eax
  101095:	83 c4 10             	add    $0x10,%esp
  101098:	8b 15 08 22 10 00    	mov    0x102208,%edx
  10109e:	8d 4a 01             	lea    0x1(%edx),%ecx
  1010a1:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  1010a7:	83 f8 09             	cmp    $0x9,%eax
  1010aa:	76 10                	jbe    1010bc <addHex2Buff.part.1+0x40>
  1010ac:	83 c0 57             	add    $0x57,%eax
  1010af:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  1010b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1010b8:	c9                   	leave  
  1010b9:	c3                   	ret    
  1010ba:	66 90                	xchg   %ax,%ax
  1010bc:	83 c0 30             	add    $0x30,%eax
  1010bf:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  1010c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1010c8:	c9                   	leave  
  1010c9:	c3                   	ret    
  1010ca:	66 90                	xchg   %ax,%ax

001010cc <Log>:
  1010cc:	55                   	push   %ebp
  1010cd:	89 e5                	mov    %esp,%ebp
  1010cf:	57                   	push   %edi
  1010d0:	56                   	push   %esi
  1010d1:	53                   	push   %ebx
  1010d2:	83 ec 0c             	sub    $0xc,%esp
  1010d5:	8b 5d 08             	mov    0x8(%ebp),%ebx
  1010d8:	8d 75 0c             	lea    0xc(%ebp),%esi
  1010db:	8a 03                	mov    (%ebx),%al
  1010dd:	84 c0                	test   %al,%al
  1010df:	74 21                	je     101102 <Log+0x36>
  1010e1:	3c 25                	cmp    $0x25,%al
  1010e3:	74 5f                	je     101144 <Log+0x78>
  1010e5:	8b 15 08 22 10 00    	mov    0x102208,%edx
  1010eb:	8d 4a 01             	lea    0x1(%edx),%ecx
  1010ee:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  1010f4:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  1010fa:	8a 43 01             	mov    0x1(%ebx),%al
  1010fd:	43                   	inc    %ebx
  1010fe:	84 c0                	test   %al,%al
  101100:	75 df                	jne    1010e1 <Log+0x15>
  101102:	a1 08 22 10 00       	mov    0x102208,%eax
  101107:	c6 80 40 21 10 00 00 	movb   $0x0,0x102140(%eax)
  10110e:	85 c0                	test   %eax,%eax
  101110:	7e 1e                	jle    101130 <Log+0x64>
  101112:	31 db                	xor    %ebx,%ebx
  101114:	83 ec 0c             	sub    $0xc,%esp
  101117:	0f be 83 40 21 10 00 	movsbl 0x102140(%ebx),%eax
  10111e:	50                   	push   %eax
  10111f:	e8 30 f7 ff ff       	call   100854 <putChar>
  101124:	43                   	inc    %ebx
  101125:	83 c4 10             	add    $0x10,%esp
  101128:	39 1d 08 22 10 00    	cmp    %ebx,0x102208
  10112e:	7f e4                	jg     101114 <Log+0x48>
  101130:	c7 05 08 22 10 00 00 	movl   $0x0,0x102208
  101137:	00 00 00 
  10113a:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10113d:	5b                   	pop    %ebx
  10113e:	5e                   	pop    %esi
  10113f:	5f                   	pop    %edi
  101140:	5d                   	pop    %ebp
  101141:	c3                   	ret    
  101142:	66 90                	xchg   %ax,%ax
  101144:	8a 43 01             	mov    0x1(%ebx),%al
  101147:	3c 64                	cmp    $0x64,%al
  101149:	74 5e                	je     1011a9 <Log+0xdd>
  10114b:	7f 33                	jg     101180 <Log+0xb4>
  10114d:	3c 25                	cmp    $0x25,%al
  10114f:	0f 84 b3 00 00 00    	je     101208 <Log+0x13c>
  101155:	3c 63                	cmp    $0x63,%al
  101157:	75 4a                	jne    1011a3 <Log+0xd7>
  101159:	8b 16                	mov    (%esi),%edx
  10115b:	a1 08 22 10 00       	mov    0x102208,%eax
  101160:	8d 48 01             	lea    0x1(%eax),%ecx
  101163:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  101169:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  10116f:	8a 43 02             	mov    0x2(%ebx),%al
  101172:	83 c6 04             	add    $0x4,%esi
  101175:	83 c3 02             	add    $0x2,%ebx
  101178:	e9 60 ff ff ff       	jmp    1010dd <Log+0x11>
  10117d:	8d 76 00             	lea    0x0(%esi),%esi
  101180:	3c 73                	cmp    $0x73,%al
  101182:	74 47                	je     1011cb <Log+0xff>
  101184:	3c 78                	cmp    $0x78,%al
  101186:	75 1b                	jne    1011a3 <Log+0xd7>
  101188:	89 f0                	mov    %esi,%eax
  10118a:	83 c6 04             	add    $0x4,%esi
  10118d:	8b 00                	mov    (%eax),%eax
  10118f:	85 c0                	test   %eax,%eax
  101191:	74 21                	je     1011b4 <Log+0xe8>
  101193:	e8 e4 fe ff ff       	call   10107c <addHex2Buff.part.1>
  101198:	8a 43 02             	mov    0x2(%ebx),%al
  10119b:	83 c3 02             	add    $0x2,%ebx
  10119e:	e9 3a ff ff ff       	jmp    1010dd <Log+0x11>
  1011a3:	43                   	inc    %ebx
  1011a4:	e9 34 ff ff ff       	jmp    1010dd <Log+0x11>
  1011a9:	89 f0                	mov    %esi,%eax
  1011ab:	83 c6 04             	add    $0x4,%esi
  1011ae:	8b 00                	mov    (%eax),%eax
  1011b0:	85 c0                	test   %eax,%eax
  1011b2:	75 6e                	jne    101222 <Log+0x156>
  1011b4:	a1 08 22 10 00       	mov    0x102208,%eax
  1011b9:	8d 50 01             	lea    0x1(%eax),%edx
  1011bc:	89 15 08 22 10 00    	mov    %edx,0x102208
  1011c2:	c6 80 40 21 10 00 30 	movb   $0x30,0x102140(%eax)
  1011c9:	eb cd                	jmp    101198 <Log+0xcc>
  1011cb:	8d 4e 04             	lea    0x4(%esi),%ecx
  1011ce:	8b 36                	mov    (%esi),%esi
  1011d0:	8a 16                	mov    (%esi),%dl
  1011d2:	84 d2                	test   %dl,%dl
  1011d4:	74 25                	je     1011fb <Log+0x12f>
  1011d6:	8b 3d 08 22 10 00    	mov    0x102208,%edi
  1011dc:	8d 47 01             	lea    0x1(%edi),%eax
  1011df:	29 fe                	sub    %edi,%esi
  1011e1:	8d 76 00             	lea    0x0(%esi),%esi
  1011e4:	89 c7                	mov    %eax,%edi
  1011e6:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  1011ec:	40                   	inc    %eax
  1011ed:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  1011f1:	84 d2                	test   %dl,%dl
  1011f3:	75 ef                	jne    1011e4 <Log+0x118>
  1011f5:	89 3d 08 22 10 00    	mov    %edi,0x102208
  1011fb:	8a 43 02             	mov    0x2(%ebx),%al
  1011fe:	89 ce                	mov    %ecx,%esi
  101200:	83 c3 02             	add    $0x2,%ebx
  101203:	e9 d5 fe ff ff       	jmp    1010dd <Log+0x11>
  101208:	a1 08 22 10 00       	mov    0x102208,%eax
  10120d:	8d 50 01             	lea    0x1(%eax),%edx
  101210:	89 15 08 22 10 00    	mov    %edx,0x102208
  101216:	c6 80 40 21 10 00 25 	movb   $0x25,0x102140(%eax)
  10121d:	e9 76 ff ff ff       	jmp    101198 <Log+0xcc>
  101222:	83 ec 0c             	sub    $0xc,%esp
  101225:	50                   	push   %eax
  101226:	e8 99 fd ff ff       	call   100fc4 <addDec2Buff>
  10122b:	83 c4 10             	add    $0x10,%esp
  10122e:	e9 65 ff ff ff       	jmp    101198 <Log+0xcc>
  101233:	90                   	nop

00101234 <ProcessTableIndex>:
  101234:	55                   	push   %ebp
  101235:	89 e5                	mov    %esp,%ebp
  101237:	81 7d 08 40 2a 10 00 	cmpl   $0x102a40,0x8(%ebp)
  10123e:	74 0e                	je     10124e <ProcessTableIndex+0x1a>
  101240:	31 c0                	xor    %eax,%eax
  101242:	81 7d 08 c0 3a 10 00 	cmpl   $0x103ac0,0x8(%ebp)
  101249:	0f 95 c0             	setne  %al
  10124c:	5d                   	pop    %ebp
  10124d:	c3                   	ret    
  10124e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  101253:	5d                   	pop    %ebp
  101254:	c3                   	ret    
  101255:	66 90                	xchg   %ax,%ax
  101257:	90                   	nop

00101258 <abort>:
  101258:	55                   	push   %ebp
  101259:	89 e5                	mov    %esp,%ebp
  10125b:	57                   	push   %edi
  10125c:	56                   	push   %esi
  10125d:	53                   	push   %ebx
  10125e:	83 ec 1c             	sub    $0x1c,%esp
  101261:	8b 55 08             	mov    0x8(%ebp),%edx
  101264:	fa                   	cli    
  101265:	8a 02                	mov    (%edx),%al
  101267:	b9 32 20 10 00       	mov    $0x102032,%ecx
  10126c:	84 c0                	test   %al,%al
  10126e:	74 0b                	je     10127b <abort+0x23>
  101270:	41                   	inc    %ecx
  101271:	42                   	inc    %edx
  101272:	88 41 ff             	mov    %al,-0x1(%ecx)
  101275:	8a 02                	mov    (%edx),%al
  101277:	84 c0                	test   %al,%al
  101279:	75 f5                	jne    101270 <abort+0x18>
  10127b:	c6 01 3a             	movb   $0x3a,(%ecx)
  10127e:	bb 29 22 10 00       	mov    $0x102229,%ebx
  101283:	be 0a 00 00 00       	mov    $0xa,%esi
  101288:	bf 67 66 66 66       	mov    $0x66666667,%edi
  10128d:	4b                   	dec    %ebx
  10128e:	8b 45 0c             	mov    0xc(%ebp),%eax
  101291:	99                   	cltd   
  101292:	f7 fe                	idiv   %esi
  101294:	8d 42 30             	lea    0x30(%edx),%eax
  101297:	88 45 e7             	mov    %al,-0x19(%ebp)
  10129a:	88 03                	mov    %al,(%ebx)
  10129c:	89 f8                	mov    %edi,%eax
  10129e:	f7 6d 0c             	imull  0xc(%ebp)
  1012a1:	c1 fa 02             	sar    $0x2,%edx
  1012a4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1012a7:	c1 f8 1f             	sar    $0x1f,%eax
  1012aa:	29 c2                	sub    %eax,%edx
  1012ac:	89 55 0c             	mov    %edx,0xc(%ebp)
  1012af:	75 dc                	jne    10128d <abort+0x35>
  1012b1:	41                   	inc    %ecx
  1012b2:	41                   	inc    %ecx
  1012b3:	43                   	inc    %ebx
  1012b4:	8a 45 e7             	mov    -0x19(%ebp),%al
  1012b7:	88 41 ff             	mov    %al,-0x1(%ecx)
  1012ba:	8a 03                	mov    (%ebx),%al
  1012bc:	88 45 e7             	mov    %al,-0x19(%ebp)
  1012bf:	84 c0                	test   %al,%al
  1012c1:	75 ef                	jne    1012b2 <abort+0x5a>
  1012c3:	c6 01 0a             	movb   $0xa,(%ecx)
  1012c6:	0f be 05 20 20 10 00 	movsbl 0x102020,%eax
  1012cd:	84 c0                	test   %al,%al
  1012cf:	74 1b                	je     1012ec <abort+0x94>
  1012d1:	bb 20 20 10 00       	mov    $0x102020,%ebx
  1012d6:	83 ec 0c             	sub    $0xc,%esp
  1012d9:	50                   	push   %eax
  1012da:	e8 75 f5 ff ff       	call   100854 <putChar>
  1012df:	43                   	inc    %ebx
  1012e0:	0f be 03             	movsbl (%ebx),%eax
  1012e3:	83 c4 10             	add    $0x10,%esp
  1012e6:	84 c0                	test   %al,%al
  1012e8:	75 ec                	jne    1012d6 <abort+0x7e>
  1012ea:	66 90                	xchg   %ax,%ax
  1012ec:	f4                   	hlt    
  1012ed:	eb fd                	jmp    1012ec <abort+0x94>
  1012ef:	90                   	nop

001012f0 <idle_fun>:
  1012f0:	55                   	push   %ebp
  1012f1:	89 e5                	mov    %esp,%ebp
  1012f3:	b8 40 3a 10 00       	mov    $0x103a40,%eax
  1012f8:	89 c4                	mov    %eax,%esp
  1012fa:	fb                   	sti    
  1012fb:	90                   	nop
  1012fc:	f4                   	hlt    
  1012fd:	eb fd                	jmp    1012fc <idle_fun+0xc>
  1012ff:	90                   	nop

00101300 <kEntry>:
  101300:	55                   	push   %ebp
  101301:	89 e5                	mov    %esp,%ebp
  101303:	83 ec 08             	sub    $0x8,%esp
  101306:	e8 09 f5 ff ff       	call   100814 <initSerial>
  10130b:	e8 48 ed ff ff       	call   100058 <initTimer>
  101310:	e8 c7 f1 ff ff       	call   1004dc <initIdt>
  101315:	e8 e6 ec ff ff       	call   100000 <initIntr>
  10131a:	e8 a9 f9 ff ff       	call   100cc8 <initSeg>
  10131f:	e8 4c f5 ff ff       	call   100870 <initProcess>
  101324:	b8 88 3a 10 00       	mov    $0x103a88,%eax
  101329:	89 c4                	mov    %eax,%esp
  10132b:	e8 c0 ff ff ff       	call   1012f0 <idle_fun>

00101330 <no0>:
  101330:	6a 00                	push   $0x0
  101332:	6a 00                	push   $0x0
  101334:	eb 64                	jmp    10139a <asmDoIrq>

00101336 <no1>:
  101336:	6a 00                	push   $0x0
  101338:	6a 01                	push   $0x1
  10133a:	eb 5e                	jmp    10139a <asmDoIrq>

0010133c <no2>:
  10133c:	6a 00                	push   $0x0
  10133e:	6a 02                	push   $0x2
  101340:	eb 58                	jmp    10139a <asmDoIrq>

00101342 <no3>:
  101342:	6a 00                	push   $0x0
  101344:	6a 03                	push   $0x3
  101346:	eb 52                	jmp    10139a <asmDoIrq>

00101348 <no4>:
  101348:	6a 00                	push   $0x0
  10134a:	6a 04                	push   $0x4
  10134c:	eb 4c                	jmp    10139a <asmDoIrq>

0010134e <no5>:
  10134e:	6a 00                	push   $0x0
  101350:	6a 05                	push   $0x5
  101352:	eb 46                	jmp    10139a <asmDoIrq>

00101354 <no6>:
  101354:	6a 00                	push   $0x0
  101356:	6a 06                	push   $0x6
  101358:	eb 40                	jmp    10139a <asmDoIrq>

0010135a <no7>:
  10135a:	6a 00                	push   $0x0
  10135c:	6a 07                	push   $0x7
  10135e:	eb 3a                	jmp    10139a <asmDoIrq>

00101360 <no8>:
  101360:	6a 08                	push   $0x8
  101362:	eb 36                	jmp    10139a <asmDoIrq>

00101364 <no9>:
  101364:	6a 00                	push   $0x0
  101366:	6a 09                	push   $0x9
  101368:	eb 30                	jmp    10139a <asmDoIrq>

0010136a <no10>:
  10136a:	6a 0a                	push   $0xa
  10136c:	eb 2c                	jmp    10139a <asmDoIrq>

0010136e <no11>:
  10136e:	6a 0b                	push   $0xb
  101370:	eb 28                	jmp    10139a <asmDoIrq>

00101372 <no12>:
  101372:	6a 0c                	push   $0xc
  101374:	eb 24                	jmp    10139a <asmDoIrq>

00101376 <no13>:
  101376:	6a 0d                	push   $0xd
  101378:	eb 20                	jmp    10139a <asmDoIrq>

0010137a <no14>:
  10137a:	6a 0e                	push   $0xe
  10137c:	eb 1c                	jmp    10139a <asmDoIrq>

0010137e <intr0>:
  10137e:	6a 00                	push   $0x0
  101380:	68 e8 03 00 00       	push   $0x3e8
  101385:	eb 13                	jmp    10139a <asmDoIrq>

00101387 <irqEmpty>:
  101387:	6a 00                	push   $0x0
  101389:	6a ff                	push   $0xffffffff
  10138b:	eb 0d                	jmp    10139a <asmDoIrq>

0010138d <irqGProtectFault>:
  10138d:	6a 0d                	push   $0xd
  10138f:	eb 09                	jmp    10139a <asmDoIrq>

00101391 <irqSyscall>:
  101391:	6a 00                	push   $0x0
  101393:	68 80 00 00 00       	push   $0x80
  101398:	eb 00                	jmp    10139a <asmDoIrq>

0010139a <asmDoIrq>:
  10139a:	fa                   	cli    
  10139b:	1e                   	push   %ds
  10139c:	06                   	push   %es
  10139d:	0f a0                	push   %fs
  10139f:	0f a8                	push   %gs
  1013a1:	60                   	pusha  
  1013a2:	54                   	push   %esp
  1013a3:	e8 b0 f0 ff ff       	call   100458 <irqHandle>
  1013a8:	a1 2c 22 10 00       	mov    0x10222c,%eax
  1013ad:	85 c0                	test   %eax,%eax
  1013af:	74 02                	je     1013b3 <switch>
  1013b1:	89 c4                	mov    %eax,%esp

001013b3 <switch>:
  1013b3:	83 c4 04             	add    $0x4,%esp
  1013b6:	61                   	popa   
  1013b7:	0f a9                	pop    %gs
  1013b9:	0f a1                	pop    %fs
  1013bb:	07                   	pop    %es
  1013bc:	1f                   	pop    %ds
  1013bd:	83 c4 04             	add    $0x4,%esp
  1013c0:	83 c4 04             	add    $0x4,%esp
  1013c3:	fb                   	sti    
  1013c4:	cf                   	iret   
