
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
  1000b5:	e8 3a 0b 00 00       	call   100bf4 <applyANewPcb>
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
  100175:	e8 b6 0a 00 00       	call   100c30 <memcpy>
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
  1001d7:	68 96 00 00 00       	push   $0x96
  1001dc:	68 f0 13 10 00       	push   $0x1013f0
  1001e1:	e8 a2 10 00 00       	call   101288 <abort>
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
  100269:	e8 42 06 00 00       	call   1008b0 <putChar>
  10026e:	83 c4 10             	add    $0x10,%esp
  100271:	e9 73 ff ff ff       	jmp    1001e9 <timerHandle+0x41>
  100276:	66 90                	xchg   %ax,%ax
  100278:	83 ec 0c             	sub    $0xc,%esp
  10027b:	6a 2e                	push   $0x2e
  10027d:	e8 2e 06 00 00       	call   1008b0 <putChar>
  100282:	83 c4 10             	add    $0x10,%esp
  100285:	e9 5f ff ff ff       	jmp    1001e9 <timerHandle+0x41>
  10028a:	66 90                	xchg   %ax,%ax
  10028c:	83 ec 0c             	sub    $0xc,%esp
  10028f:	6a 31                	push   $0x31
  100291:	e8 1a 06 00 00       	call   1008b0 <putChar>
  100296:	83 c4 10             	add    $0x10,%esp
  100299:	e9 4b ff ff ff       	jmp    1001e9 <timerHandle+0x41>
  10029e:	66 90                	xchg   %ax,%ax

001002a0 <GProtectFaultHandle>:
  1002a0:	55                   	push   %ebp
  1002a1:	89 e5                	mov    %esp,%ebp
  1002a3:	83 ec 10             	sub    $0x10,%esp
  1002a6:	68 b7 00 00 00       	push   $0xb7
  1002ab:	68 f0 13 10 00       	push   $0x1013f0
  1002b0:	e8 d3 0f 00 00       	call   101288 <abort>
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
  10033f:	6a 63                	push   $0x63
  100341:	68 f0 13 10 00       	push   $0x1013f0
  100346:	e8 3d 0f 00 00       	call   101288 <abort>
  10034b:	83 c4 10             	add    $0x10,%esp
  10034e:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100351:	5b                   	pop    %ebx
  100352:	5e                   	pop    %esi
  100353:	5f                   	pop    %edi
  100354:	5d                   	pop    %ebp
  100355:	c3                   	ret    
  100356:	66 90                	xchg   %ax,%ax
  100358:	8b 15 b0 3a 10 00    	mov    0x103ab0,%edx
  10035e:	83 ec 08             	sub    $0x8,%esp
  100361:	0f b6 82 6f 10 00 00 	movzbl 0x106f(%edx),%eax
  100368:	c1 e0 18             	shl    $0x18,%eax
  10036b:	89 c1                	mov    %eax,%ecx
  10036d:	0f b6 82 6c 10 00 00 	movzbl 0x106c(%edx),%eax
  100374:	c1 e0 10             	shl    $0x10,%eax
  100377:	09 c8                	or     %ecx,%eax
  100379:	0f b7 92 6a 10 00 00 	movzwl 0x106a(%edx),%edx
  100380:	09 d0                	or     %edx,%eax
  100382:	50                   	push   %eax
  100383:	68 03 14 10 00       	push   $0x101403
  100388:	e8 6f 0d 00 00       	call   1010fc <Log>
  10038d:	8b 15 b0 3a 10 00    	mov    0x103ab0,%edx
  100393:	0f b6 9a 6f 10 00 00 	movzbl 0x106f(%edx),%ebx
  10039a:	c1 e3 18             	shl    $0x18,%ebx
  10039d:	0f b6 82 6c 10 00 00 	movzbl 0x106c(%edx),%eax
  1003a4:	c1 e0 10             	shl    $0x10,%eax
  1003a7:	09 c3                	or     %eax,%ebx
  1003a9:	0f b7 82 6a 10 00 00 	movzwl 0x106a(%edx),%eax
  1003b0:	09 c3                	or     %eax,%ebx
  1003b2:	8b 45 08             	mov    0x8(%ebp),%eax
  1003b5:	03 58 18             	add    0x18(%eax),%ebx
  1003b8:	8b 70 14             	mov    0x14(%eax),%esi
  1003bb:	83 c4 10             	add    $0x10,%esp
  1003be:	85 f6                	test   %esi,%esi
  1003c0:	74 2c                	je     1003ee <do_sys_write+0xca>
  1003c2:	0f be 03             	movsbl (%ebx),%eax
  1003c5:	84 c0                	test   %al,%al
  1003c7:	74 3d                	je     100406 <do_sys_write+0xe2>
  1003c9:	bf 01 00 00 00       	mov    $0x1,%edi
  1003ce:	eb 0e                	jmp    1003de <do_sys_write+0xba>
  1003d0:	8d 4f 01             	lea    0x1(%edi),%ecx
  1003d3:	0f be 44 19 ff       	movsbl -0x1(%ecx,%ebx,1),%eax
  1003d8:	84 c0                	test   %al,%al
  1003da:	74 20                	je     1003fc <do_sys_write+0xd8>
  1003dc:	89 cf                	mov    %ecx,%edi
  1003de:	83 ec 0c             	sub    $0xc,%esp
  1003e1:	50                   	push   %eax
  1003e2:	e8 d5 fe ff ff       	call   1002bc <showCharInScreen>
  1003e7:	83 c4 10             	add    $0x10,%esp
  1003ea:	39 fe                	cmp    %edi,%esi
  1003ec:	75 e2                	jne    1003d0 <do_sys_write+0xac>
  1003ee:	8b 45 08             	mov    0x8(%ebp),%eax
  1003f1:	89 70 1c             	mov    %esi,0x1c(%eax)
  1003f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1003f7:	5b                   	pop    %ebx
  1003f8:	5e                   	pop    %esi
  1003f9:	5f                   	pop    %edi
  1003fa:	5d                   	pop    %ebp
  1003fb:	c3                   	ret    
  1003fc:	89 fe                	mov    %edi,%esi
  1003fe:	8b 45 08             	mov    0x8(%ebp),%eax
  100401:	89 70 1c             	mov    %esi,0x1c(%eax)
  100404:	eb ee                	jmp    1003f4 <do_sys_write+0xd0>
  100406:	31 f6                	xor    %esi,%esi
  100408:	eb e4                	jmp    1003ee <do_sys_write+0xca>
  10040a:	66 90                	xchg   %ax,%ax

0010040c <syscallHandle>:
  10040c:	55                   	push   %ebp
  10040d:	89 e5                	mov    %esp,%ebp
  10040f:	83 ec 08             	sub    $0x8,%esp
  100412:	8b 55 08             	mov    0x8(%ebp),%edx
  100415:	8b 42 1c             	mov    0x1c(%edx),%eax
  100418:	83 f8 02             	cmp    $0x2,%eax
  10041b:	74 6b                	je     100488 <syscallHandle+0x7c>
  10041d:	76 39                	jbe    100458 <syscallHandle+0x4c>
  10041f:	83 f8 04             	cmp    $0x4,%eax
  100422:	74 28                	je     10044c <syscallHandle+0x40>
  100424:	3d a2 00 00 00       	cmp    $0xa2,%eax
  100429:	75 45                	jne    100470 <syscallHandle+0x64>
  10042b:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  100430:	c7 80 50 10 00 00 01 	movl   $0x1,0x1050(%eax)
  100437:	00 00 00 
  10043a:	8b 52 10             	mov    0x10(%edx),%edx
  10043d:	89 90 58 10 00 00    	mov    %edx,0x1058(%eax)
  100443:	c9                   	leave  
  100444:	e9 eb 05 00 00       	jmp    100a34 <schedule>
  100449:	8d 76 00             	lea    0x0(%esi),%esi
  10044c:	89 55 08             	mov    %edx,0x8(%ebp)
  10044f:	c9                   	leave  
  100450:	e9 cf fe ff ff       	jmp    100324 <do_sys_write>
  100455:	8d 76 00             	lea    0x0(%esi),%esi
  100458:	48                   	dec    %eax
  100459:	75 15                	jne    100470 <syscallHandle+0x64>
  10045b:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  100460:	c7 80 50 10 00 00 03 	movl   $0x3,0x1050(%eax)
  100467:	00 00 00 
  10046a:	c9                   	leave  
  10046b:	e9 c4 05 00 00       	jmp    100a34 <schedule>
  100470:	83 ec 08             	sub    $0x8,%esp
  100473:	68 b1 00 00 00       	push   $0xb1
  100478:	68 f0 13 10 00       	push   $0x1013f0
  10047d:	e8 06 0e 00 00       	call   101288 <abort>
  100482:	83 c4 10             	add    $0x10,%esp
  100485:	c9                   	leave  
  100486:	c3                   	ret    
  100487:	90                   	nop
  100488:	89 55 08             	mov    %edx,0x8(%ebp)
  10048b:	c9                   	leave  
  10048c:	e9 1b fc ff ff       	jmp    1000ac <do_sys_fork>
  100491:	8d 76 00             	lea    0x0(%esi),%esi

00100494 <irqHandle>:
  100494:	55                   	push   %ebp
  100495:	89 e5                	mov    %esp,%ebp
  100497:	83 ec 08             	sub    $0x8,%esp
  10049a:	8b 55 08             	mov    0x8(%ebp),%edx
  10049d:	b8 10 00 00 00       	mov    $0x10,%eax
  1004a2:	8e c0                	mov    %eax,%es
  1004a4:	8e d8                	mov    %eax,%ds
  1004a6:	8e e0                	mov    %eax,%fs
  1004a8:	8e e8                	mov    %eax,%gs
  1004aa:	8b 42 30             	mov    0x30(%edx),%eax
  1004ad:	83 f8 0d             	cmp    $0xd,%eax
  1004b0:	74 62                	je     100514 <irqHandle+0x80>
  1004b2:	7e 38                	jle    1004ec <irqHandle+0x58>
  1004b4:	3d 80 00 00 00       	cmp    $0x80,%eax
  1004b9:	74 25                	je     1004e0 <irqHandle+0x4c>
  1004bb:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  1004c0:	75 2f                	jne    1004f1 <irqHandle+0x5d>
  1004c2:	e8 e1 fc ff ff       	call   1001a8 <timerHandle>
  1004c7:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  1004cc:	3d 40 2a 10 00       	cmp    $0x102a40,%eax
  1004d1:	74 59                	je     10052c <irqHandle+0x98>
  1004d3:	05 00 10 00 00       	add    $0x1000,%eax
  1004d8:	a3 2c 22 10 00       	mov    %eax,0x10222c
  1004dd:	c9                   	leave  
  1004de:	c3                   	ret    
  1004df:	90                   	nop
  1004e0:	89 55 08             	mov    %edx,0x8(%ebp)
  1004e3:	c9                   	leave  
  1004e4:	e9 23 ff ff ff       	jmp    10040c <syscallHandle>
  1004e9:	8d 76 00             	lea    0x0(%esi),%esi
  1004ec:	83 f8 ff             	cmp    $0xffffffff,%eax
  1004ef:	74 ec                	je     1004dd <irqHandle+0x49>
  1004f1:	83 ec 08             	sub    $0x8,%esp
  1004f4:	50                   	push   %eax
  1004f5:	68 0e 14 10 00       	push   $0x10140e
  1004fa:	e8 fd 0b 00 00       	call   1010fc <Log>
  1004ff:	58                   	pop    %eax
  100500:	5a                   	pop    %edx
  100501:	6a 42                	push   $0x42
  100503:	68 f0 13 10 00       	push   $0x1013f0
  100508:	e8 7b 0d 00 00       	call   101288 <abort>
  10050d:	83 c4 10             	add    $0x10,%esp
  100510:	c9                   	leave  
  100511:	c3                   	ret    
  100512:	66 90                	xchg   %ax,%ax
  100514:	83 ec 08             	sub    $0x8,%esp
  100517:	68 b7 00 00 00       	push   $0xb7
  10051c:	68 f0 13 10 00       	push   $0x1013f0
  100521:	e8 62 0d 00 00       	call   101288 <abort>
  100526:	83 c4 10             	add    $0x10,%esp
  100529:	c9                   	leave  
  10052a:	c3                   	ret    
  10052b:	90                   	nop
  10052c:	c7 05 2c 22 10 00 00 	movl   $0x0,0x10222c
  100533:	00 00 00 
  100536:	c9                   	leave  
  100537:	c3                   	ret    

00100538 <initIdt>:
  100538:	55                   	push   %ebp
  100539:	89 e5                	mov    %esp,%ebp
  10053b:	53                   	push   %ebx
  10053c:	ba af 13 10 00       	mov    $0x1013af,%edx
  100541:	89 d3                	mov    %edx,%ebx
  100543:	c1 ea 10             	shr    $0x10,%edx
  100546:	b9 40 2a 10 00       	mov    $0x102a40,%ecx
  10054b:	b8 40 22 10 00       	mov    $0x102240,%eax
  100550:	66 89 18             	mov    %bx,(%eax)
  100553:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  100559:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  10055d:	c6 40 05 8f          	movb   $0x8f,0x5(%eax)
  100561:	66 89 50 06          	mov    %dx,0x6(%eax)
  100565:	83 c0 08             	add    $0x8,%eax
  100568:	39 c1                	cmp    %eax,%ecx
  10056a:	75 e4                	jne    100550 <initIdt+0x18>
  10056c:	b8 58 13 10 00       	mov    $0x101358,%eax
  100571:	66 a3 40 22 10 00    	mov    %ax,0x102240
  100577:	66 c7 05 42 22 10 00 	movw   $0x8,0x102242
  10057e:	08 00 
  100580:	c6 05 44 22 10 00 00 	movb   $0x0,0x102244
  100587:	c6 05 45 22 10 00 8f 	movb   $0x8f,0x102245
  10058e:	c1 e8 10             	shr    $0x10,%eax
  100591:	66 a3 46 22 10 00    	mov    %ax,0x102246
  100597:	b8 5e 13 10 00       	mov    $0x10135e,%eax
  10059c:	66 a3 48 22 10 00    	mov    %ax,0x102248
  1005a2:	66 c7 05 4a 22 10 00 	movw   $0x8,0x10224a
  1005a9:	08 00 
  1005ab:	c6 05 4c 22 10 00 00 	movb   $0x0,0x10224c
  1005b2:	c6 05 4d 22 10 00 8f 	movb   $0x8f,0x10224d
  1005b9:	c1 e8 10             	shr    $0x10,%eax
  1005bc:	66 a3 4e 22 10 00    	mov    %ax,0x10224e
  1005c2:	b8 64 13 10 00       	mov    $0x101364,%eax
  1005c7:	66 a3 50 22 10 00    	mov    %ax,0x102250
  1005cd:	66 c7 05 52 22 10 00 	movw   $0x8,0x102252
  1005d4:	08 00 
  1005d6:	c6 05 54 22 10 00 00 	movb   $0x0,0x102254
  1005dd:	c6 05 55 22 10 00 8f 	movb   $0x8f,0x102255
  1005e4:	c1 e8 10             	shr    $0x10,%eax
  1005e7:	66 a3 56 22 10 00    	mov    %ax,0x102256
  1005ed:	b8 6a 13 10 00       	mov    $0x10136a,%eax
  1005f2:	66 a3 58 22 10 00    	mov    %ax,0x102258
  1005f8:	66 c7 05 5a 22 10 00 	movw   $0x8,0x10225a
  1005ff:	08 00 
  100601:	c6 05 5c 22 10 00 00 	movb   $0x0,0x10225c
  100608:	c6 05 5d 22 10 00 8f 	movb   $0x8f,0x10225d
  10060f:	c1 e8 10             	shr    $0x10,%eax
  100612:	66 a3 5e 22 10 00    	mov    %ax,0x10225e
  100618:	b8 70 13 10 00       	mov    $0x101370,%eax
  10061d:	66 a3 60 22 10 00    	mov    %ax,0x102260
  100623:	66 c7 05 62 22 10 00 	movw   $0x8,0x102262
  10062a:	08 00 
  10062c:	c6 05 64 22 10 00 00 	movb   $0x0,0x102264
  100633:	c6 05 65 22 10 00 8f 	movb   $0x8f,0x102265
  10063a:	c1 e8 10             	shr    $0x10,%eax
  10063d:	66 a3 66 22 10 00    	mov    %ax,0x102266
  100643:	b8 76 13 10 00       	mov    $0x101376,%eax
  100648:	66 a3 68 22 10 00    	mov    %ax,0x102268
  10064e:	66 c7 05 6a 22 10 00 	movw   $0x8,0x10226a
  100655:	08 00 
  100657:	c6 05 6c 22 10 00 00 	movb   $0x0,0x10226c
  10065e:	c6 05 6d 22 10 00 8f 	movb   $0x8f,0x10226d
  100665:	c1 e8 10             	shr    $0x10,%eax
  100668:	66 a3 6e 22 10 00    	mov    %ax,0x10226e
  10066e:	b8 7c 13 10 00       	mov    $0x10137c,%eax
  100673:	66 a3 70 22 10 00    	mov    %ax,0x102270
  100679:	66 c7 05 72 22 10 00 	movw   $0x8,0x102272
  100680:	08 00 
  100682:	c6 05 74 22 10 00 00 	movb   $0x0,0x102274
  100689:	c6 05 75 22 10 00 8f 	movb   $0x8f,0x102275
  100690:	c1 e8 10             	shr    $0x10,%eax
  100693:	66 a3 76 22 10 00    	mov    %ax,0x102276
  100699:	b8 82 13 10 00       	mov    $0x101382,%eax
  10069e:	66 a3 78 22 10 00    	mov    %ax,0x102278
  1006a4:	66 c7 05 7a 22 10 00 	movw   $0x8,0x10227a
  1006ab:	08 00 
  1006ad:	c6 05 7c 22 10 00 00 	movb   $0x0,0x10227c
  1006b4:	c6 05 7d 22 10 00 8f 	movb   $0x8f,0x10227d
  1006bb:	c1 e8 10             	shr    $0x10,%eax
  1006be:	66 a3 7e 22 10 00    	mov    %ax,0x10227e
  1006c4:	b8 88 13 10 00       	mov    $0x101388,%eax
  1006c9:	66 a3 80 22 10 00    	mov    %ax,0x102280
  1006cf:	66 c7 05 82 22 10 00 	movw   $0x8,0x102282
  1006d6:	08 00 
  1006d8:	c6 05 84 22 10 00 00 	movb   $0x0,0x102284
  1006df:	c6 05 85 22 10 00 8f 	movb   $0x8f,0x102285
  1006e6:	c1 e8 10             	shr    $0x10,%eax
  1006e9:	66 a3 86 22 10 00    	mov    %ax,0x102286
  1006ef:	b8 8c 13 10 00       	mov    $0x10138c,%eax
  1006f4:	66 a3 88 22 10 00    	mov    %ax,0x102288
  1006fa:	66 c7 05 8a 22 10 00 	movw   $0x8,0x10228a
  100701:	08 00 
  100703:	c6 05 8c 22 10 00 00 	movb   $0x0,0x10228c
  10070a:	c6 05 8d 22 10 00 8f 	movb   $0x8f,0x10228d
  100711:	c1 e8 10             	shr    $0x10,%eax
  100714:	66 a3 8e 22 10 00    	mov    %ax,0x10228e
  10071a:	b8 92 13 10 00       	mov    $0x101392,%eax
  10071f:	66 a3 90 22 10 00    	mov    %ax,0x102290
  100725:	66 c7 05 92 22 10 00 	movw   $0x8,0x102292
  10072c:	08 00 
  10072e:	c6 05 94 22 10 00 00 	movb   $0x0,0x102294
  100735:	c6 05 95 22 10 00 8f 	movb   $0x8f,0x102295
  10073c:	c1 e8 10             	shr    $0x10,%eax
  10073f:	66 a3 96 22 10 00    	mov    %ax,0x102296
  100745:	b8 96 13 10 00       	mov    $0x101396,%eax
  10074a:	66 a3 98 22 10 00    	mov    %ax,0x102298
  100750:	66 c7 05 9a 22 10 00 	movw   $0x8,0x10229a
  100757:	08 00 
  100759:	c6 05 9c 22 10 00 00 	movb   $0x0,0x10229c
  100760:	c6 05 9d 22 10 00 8f 	movb   $0x8f,0x10229d
  100767:	c1 e8 10             	shr    $0x10,%eax
  10076a:	66 a3 9e 22 10 00    	mov    %ax,0x10229e
  100770:	b8 9a 13 10 00       	mov    $0x10139a,%eax
  100775:	66 a3 a0 22 10 00    	mov    %ax,0x1022a0
  10077b:	66 c7 05 a2 22 10 00 	movw   $0x8,0x1022a2
  100782:	08 00 
  100784:	c6 05 a4 22 10 00 00 	movb   $0x0,0x1022a4
  10078b:	c6 05 a5 22 10 00 8f 	movb   $0x8f,0x1022a5
  100792:	c1 e8 10             	shr    $0x10,%eax
  100795:	66 a3 a6 22 10 00    	mov    %ax,0x1022a6
  10079b:	66 c7 05 aa 22 10 00 	movw   $0x8,0x1022aa
  1007a2:	08 00 
  1007a4:	c6 05 ac 22 10 00 00 	movb   $0x0,0x1022ac
  1007ab:	c6 05 ad 22 10 00 8f 	movb   $0x8f,0x1022ad
  1007b2:	b8 a2 13 10 00       	mov    $0x1013a2,%eax
  1007b7:	66 a3 b0 22 10 00    	mov    %ax,0x1022b0
  1007bd:	66 c7 05 b2 22 10 00 	movw   $0x8,0x1022b2
  1007c4:	08 00 
  1007c6:	c6 05 b4 22 10 00 00 	movb   $0x0,0x1022b4
  1007cd:	c6 05 b5 22 10 00 8f 	movb   $0x8f,0x1022b5
  1007d4:	c1 e8 10             	shr    $0x10,%eax
  1007d7:	66 a3 b6 22 10 00    	mov    %ax,0x1022b6
  1007dd:	b8 b5 13 10 00       	mov    $0x1013b5,%eax
  1007e2:	66 a3 a8 22 10 00    	mov    %ax,0x1022a8
  1007e8:	c1 e8 10             	shr    $0x10,%eax
  1007eb:	66 a3 ae 22 10 00    	mov    %ax,0x1022ae
  1007f1:	b8 b9 13 10 00       	mov    $0x1013b9,%eax
  1007f6:	66 a3 40 26 10 00    	mov    %ax,0x102640
  1007fc:	66 c7 05 42 26 10 00 	movw   $0x8,0x102642
  100803:	08 00 
  100805:	c6 05 44 26 10 00 00 	movb   $0x0,0x102644
  10080c:	c6 05 45 26 10 00 ef 	movb   $0xef,0x102645
  100813:	c1 e8 10             	shr    $0x10,%eax
  100816:	66 a3 46 26 10 00    	mov    %ax,0x102646
  10081c:	b8 a6 13 10 00       	mov    $0x1013a6,%eax
  100821:	66 a3 40 23 10 00    	mov    %ax,0x102340
  100827:	66 c7 05 42 23 10 00 	movw   $0x8,0x102342
  10082e:	08 00 
  100830:	c6 05 44 23 10 00 00 	movb   $0x0,0x102344
  100837:	c6 05 45 23 10 00 8e 	movb   $0x8e,0x102345
  10083e:	c1 e8 10             	shr    $0x10,%eax
  100841:	66 a3 46 23 10 00    	mov    %ax,0x102346
  100847:	66 c7 05 24 21 10 00 	movw   $0x7ff,0x102124
  10084e:	ff 07 
  100850:	b8 40 22 10 00       	mov    $0x102240,%eax
  100855:	66 a3 26 21 10 00    	mov    %ax,0x102126
  10085b:	c1 e8 10             	shr    $0x10,%eax
  10085e:	66 a3 28 21 10 00    	mov    %ax,0x102128
  100864:	b8 24 21 10 00       	mov    $0x102124,%eax
  100869:	0f 01 18             	lidtl  (%eax)
  10086c:	5b                   	pop    %ebx
  10086d:	5d                   	pop    %ebp
  10086e:	c3                   	ret    
  10086f:	90                   	nop

00100870 <initSerial>:
  100870:	55                   	push   %ebp
  100871:	89 e5                	mov    %esp,%ebp
  100873:	ba f9 03 00 00       	mov    $0x3f9,%edx
  100878:	31 c0                	xor    %eax,%eax
  10087a:	ee                   	out    %al,(%dx)
  10087b:	ba fb 03 00 00       	mov    $0x3fb,%edx
  100880:	b0 80                	mov    $0x80,%al
  100882:	ee                   	out    %al,(%dx)
  100883:	ba f8 03 00 00       	mov    $0x3f8,%edx
  100888:	b0 01                	mov    $0x1,%al
  10088a:	ee                   	out    %al,(%dx)
  10088b:	ba f9 03 00 00       	mov    $0x3f9,%edx
  100890:	31 c0                	xor    %eax,%eax
  100892:	ee                   	out    %al,(%dx)
  100893:	ba fb 03 00 00       	mov    $0x3fb,%edx
  100898:	b0 03                	mov    $0x3,%al
  10089a:	ee                   	out    %al,(%dx)
  10089b:	ba fa 03 00 00       	mov    $0x3fa,%edx
  1008a0:	b0 c7                	mov    $0xc7,%al
  1008a2:	ee                   	out    %al,(%dx)
  1008a3:	ba fc 03 00 00       	mov    $0x3fc,%edx
  1008a8:	b0 0b                	mov    $0xb,%al
  1008aa:	ee                   	out    %al,(%dx)
  1008ab:	5d                   	pop    %ebp
  1008ac:	c3                   	ret    
  1008ad:	8d 76 00             	lea    0x0(%esi),%esi

001008b0 <putChar>:
  1008b0:	55                   	push   %ebp
  1008b1:	89 e5                	mov    %esp,%ebp
  1008b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1008b6:	ba fd 03 00 00       	mov    $0x3fd,%edx
  1008bb:	90                   	nop
  1008bc:	ec                   	in     (%dx),%al
  1008bd:	a8 20                	test   $0x20,%al
  1008bf:	74 fb                	je     1008bc <putChar+0xc>
  1008c1:	ba f8 03 00 00       	mov    $0x3f8,%edx
  1008c6:	88 c8                	mov    %cl,%al
  1008c8:	ee                   	out    %al,(%dx)
  1008c9:	5d                   	pop    %ebp
  1008ca:	c3                   	ret    
  1008cb:	90                   	nop

001008cc <initProcess>:
  1008cc:	55                   	push   %ebp
  1008cd:	89 e5                	mov    %esp,%ebp
  1008cf:	57                   	push   %edi
  1008d0:	56                   	push   %esi
  1008d1:	53                   	push   %ebx
  1008d2:	83 ec 1c             	sub    $0x1c,%esp
  1008d5:	c7 05 90 3a 10 00 00 	movl   $0x0,0x103a90
  1008dc:	00 00 00 
  1008df:	c7 05 94 3a 10 00 05 	movl   $0x5,0x103a94
  1008e6:	00 00 00 
  1008e9:	ba c0 3a 10 00       	mov    $0x103ac0,%edx
  1008ee:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1008f5:	31 c0                	xor    %eax,%eax
  1008f7:	c7 82 50 10 00 00 03 	movl   $0x3,0x1050(%edx)
  1008fe:	00 00 00 
  100901:	c7 82 24 10 00 00 23 	movl   $0x23,0x1024(%edx)
  100908:	00 00 00 
  10090b:	c7 82 28 10 00 00 23 	movl   $0x23,0x1028(%edx)
  100912:	00 00 00 
  100915:	c7 82 2c 10 00 00 23 	movl   $0x23,0x102c(%edx)
  10091c:	00 00 00 
  10091f:	c7 82 30 10 00 00 23 	movl   $0x23,0x1030(%edx)
  100926:	00 00 00 
  100929:	c7 82 40 10 00 00 1b 	movl   $0x1b,0x1040(%edx)
  100930:	00 00 00 
  100933:	c7 82 44 10 00 00 02 	movl   $0x202,0x1044(%edx)
  10093a:	02 00 00 
  10093d:	c7 82 48 10 00 00 00 	movl   $0x200000,0x1048(%edx)
  100944:	00 20 00 
  100947:	c7 82 4c 10 00 00 23 	movl   $0x23,0x104c(%edx)
  10094e:	00 00 00 
  100951:	8d 70 01             	lea    0x1(%eax),%esi
  100954:	89 b2 5c 10 00 00    	mov    %esi,0x105c(%edx)
  10095a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
  10095d:	c1 ef 10             	shr    $0x10,%edi
  100960:	89 c1                	mov    %eax,%ecx
  100962:	c1 e1 06             	shl    $0x6,%ecx
  100965:	01 c1                	add    %eax,%ecx
  100967:	01 c9                	add    %ecx,%ecx
  100969:	01 c1                	add    %eax,%ecx
  10096b:	01 c9                	add    %ecx,%ecx
  10096d:	01 c8                	add    %ecx,%eax
  10096f:	c1 e0 04             	shl    $0x4,%eax
  100972:	8d 88 c0 3a 10 00    	lea    0x103ac0(%eax),%ecx
  100978:	66 c7 80 20 4b 10 00 	movw   $0xffff,0x104b20(%eax)
  10097f:	ff ff 
  100981:	66 c7 80 22 4b 10 00 	movw   $0x0,0x104b22(%eax)
  100988:	00 00 
  10098a:	89 fb                	mov    %edi,%ebx
  10098c:	88 98 24 4b 10 00    	mov    %bl,0x104b24(%eax)
  100992:	c6 80 25 4b 10 00 fa 	movb   $0xfa,0x104b25(%eax)
  100999:	c6 80 26 4b 10 00 cf 	movb   $0xcf,0x104b26(%eax)
  1009a0:	c6 80 27 4b 10 00 00 	movb   $0x0,0x104b27(%eax)
  1009a7:	66 c7 80 28 4b 10 00 	movw   $0xffff,0x104b28(%eax)
  1009ae:	ff ff 
  1009b0:	66 c7 80 2a 4b 10 00 	movw   $0x0,0x104b2a(%eax)
  1009b7:	00 00 
  1009b9:	88 98 2c 4b 10 00    	mov    %bl,0x104b2c(%eax)
  1009bf:	c6 80 2d 4b 10 00 f2 	movb   $0xf2,0x104b2d(%eax)
  1009c6:	c6 80 2e 4b 10 00 cf 	movb   $0xcf,0x104b2e(%eax)
  1009cd:	c6 81 6f 10 00 00 00 	movb   $0x0,0x106f(%ecx)
  1009d4:	81 c2 70 10 00 00    	add    $0x1070,%edx
  1009da:	81 45 e4 00 00 40 00 	addl   $0x400000,-0x1c(%ebp)
  1009e1:	89 f0                	mov    %esi,%eax
  1009e3:	83 fe 02             	cmp    $0x2,%esi
  1009e6:	0f 85 0b ff ff ff    	jne    1008f7 <initProcess+0x2b>
  1009ec:	50                   	push   %eax
  1009ed:	68 00 92 01 00       	push   $0x19200
  1009f2:	68 00 02 00 00       	push   $0x200
  1009f7:	68 00 80 00 00       	push   $0x8000
  1009fc:	e8 3b 04 00 00       	call   100e3c <readseg>
  100a01:	5a                   	pop    %edx
  100a02:	59                   	pop    %ecx
  100a03:	6a 00                	push   $0x0
  100a05:	68 00 80 00 00       	push   $0x8000
  100a0a:	e8 89 04 00 00       	call   100e98 <loader>
  100a0f:	a3 fc 4a 10 00       	mov    %eax,0x104afc
  100a14:	c7 05 10 4b 10 00 02 	movl   $0x2,0x104b10
  100a1b:	00 00 00 
  100a1e:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  100a25:	2a 10 00 
  100a28:	83 c4 10             	add    $0x10,%esp
  100a2b:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100a2e:	5b                   	pop    %ebx
  100a2f:	5e                   	pop    %esi
  100a30:	5f                   	pop    %edi
  100a31:	5d                   	pop    %ebp
  100a32:	c3                   	ret    
  100a33:	90                   	nop

00100a34 <schedule>:
  100a34:	55                   	push   %ebp
  100a35:	89 e5                	mov    %esp,%ebp
  100a37:	56                   	push   %esi
  100a38:	53                   	push   %ebx
  100a39:	83 ec 0c             	sub    $0xc,%esp
  100a3c:	68 18 14 10 00       	push   $0x101418
  100a41:	e8 b6 06 00 00       	call   1010fc <Log>
  100a46:	a1 b0 3a 10 00       	mov    0x103ab0,%eax
  100a4b:	83 c4 10             	add    $0x10,%esp
  100a4e:	3d c0 3a 10 00       	cmp    $0x103ac0,%eax
  100a53:	0f 84 13 01 00 00    	je     100b6c <schedule+0x138>
  100a59:	be c0 3a 10 00       	mov    $0x103ac0,%esi
  100a5e:	bb 30 4b 10 00       	mov    $0x104b30,%ebx
  100a63:	83 be 50 10 00 00 02 	cmpl   $0x2,0x1050(%esi)
  100a6a:	0f 84 0c 01 00 00    	je     100b7c <schedule+0x148>
  100a70:	83 bb 50 10 00 00 02 	cmpl   $0x2,0x1050(%ebx)
  100a77:	74 47                	je     100ac0 <schedule+0x8c>
  100a79:	83 ec 0c             	sub    $0xc,%esp
  100a7c:	50                   	push   %eax
  100a7d:	e8 e2 07 00 00       	call   101264 <ProcessTableIndex>
  100a82:	83 c4 0c             	add    $0xc,%esp
  100a85:	6a ff                	push   $0xffffffff
  100a87:	50                   	push   %eax
  100a88:	68 21 14 10 00       	push   $0x101421
  100a8d:	e8 6a 06 00 00       	call   1010fc <Log>
  100a92:	c7 05 b0 3a 10 00 40 	movl   $0x102a40,0x103ab0
  100a99:	2a 10 00 
  100a9c:	c7 05 90 3a 10 00 00 	movl   $0x0,0x103a90
  100aa3:	00 00 00 
  100aa6:	c7 05 94 3a 10 00 0a 	movl   $0xa,0x103a94
  100aad:	00 00 00 
  100ab0:	83 c4 10             	add    $0x10,%esp
  100ab3:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100ab6:	5b                   	pop    %ebx
  100ab7:	5e                   	pop    %esi
  100ab8:	5d                   	pop    %ebp
  100ab9:	e9 62 08 00 00       	jmp    101320 <idle_fun>
  100abe:	66 90                	xchg   %ax,%ax
  100ac0:	83 ec 0c             	sub    $0xc,%esp
  100ac3:	53                   	push   %ebx
  100ac4:	e8 9b 07 00 00       	call   101264 <ProcessTableIndex>
  100ac9:	89 c6                	mov    %eax,%esi
  100acb:	58                   	pop    %eax
  100acc:	ff 35 b0 3a 10 00    	pushl  0x103ab0
  100ad2:	e8 8d 07 00 00       	call   101264 <ProcessTableIndex>
  100ad7:	83 c4 0c             	add    $0xc,%esp
  100ada:	56                   	push   %esi
  100adb:	50                   	push   %eax
  100adc:	68 21 14 10 00       	push   $0x101421
  100ae1:	e8 16 06 00 00       	call   1010fc <Log>
  100ae6:	89 1d b0 3a 10 00    	mov    %ebx,0x103ab0
  100aec:	c7 83 54 10 00 00 0a 	movl   $0xa,0x1054(%ebx)
  100af3:	00 00 00 
  100af6:	c7 83 50 10 00 00 00 	movl   $0x0,0x1050(%ebx)
  100afd:	00 00 00 
  100b00:	8d 83 50 10 00 00    	lea    0x1050(%ebx),%eax
  100b06:	a3 e4 5b 10 00       	mov    %eax,0x105be4
  100b0b:	b9 a0 5b 10 00       	mov    $0x105ba0,%ecx
  100b10:	8b 83 60 10 00 00    	mov    0x1060(%ebx),%eax
  100b16:	8b 93 64 10 00 00    	mov    0x1064(%ebx),%edx
  100b1c:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100b21:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100b27:	8b 83 68 10 00 00    	mov    0x1068(%ebx),%eax
  100b2d:	8b 93 6c 10 00 00    	mov    0x106c(%ebx),%edx
  100b33:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  100b38:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100b3e:	66 c7 05 2c 21 10 00 	movw   $0x37,0x10212c
  100b45:	37 00 
  100b47:	66 89 0d 2e 21 10 00 	mov    %cx,0x10212e
  100b4e:	c1 e9 10             	shr    $0x10,%ecx
  100b51:	66 89 0d 30 21 10 00 	mov    %cx,0x102130
  100b58:	b8 2c 21 10 00       	mov    $0x10212c,%eax
  100b5d:	0f 01 10             	lgdtl  (%eax)
  100b60:	83 c4 10             	add    $0x10,%esp
  100b63:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100b66:	5b                   	pop    %ebx
  100b67:	5e                   	pop    %esi
  100b68:	5d                   	pop    %ebp
  100b69:	c3                   	ret    
  100b6a:	66 90                	xchg   %ax,%ax
  100b6c:	be 30 4b 10 00       	mov    $0x104b30,%esi
  100b71:	bb c0 3a 10 00       	mov    $0x103ac0,%ebx
  100b76:	e9 e8 fe ff ff       	jmp    100a63 <schedule+0x2f>
  100b7b:	90                   	nop
  100b7c:	83 ec 0c             	sub    $0xc,%esp
  100b7f:	56                   	push   %esi
  100b80:	e8 df 06 00 00       	call   101264 <ProcessTableIndex>
  100b85:	89 c3                	mov    %eax,%ebx
  100b87:	5a                   	pop    %edx
  100b88:	ff 35 b0 3a 10 00    	pushl  0x103ab0
  100b8e:	e8 d1 06 00 00       	call   101264 <ProcessTableIndex>
  100b93:	83 c4 0c             	add    $0xc,%esp
  100b96:	53                   	push   %ebx
  100b97:	50                   	push   %eax
  100b98:	68 21 14 10 00       	push   $0x101421
  100b9d:	e8 5a 05 00 00       	call   1010fc <Log>
  100ba2:	89 35 b0 3a 10 00    	mov    %esi,0x103ab0
  100ba8:	c7 86 54 10 00 00 0a 	movl   $0xa,0x1054(%esi)
  100baf:	00 00 00 
  100bb2:	c7 86 50 10 00 00 00 	movl   $0x0,0x1050(%esi)
  100bb9:	00 00 00 
  100bbc:	8d 86 50 10 00 00    	lea    0x1050(%esi),%eax
  100bc2:	a3 e4 5b 10 00       	mov    %eax,0x105be4
  100bc7:	b9 a0 5b 10 00       	mov    $0x105ba0,%ecx
  100bcc:	8b 86 60 10 00 00    	mov    0x1060(%esi),%eax
  100bd2:	8b 96 64 10 00 00    	mov    0x1064(%esi),%edx
  100bd8:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100bdd:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100be3:	8b 86 68 10 00 00    	mov    0x1068(%esi),%eax
  100be9:	8b 96 6c 10 00 00    	mov    0x106c(%esi),%edx
  100bef:	e9 3f ff ff ff       	jmp    100b33 <schedule+0xff>

00100bf4 <applyANewPcb>:
  100bf4:	83 3d 10 4b 10 00 03 	cmpl   $0x3,0x104b10
  100bfb:	74 27                	je     100c24 <applyANewPcb+0x30>
  100bfd:	83 3d 80 5b 10 00 03 	cmpl   $0x3,0x105b80
  100c04:	74 22                	je     100c28 <applyANewPcb+0x34>
  100c06:	55                   	push   %ebp
  100c07:	89 e5                	mov    %esp,%ebp
  100c09:	83 ec 10             	sub    $0x10,%esp
  100c0c:	6a 64                	push   $0x64
  100c0e:	68 2a 14 10 00       	push   $0x10142a
  100c13:	e8 70 06 00 00       	call   101288 <abort>
  100c18:	83 c4 10             	add    $0x10,%esp
  100c1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100c20:	c9                   	leave  
  100c21:	c3                   	ret    
  100c22:	66 90                	xchg   %ax,%ax
  100c24:	31 c0                	xor    %eax,%eax
  100c26:	c3                   	ret    
  100c27:	90                   	nop
  100c28:	b8 01 00 00 00       	mov    $0x1,%eax
  100c2d:	c3                   	ret    
  100c2e:	66 90                	xchg   %ax,%ax

00100c30 <memcpy>:
  100c30:	55                   	push   %ebp
  100c31:	89 e5                	mov    %esp,%ebp
  100c33:	56                   	push   %esi
  100c34:	53                   	push   %ebx
  100c35:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100c38:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  100c3b:	8b 75 10             	mov    0x10(%ebp),%esi
  100c3e:	85 f6                	test   %esi,%esi
  100c40:	7e 12                	jle    100c54 <memcpy+0x24>
  100c42:	31 c0                	xor    %eax,%eax
  100c44:	8a 14 03             	mov    (%ebx,%eax,1),%dl
  100c47:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  100c4a:	40                   	inc    %eax
  100c4b:	39 c6                	cmp    %eax,%esi
  100c4d:	75 f5                	jne    100c44 <memcpy+0x14>
  100c4f:	5b                   	pop    %ebx
  100c50:	5e                   	pop    %esi
  100c51:	5d                   	pop    %ebp
  100c52:	c3                   	ret    
  100c53:	90                   	nop
  100c54:	c7 45 0c 05 00 00 00 	movl   $0x5,0xc(%ebp)
  100c5b:	c7 45 08 3b 14 10 00 	movl   $0x10143b,0x8(%ebp)
  100c62:	5b                   	pop    %ebx
  100c63:	5e                   	pop    %esi
  100c64:	5d                   	pop    %ebp
  100c65:	e9 1e 06 00 00       	jmp    101288 <abort>
  100c6a:	66 90                	xchg   %ax,%ax

00100c6c <waitDisk>:
  100c6c:	55                   	push   %ebp
  100c6d:	89 e5                	mov    %esp,%ebp
  100c6f:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100c74:	ec                   	in     (%dx),%al
  100c75:	83 e0 c0             	and    $0xffffffc0,%eax
  100c78:	3c 40                	cmp    $0x40,%al
  100c7a:	75 f8                	jne    100c74 <waitDisk+0x8>
  100c7c:	5d                   	pop    %ebp
  100c7d:	c3                   	ret    
  100c7e:	66 90                	xchg   %ax,%ax

00100c80 <readSect>:
  100c80:	55                   	push   %ebp
  100c81:	89 e5                	mov    %esp,%ebp
  100c83:	53                   	push   %ebx
  100c84:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  100c87:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100c8c:	ec                   	in     (%dx),%al
  100c8d:	83 e0 c0             	and    $0xffffffc0,%eax
  100c90:	3c 40                	cmp    $0x40,%al
  100c92:	75 f8                	jne    100c8c <readSect+0xc>
  100c94:	ba f2 01 00 00       	mov    $0x1f2,%edx
  100c99:	b0 01                	mov    $0x1,%al
  100c9b:	ee                   	out    %al,(%dx)
  100c9c:	ba f3 01 00 00       	mov    $0x1f3,%edx
  100ca1:	88 c8                	mov    %cl,%al
  100ca3:	ee                   	out    %al,(%dx)
  100ca4:	89 c8                	mov    %ecx,%eax
  100ca6:	c1 f8 08             	sar    $0x8,%eax
  100ca9:	ba f4 01 00 00       	mov    $0x1f4,%edx
  100cae:	ee                   	out    %al,(%dx)
  100caf:	89 c8                	mov    %ecx,%eax
  100cb1:	c1 f8 10             	sar    $0x10,%eax
  100cb4:	ba f5 01 00 00       	mov    $0x1f5,%edx
  100cb9:	ee                   	out    %al,(%dx)
  100cba:	89 c8                	mov    %ecx,%eax
  100cbc:	c1 f8 18             	sar    $0x18,%eax
  100cbf:	83 c8 e0             	or     $0xffffffe0,%eax
  100cc2:	ba f6 01 00 00       	mov    $0x1f6,%edx
  100cc7:	ee                   	out    %al,(%dx)
  100cc8:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100ccd:	b0 20                	mov    $0x20,%al
  100ccf:	ee                   	out    %al,(%dx)
  100cd0:	ec                   	in     (%dx),%al
  100cd1:	83 e0 c0             	and    $0xffffffc0,%eax
  100cd4:	3c 40                	cmp    $0x40,%al
  100cd6:	75 f8                	jne    100cd0 <readSect+0x50>
  100cd8:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100cdb:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  100ce1:	ba f0 01 00 00       	mov    $0x1f0,%edx
  100ce6:	66 90                	xchg   %ax,%ax
  100ce8:	ed                   	in     (%dx),%eax
  100ce9:	89 01                	mov    %eax,(%ecx)
  100ceb:	83 c1 04             	add    $0x4,%ecx
  100cee:	39 d9                	cmp    %ebx,%ecx
  100cf0:	75 f6                	jne    100ce8 <readSect+0x68>
  100cf2:	5b                   	pop    %ebx
  100cf3:	5d                   	pop    %ebp
  100cf4:	c3                   	ret    
  100cf5:	8d 76 00             	lea    0x0(%esi),%esi

00100cf8 <initSeg>:
  100cf8:	55                   	push   %ebp
  100cf9:	89 e5                	mov    %esp,%ebp
  100cfb:	b9 a0 5b 10 00       	mov    $0x105ba0,%ecx
  100d00:	66 c7 05 a8 5b 10 00 	movw   $0xffff,0x105ba8
  100d07:	ff ff 
  100d09:	66 c7 05 aa 5b 10 00 	movw   $0x0,0x105baa
  100d10:	00 00 
  100d12:	c6 05 ac 5b 10 00 00 	movb   $0x0,0x105bac
  100d19:	c6 05 ad 5b 10 00 9a 	movb   $0x9a,0x105bad
  100d20:	c6 05 ae 5b 10 00 cf 	movb   $0xcf,0x105bae
  100d27:	c6 05 af 5b 10 00 00 	movb   $0x0,0x105baf
  100d2e:	66 c7 05 b0 5b 10 00 	movw   $0xffff,0x105bb0
  100d35:	ff ff 
  100d37:	66 c7 05 b2 5b 10 00 	movw   $0x0,0x105bb2
  100d3e:	00 00 
  100d40:	c6 05 b4 5b 10 00 00 	movb   $0x0,0x105bb4
  100d47:	c6 05 b5 5b 10 00 92 	movb   $0x92,0x105bb5
  100d4e:	c6 05 b6 5b 10 00 cf 	movb   $0xcf,0x105bb6
  100d55:	c6 05 b7 5b 10 00 00 	movb   $0x0,0x105bb7
  100d5c:	a1 4c 14 10 00       	mov    0x10144c,%eax
  100d61:	8b 15 50 14 10 00    	mov    0x101450,%edx
  100d67:	a3 b8 5b 10 00       	mov    %eax,0x105bb8
  100d6c:	89 15 bc 5b 10 00    	mov    %edx,0x105bbc
  100d72:	a1 54 14 10 00       	mov    0x101454,%eax
  100d77:	8b 15 58 14 10 00    	mov    0x101458,%edx
  100d7d:	a3 c0 5b 10 00       	mov    %eax,0x105bc0
  100d82:	89 15 c4 5b 10 00    	mov    %edx,0x105bc4
  100d88:	66 c7 05 c8 5b 10 00 	movw   $0x63,0x105bc8
  100d8f:	63 00 
  100d91:	b8 e0 5b 10 00       	mov    $0x105be0,%eax
  100d96:	66 a3 ca 5b 10 00    	mov    %ax,0x105bca
  100d9c:	89 c2                	mov    %eax,%edx
  100d9e:	c1 ea 10             	shr    $0x10,%edx
  100da1:	88 15 cc 5b 10 00    	mov    %dl,0x105bcc
  100da7:	c6 05 cd 5b 10 00 89 	movb   $0x89,0x105bcd
  100dae:	c6 05 ce 5b 10 00 40 	movb   $0x40,0x105bce
  100db5:	c1 e8 18             	shr    $0x18,%eax
  100db8:	a2 cf 5b 10 00       	mov    %al,0x105bcf
  100dbd:	66 c7 05 34 21 10 00 	movw   $0x37,0x102134
  100dc4:	37 00 
  100dc6:	66 89 0d 36 21 10 00 	mov    %cx,0x102136
  100dcd:	c1 e9 10             	shr    $0x10,%ecx
  100dd0:	66 89 0d 38 21 10 00 	mov    %cx,0x102138
  100dd7:	b8 34 21 10 00       	mov    $0x102134,%eax
  100ddc:	0f 01 10             	lgdtl  (%eax)
  100ddf:	b8 28 00 00 00       	mov    $0x28,%eax
  100de4:	0f 00 d8             	ltr    %ax
  100de7:	c7 05 e8 5b 10 00 10 	movl   $0x10,0x105be8
  100dee:	00 00 00 
  100df1:	c7 05 e4 5b 10 00 90 	movl   $0x103a90,0x105be4
  100df8:	3a 10 00 
  100dfb:	b8 10 00 00 00       	mov    $0x10,%eax
  100e00:	8e c0                	mov    %eax,%es
  100e02:	8e d8                	mov    %eax,%ds
  100e04:	8e e8                	mov    %eax,%gs
  100e06:	8e e0                	mov    %eax,%fs
  100e08:	8e d0                	mov    %eax,%ss
  100e0a:	31 c0                	xor    %eax,%eax
  100e0c:	0f 00 d0             	lldt   %ax
  100e0f:	5d                   	pop    %ebp
  100e10:	c3                   	ret    
  100e11:	8d 76 00             	lea    0x0(%esi),%esi

00100e14 <enterUserSpace>:
  100e14:	55                   	push   %ebp
  100e15:	89 e5                	mov    %esp,%ebp
  100e17:	b8 23 00 00 00       	mov    $0x23,%eax
  100e1c:	fa                   	cli    
  100e1d:	8e c0                	mov    %eax,%es
  100e1f:	8e e0                	mov    %eax,%fs
  100e21:	8e d8                	mov    %eax,%ds
  100e23:	8e e8                	mov    %eax,%gs
  100e25:	66 6a 23             	pushw  $0x23
  100e28:	68 00 00 40 00       	push   $0x400000
  100e2d:	68 02 02 00 00       	push   $0x202
  100e32:	6a 1b                	push   $0x1b
  100e34:	ff 75 08             	pushl  0x8(%ebp)
  100e37:	fb                   	sti    
  100e38:	cf                   	iret   
  100e39:	5d                   	pop    %ebp
  100e3a:	c3                   	ret    
  100e3b:	90                   	nop

00100e3c <readseg>:
  100e3c:	55                   	push   %ebp
  100e3d:	89 e5                	mov    %esp,%ebp
  100e3f:	57                   	push   %edi
  100e40:	56                   	push   %esi
  100e41:	53                   	push   %ebx
  100e42:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100e45:	8b 7d 10             	mov    0x10(%ebp),%edi
  100e48:	8b 75 0c             	mov    0xc(%ebp),%esi
  100e4b:	01 de                	add    %ebx,%esi
  100e4d:	89 f8                	mov    %edi,%eax
  100e4f:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100e54:	78 2a                	js     100e80 <readseg+0x44>
  100e56:	29 c3                	sub    %eax,%ebx
  100e58:	85 ff                	test   %edi,%edi
  100e5a:	78 31                	js     100e8d <readseg+0x51>
  100e5c:	c1 ff 09             	sar    $0x9,%edi
  100e5f:	39 de                	cmp    %ebx,%esi
  100e61:	76 15                	jbe    100e78 <readseg+0x3c>
  100e63:	90                   	nop
  100e64:	57                   	push   %edi
  100e65:	53                   	push   %ebx
  100e66:	e8 15 fe ff ff       	call   100c80 <readSect>
  100e6b:	81 c3 00 02 00 00    	add    $0x200,%ebx
  100e71:	47                   	inc    %edi
  100e72:	58                   	pop    %eax
  100e73:	5a                   	pop    %edx
  100e74:	39 de                	cmp    %ebx,%esi
  100e76:	77 ec                	ja     100e64 <readseg+0x28>
  100e78:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100e7b:	5b                   	pop    %ebx
  100e7c:	5e                   	pop    %esi
  100e7d:	5f                   	pop    %edi
  100e7e:	5d                   	pop    %ebp
  100e7f:	c3                   	ret    
  100e80:	48                   	dec    %eax
  100e81:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100e86:	40                   	inc    %eax
  100e87:	29 c3                	sub    %eax,%ebx
  100e89:	85 ff                	test   %edi,%edi
  100e8b:	79 cf                	jns    100e5c <readseg+0x20>
  100e8d:	81 c7 ff 01 00 00    	add    $0x1ff,%edi
  100e93:	eb c7                	jmp    100e5c <readseg+0x20>
  100e95:	8d 76 00             	lea    0x0(%esi),%esi

00100e98 <loader>:
  100e98:	55                   	push   %ebp
  100e99:	89 e5                	mov    %esp,%ebp
  100e9b:	57                   	push   %edi
  100e9c:	56                   	push   %esi
  100e9d:	53                   	push   %ebx
  100e9e:	83 ec 2c             	sub    $0x2c,%esp
  100ea1:	8b 55 08             	mov    0x8(%ebp),%edx
  100ea4:	8b 42 2c             	mov    0x2c(%edx),%eax
  100ea7:	66 83 f8 ff          	cmp    $0xffff,%ax
  100eab:	0f 84 8b 00 00 00    	je     100f3c <loader+0xa4>
  100eb1:	0f b7 c8             	movzwl %ax,%ecx
  100eb4:	85 c9                	test   %ecx,%ecx
  100eb6:	74 72                	je     100f2a <loader+0x92>
  100eb8:	31 ff                	xor    %edi,%edi
  100eba:	89 d6                	mov    %edx,%esi
  100ebc:	eb 07                	jmp    100ec5 <loader+0x2d>
  100ebe:	66 90                	xchg   %ax,%ax
  100ec0:	47                   	inc    %edi
  100ec1:	39 cf                	cmp    %ecx,%edi
  100ec3:	7d 63                	jge    100f28 <loader+0x90>
  100ec5:	0f b7 46 2a          	movzwl 0x2a(%esi),%eax
  100ec9:	0f af c7             	imul   %edi,%eax
  100ecc:	03 46 1c             	add    0x1c(%esi),%eax
  100ecf:	01 f0                	add    %esi,%eax
  100ed1:	83 38 01             	cmpl   $0x1,(%eax)
  100ed4:	75 ea                	jne    100ec0 <loader+0x28>
  100ed6:	89 4d d0             	mov    %ecx,-0x30(%ebp)
  100ed9:	8b 55 0c             	mov    0xc(%ebp),%edx
  100edc:	03 50 08             	add    0x8(%eax),%edx
  100edf:	8b 58 10             	mov    0x10(%eax),%ebx
  100ee2:	8b 48 14             	mov    0x14(%eax),%ecx
  100ee5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  100ee8:	51                   	push   %ecx
  100ee9:	8b 40 04             	mov    0x4(%eax),%eax
  100eec:	05 00 92 01 00       	add    $0x19200,%eax
  100ef1:	50                   	push   %eax
  100ef2:	53                   	push   %ebx
  100ef3:	52                   	push   %edx
  100ef4:	89 55 cc             	mov    %edx,-0x34(%ebp)
  100ef7:	e8 40 ff ff ff       	call   100e3c <readseg>
  100efc:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100eff:	29 d8                	sub    %ebx,%eax
  100f01:	83 c4 10             	add    $0x10,%esp
  100f04:	85 c0                	test   %eax,%eax
  100f06:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  100f09:	7e b5                	jle    100ec0 <loader+0x28>
  100f0b:	8b 55 cc             	mov    -0x34(%ebp),%edx
  100f0e:	01 d3                	add    %edx,%ebx
  100f10:	03 55 d4             	add    -0x2c(%ebp),%edx
  100f13:	39 d3                	cmp    %edx,%ebx
  100f15:	73 a9                	jae    100ec0 <loader+0x28>
  100f17:	90                   	nop
  100f18:	43                   	inc    %ebx
  100f19:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
  100f1d:	39 d3                	cmp    %edx,%ebx
  100f1f:	75 f7                	jne    100f18 <loader+0x80>
  100f21:	47                   	inc    %edi
  100f22:	39 cf                	cmp    %ecx,%edi
  100f24:	7c 9f                	jl     100ec5 <loader+0x2d>
  100f26:	66 90                	xchg   %ax,%ax
  100f28:	89 f2                	mov    %esi,%edx
  100f2a:	8b 42 18             	mov    0x18(%edx),%eax
  100f2d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100f30:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100f33:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100f36:	5b                   	pop    %ebx
  100f37:	5e                   	pop    %esi
  100f38:	5f                   	pop    %edi
  100f39:	5d                   	pop    %ebp
  100f3a:	c3                   	ret    
  100f3b:	90                   	nop
  100f3c:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  100f3f:	83 ec 08             	sub    $0x8,%esp
  100f42:	6a 7e                	push   $0x7e
  100f44:	68 5c 14 10 00       	push   $0x10145c
  100f49:	e8 3a 03 00 00       	call   101288 <abort>
  100f4e:	83 c4 10             	add    $0x10,%esp
  100f51:	b9 ff ff 00 00       	mov    $0xffff,%ecx
  100f56:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100f59:	e9 5a ff ff ff       	jmp    100eb8 <loader+0x20>
  100f5e:	66 90                	xchg   %ax,%ax

00100f60 <loadUMain>:
  100f60:	55                   	push   %ebp
  100f61:	89 e5                	mov    %esp,%ebp
  100f63:	83 ec 18             	sub    $0x18,%esp
  100f66:	68 c9 00 00 00       	push   $0xc9
  100f6b:	68 00 80 00 00       	push   $0x8000
  100f70:	e8 0b fd ff ff       	call   100c80 <readSect>
  100f75:	6a 00                	push   $0x0
  100f77:	68 00 80 00 00       	push   $0x8000
  100f7c:	e8 17 ff ff ff       	call   100e98 <loader>
  100f81:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f84:	b8 23 00 00 00       	mov    $0x23,%eax
  100f89:	fa                   	cli    
  100f8a:	8e c0                	mov    %eax,%es
  100f8c:	8e e0                	mov    %eax,%fs
  100f8e:	8e d8                	mov    %eax,%ds
  100f90:	8e e8                	mov    %eax,%gs
  100f92:	66 6a 23             	pushw  $0x23
  100f95:	68 00 00 40 00       	push   $0x400000
  100f9a:	68 02 02 00 00       	push   $0x202
  100f9f:	6a 1b                	push   $0x1b
  100fa1:	ff 75 f4             	pushl  -0xc(%ebp)
  100fa4:	fb                   	sti    
  100fa5:	cf                   	iret   
  100fa6:	83 c4 10             	add    $0x10,%esp
  100fa9:	c9                   	leave  
  100faa:	c3                   	ret    
  100fab:	90                   	nop

00100fac <addString2Buff>:
  100fac:	55                   	push   %ebp
  100fad:	89 e5                	mov    %esp,%ebp
  100faf:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100fb2:	8a 11                	mov    (%ecx),%dl
  100fb4:	84 d2                	test   %dl,%dl
  100fb6:	74 1b                	je     100fd3 <addString2Buff+0x27>
  100fb8:	a1 08 22 10 00       	mov    0x102208,%eax
  100fbd:	29 c1                	sub    %eax,%ecx
  100fbf:	90                   	nop
  100fc0:	40                   	inc    %eax
  100fc1:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  100fc7:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  100fca:	84 d2                	test   %dl,%dl
  100fcc:	75 f2                	jne    100fc0 <addString2Buff+0x14>
  100fce:	a3 08 22 10 00       	mov    %eax,0x102208
  100fd3:	5d                   	pop    %ebp
  100fd4:	c3                   	ret    
  100fd5:	8d 76 00             	lea    0x0(%esi),%esi

00100fd8 <addCh2Buff>:
  100fd8:	55                   	push   %ebp
  100fd9:	89 e5                	mov    %esp,%ebp
  100fdb:	a1 08 22 10 00       	mov    0x102208,%eax
  100fe0:	8d 50 01             	lea    0x1(%eax),%edx
  100fe3:	89 15 08 22 10 00    	mov    %edx,0x102208
  100fe9:	8b 55 08             	mov    0x8(%ebp),%edx
  100fec:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  100ff2:	5d                   	pop    %ebp
  100ff3:	c3                   	ret    

00100ff4 <addDec2Buff>:
  100ff4:	55                   	push   %ebp
  100ff5:	89 e5                	mov    %esp,%ebp
  100ff7:	56                   	push   %esi
  100ff8:	53                   	push   %ebx
  100ff9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100ffc:	85 db                	test   %ebx,%ebx
  100ffe:	0f 89 92 00 00 00    	jns    101096 <addDec2Buff+0xa2>
  101004:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  10100a:	74 58                	je     101064 <addDec2Buff+0x70>
  10100c:	a1 08 22 10 00       	mov    0x102208,%eax
  101011:	c6 80 40 21 10 00 2d 	movb   $0x2d,0x102140(%eax)
  101018:	40                   	inc    %eax
  101019:	f7 db                	neg    %ebx
  10101b:	a3 08 22 10 00       	mov    %eax,0x102208
  101020:	83 ec 0c             	sub    $0xc,%esp
  101023:	b8 67 66 66 66       	mov    $0x66666667,%eax
  101028:	f7 eb                	imul   %ebx
  10102a:	89 d6                	mov    %edx,%esi
  10102c:	c1 fe 02             	sar    $0x2,%esi
  10102f:	89 d8                	mov    %ebx,%eax
  101031:	c1 f8 1f             	sar    $0x1f,%eax
  101034:	29 c6                	sub    %eax,%esi
  101036:	56                   	push   %esi
  101037:	e8 b8 ff ff ff       	call   100ff4 <addDec2Buff>
  10103c:	8b 15 08 22 10 00    	mov    0x102208,%edx
  101042:	8d 42 01             	lea    0x1(%edx),%eax
  101045:	a3 08 22 10 00       	mov    %eax,0x102208
  10104a:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  10104d:	01 c0                	add    %eax,%eax
  10104f:	29 c3                	sub    %eax,%ebx
  101051:	83 c3 30             	add    $0x30,%ebx
  101054:	88 9a 40 21 10 00    	mov    %bl,0x102140(%edx)
  10105a:	83 c4 10             	add    $0x10,%esp
  10105d:	8d 65 f8             	lea    -0x8(%ebp),%esp
  101060:	5b                   	pop    %ebx
  101061:	5e                   	pop    %esi
  101062:	5d                   	pop    %ebp
  101063:	c3                   	ret    
  101064:	8b 1d 08 22 10 00    	mov    0x102208,%ebx
  10106a:	8d 43 01             	lea    0x1(%ebx),%eax
  10106d:	b2 2d                	mov    $0x2d,%dl
  10106f:	b9 69 14 10 00       	mov    $0x101469,%ecx
  101074:	29 d9                	sub    %ebx,%ecx
  101076:	66 90                	xchg   %ax,%ax
  101078:	89 c3                	mov    %eax,%ebx
  10107a:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  101080:	40                   	inc    %eax
  101081:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  101085:	84 d2                	test   %dl,%dl
  101087:	75 ef                	jne    101078 <addDec2Buff+0x84>
  101089:	89 1d 08 22 10 00    	mov    %ebx,0x102208
  10108f:	8d 65 f8             	lea    -0x8(%ebp),%esp
  101092:	5b                   	pop    %ebx
  101093:	5e                   	pop    %esi
  101094:	5d                   	pop    %ebp
  101095:	c3                   	ret    
  101096:	74 c5                	je     10105d <addDec2Buff+0x69>
  101098:	eb 86                	jmp    101020 <addDec2Buff+0x2c>
  10109a:	66 90                	xchg   %ax,%ax

0010109c <addHex2Buff>:
  10109c:	55                   	push   %ebp
  10109d:	89 e5                	mov    %esp,%ebp
  10109f:	8b 45 08             	mov    0x8(%ebp),%eax
  1010a2:	85 c0                	test   %eax,%eax
  1010a4:	75 02                	jne    1010a8 <addHex2Buff+0xc>
  1010a6:	5d                   	pop    %ebp
  1010a7:	c3                   	ret    
  1010a8:	5d                   	pop    %ebp
  1010a9:	eb 01                	jmp    1010ac <addHex2Buff.part.1>
  1010ab:	90                   	nop

001010ac <addHex2Buff.part.1>:
  1010ac:	55                   	push   %ebp
  1010ad:	89 e5                	mov    %esp,%ebp
  1010af:	53                   	push   %ebx
  1010b0:	83 ec 10             	sub    $0x10,%esp
  1010b3:	89 c3                	mov    %eax,%ebx
  1010b5:	89 c2                	mov    %eax,%edx
  1010b7:	c1 ea 04             	shr    $0x4,%edx
  1010ba:	52                   	push   %edx
  1010bb:	e8 dc ff ff ff       	call   10109c <addHex2Buff>
  1010c0:	89 d8                	mov    %ebx,%eax
  1010c2:	83 e0 0f             	and    $0xf,%eax
  1010c5:	83 c4 10             	add    $0x10,%esp
  1010c8:	8b 15 08 22 10 00    	mov    0x102208,%edx
  1010ce:	8d 4a 01             	lea    0x1(%edx),%ecx
  1010d1:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  1010d7:	83 f8 09             	cmp    $0x9,%eax
  1010da:	76 10                	jbe    1010ec <addHex2Buff.part.1+0x40>
  1010dc:	83 c0 57             	add    $0x57,%eax
  1010df:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  1010e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1010e8:	c9                   	leave  
  1010e9:	c3                   	ret    
  1010ea:	66 90                	xchg   %ax,%ax
  1010ec:	83 c0 30             	add    $0x30,%eax
  1010ef:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  1010f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1010f8:	c9                   	leave  
  1010f9:	c3                   	ret    
  1010fa:	66 90                	xchg   %ax,%ax

001010fc <Log>:
  1010fc:	55                   	push   %ebp
  1010fd:	89 e5                	mov    %esp,%ebp
  1010ff:	57                   	push   %edi
  101100:	56                   	push   %esi
  101101:	53                   	push   %ebx
  101102:	83 ec 0c             	sub    $0xc,%esp
  101105:	8b 5d 08             	mov    0x8(%ebp),%ebx
  101108:	8d 75 0c             	lea    0xc(%ebp),%esi
  10110b:	8a 03                	mov    (%ebx),%al
  10110d:	84 c0                	test   %al,%al
  10110f:	74 21                	je     101132 <Log+0x36>
  101111:	3c 25                	cmp    $0x25,%al
  101113:	74 5f                	je     101174 <Log+0x78>
  101115:	8b 15 08 22 10 00    	mov    0x102208,%edx
  10111b:	8d 4a 01             	lea    0x1(%edx),%ecx
  10111e:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  101124:	88 82 40 21 10 00    	mov    %al,0x102140(%edx)
  10112a:	8a 43 01             	mov    0x1(%ebx),%al
  10112d:	43                   	inc    %ebx
  10112e:	84 c0                	test   %al,%al
  101130:	75 df                	jne    101111 <Log+0x15>
  101132:	a1 08 22 10 00       	mov    0x102208,%eax
  101137:	c6 80 40 21 10 00 00 	movb   $0x0,0x102140(%eax)
  10113e:	85 c0                	test   %eax,%eax
  101140:	7e 1e                	jle    101160 <Log+0x64>
  101142:	31 db                	xor    %ebx,%ebx
  101144:	83 ec 0c             	sub    $0xc,%esp
  101147:	0f be 83 40 21 10 00 	movsbl 0x102140(%ebx),%eax
  10114e:	50                   	push   %eax
  10114f:	e8 5c f7 ff ff       	call   1008b0 <putChar>
  101154:	43                   	inc    %ebx
  101155:	83 c4 10             	add    $0x10,%esp
  101158:	39 1d 08 22 10 00    	cmp    %ebx,0x102208
  10115e:	7f e4                	jg     101144 <Log+0x48>
  101160:	c7 05 08 22 10 00 00 	movl   $0x0,0x102208
  101167:	00 00 00 
  10116a:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10116d:	5b                   	pop    %ebx
  10116e:	5e                   	pop    %esi
  10116f:	5f                   	pop    %edi
  101170:	5d                   	pop    %ebp
  101171:	c3                   	ret    
  101172:	66 90                	xchg   %ax,%ax
  101174:	8a 43 01             	mov    0x1(%ebx),%al
  101177:	3c 64                	cmp    $0x64,%al
  101179:	74 5e                	je     1011d9 <Log+0xdd>
  10117b:	7f 33                	jg     1011b0 <Log+0xb4>
  10117d:	3c 25                	cmp    $0x25,%al
  10117f:	0f 84 b3 00 00 00    	je     101238 <Log+0x13c>
  101185:	3c 63                	cmp    $0x63,%al
  101187:	75 4a                	jne    1011d3 <Log+0xd7>
  101189:	8b 16                	mov    (%esi),%edx
  10118b:	a1 08 22 10 00       	mov    0x102208,%eax
  101190:	8d 48 01             	lea    0x1(%eax),%ecx
  101193:	89 0d 08 22 10 00    	mov    %ecx,0x102208
  101199:	88 90 40 21 10 00    	mov    %dl,0x102140(%eax)
  10119f:	8a 43 02             	mov    0x2(%ebx),%al
  1011a2:	83 c6 04             	add    $0x4,%esi
  1011a5:	83 c3 02             	add    $0x2,%ebx
  1011a8:	e9 60 ff ff ff       	jmp    10110d <Log+0x11>
  1011ad:	8d 76 00             	lea    0x0(%esi),%esi
  1011b0:	3c 73                	cmp    $0x73,%al
  1011b2:	74 47                	je     1011fb <Log+0xff>
  1011b4:	3c 78                	cmp    $0x78,%al
  1011b6:	75 1b                	jne    1011d3 <Log+0xd7>
  1011b8:	89 f0                	mov    %esi,%eax
  1011ba:	83 c6 04             	add    $0x4,%esi
  1011bd:	8b 00                	mov    (%eax),%eax
  1011bf:	85 c0                	test   %eax,%eax
  1011c1:	74 21                	je     1011e4 <Log+0xe8>
  1011c3:	e8 e4 fe ff ff       	call   1010ac <addHex2Buff.part.1>
  1011c8:	8a 43 02             	mov    0x2(%ebx),%al
  1011cb:	83 c3 02             	add    $0x2,%ebx
  1011ce:	e9 3a ff ff ff       	jmp    10110d <Log+0x11>
  1011d3:	43                   	inc    %ebx
  1011d4:	e9 34 ff ff ff       	jmp    10110d <Log+0x11>
  1011d9:	89 f0                	mov    %esi,%eax
  1011db:	83 c6 04             	add    $0x4,%esi
  1011de:	8b 00                	mov    (%eax),%eax
  1011e0:	85 c0                	test   %eax,%eax
  1011e2:	75 6e                	jne    101252 <Log+0x156>
  1011e4:	a1 08 22 10 00       	mov    0x102208,%eax
  1011e9:	8d 50 01             	lea    0x1(%eax),%edx
  1011ec:	89 15 08 22 10 00    	mov    %edx,0x102208
  1011f2:	c6 80 40 21 10 00 30 	movb   $0x30,0x102140(%eax)
  1011f9:	eb cd                	jmp    1011c8 <Log+0xcc>
  1011fb:	8d 4e 04             	lea    0x4(%esi),%ecx
  1011fe:	8b 36                	mov    (%esi),%esi
  101200:	8a 16                	mov    (%esi),%dl
  101202:	84 d2                	test   %dl,%dl
  101204:	74 25                	je     10122b <Log+0x12f>
  101206:	8b 3d 08 22 10 00    	mov    0x102208,%edi
  10120c:	8d 47 01             	lea    0x1(%edi),%eax
  10120f:	29 fe                	sub    %edi,%esi
  101211:	8d 76 00             	lea    0x0(%esi),%esi
  101214:	89 c7                	mov    %eax,%edi
  101216:	88 90 3f 21 10 00    	mov    %dl,0x10213f(%eax)
  10121c:	40                   	inc    %eax
  10121d:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  101221:	84 d2                	test   %dl,%dl
  101223:	75 ef                	jne    101214 <Log+0x118>
  101225:	89 3d 08 22 10 00    	mov    %edi,0x102208
  10122b:	8a 43 02             	mov    0x2(%ebx),%al
  10122e:	89 ce                	mov    %ecx,%esi
  101230:	83 c3 02             	add    $0x2,%ebx
  101233:	e9 d5 fe ff ff       	jmp    10110d <Log+0x11>
  101238:	a1 08 22 10 00       	mov    0x102208,%eax
  10123d:	8d 50 01             	lea    0x1(%eax),%edx
  101240:	89 15 08 22 10 00    	mov    %edx,0x102208
  101246:	c6 80 40 21 10 00 25 	movb   $0x25,0x102140(%eax)
  10124d:	e9 76 ff ff ff       	jmp    1011c8 <Log+0xcc>
  101252:	83 ec 0c             	sub    $0xc,%esp
  101255:	50                   	push   %eax
  101256:	e8 99 fd ff ff       	call   100ff4 <addDec2Buff>
  10125b:	83 c4 10             	add    $0x10,%esp
  10125e:	e9 65 ff ff ff       	jmp    1011c8 <Log+0xcc>
  101263:	90                   	nop

00101264 <ProcessTableIndex>:
  101264:	55                   	push   %ebp
  101265:	89 e5                	mov    %esp,%ebp
  101267:	81 7d 08 40 2a 10 00 	cmpl   $0x102a40,0x8(%ebp)
  10126e:	74 0e                	je     10127e <ProcessTableIndex+0x1a>
  101270:	31 c0                	xor    %eax,%eax
  101272:	81 7d 08 c0 3a 10 00 	cmpl   $0x103ac0,0x8(%ebp)
  101279:	0f 95 c0             	setne  %al
  10127c:	5d                   	pop    %ebp
  10127d:	c3                   	ret    
  10127e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  101283:	5d                   	pop    %ebp
  101284:	c3                   	ret    
  101285:	66 90                	xchg   %ax,%ax
  101287:	90                   	nop

00101288 <abort>:
  101288:	55                   	push   %ebp
  101289:	89 e5                	mov    %esp,%ebp
  10128b:	57                   	push   %edi
  10128c:	56                   	push   %esi
  10128d:	53                   	push   %ebx
  10128e:	83 ec 1c             	sub    $0x1c,%esp
  101291:	8b 55 08             	mov    0x8(%ebp),%edx
  101294:	fa                   	cli    
  101295:	8a 02                	mov    (%edx),%al
  101297:	b9 32 20 10 00       	mov    $0x102032,%ecx
  10129c:	84 c0                	test   %al,%al
  10129e:	74 0b                	je     1012ab <abort+0x23>
  1012a0:	41                   	inc    %ecx
  1012a1:	42                   	inc    %edx
  1012a2:	88 41 ff             	mov    %al,-0x1(%ecx)
  1012a5:	8a 02                	mov    (%edx),%al
  1012a7:	84 c0                	test   %al,%al
  1012a9:	75 f5                	jne    1012a0 <abort+0x18>
  1012ab:	c6 01 3a             	movb   $0x3a,(%ecx)
  1012ae:	bb 29 22 10 00       	mov    $0x102229,%ebx
  1012b3:	be 0a 00 00 00       	mov    $0xa,%esi
  1012b8:	bf 67 66 66 66       	mov    $0x66666667,%edi
  1012bd:	4b                   	dec    %ebx
  1012be:	8b 45 0c             	mov    0xc(%ebp),%eax
  1012c1:	99                   	cltd   
  1012c2:	f7 fe                	idiv   %esi
  1012c4:	8d 42 30             	lea    0x30(%edx),%eax
  1012c7:	88 45 e7             	mov    %al,-0x19(%ebp)
  1012ca:	88 03                	mov    %al,(%ebx)
  1012cc:	89 f8                	mov    %edi,%eax
  1012ce:	f7 6d 0c             	imull  0xc(%ebp)
  1012d1:	c1 fa 02             	sar    $0x2,%edx
  1012d4:	8b 45 0c             	mov    0xc(%ebp),%eax
  1012d7:	c1 f8 1f             	sar    $0x1f,%eax
  1012da:	29 c2                	sub    %eax,%edx
  1012dc:	89 55 0c             	mov    %edx,0xc(%ebp)
  1012df:	75 dc                	jne    1012bd <abort+0x35>
  1012e1:	41                   	inc    %ecx
  1012e2:	41                   	inc    %ecx
  1012e3:	43                   	inc    %ebx
  1012e4:	8a 45 e7             	mov    -0x19(%ebp),%al
  1012e7:	88 41 ff             	mov    %al,-0x1(%ecx)
  1012ea:	8a 03                	mov    (%ebx),%al
  1012ec:	88 45 e7             	mov    %al,-0x19(%ebp)
  1012ef:	84 c0                	test   %al,%al
  1012f1:	75 ef                	jne    1012e2 <abort+0x5a>
  1012f3:	c6 01 0a             	movb   $0xa,(%ecx)
  1012f6:	0f be 05 20 20 10 00 	movsbl 0x102020,%eax
  1012fd:	84 c0                	test   %al,%al
  1012ff:	74 1b                	je     10131c <abort+0x94>
  101301:	bb 20 20 10 00       	mov    $0x102020,%ebx
  101306:	83 ec 0c             	sub    $0xc,%esp
  101309:	50                   	push   %eax
  10130a:	e8 a1 f5 ff ff       	call   1008b0 <putChar>
  10130f:	43                   	inc    %ebx
  101310:	0f be 03             	movsbl (%ebx),%eax
  101313:	83 c4 10             	add    $0x10,%esp
  101316:	84 c0                	test   %al,%al
  101318:	75 ec                	jne    101306 <abort+0x7e>
  10131a:	66 90                	xchg   %ax,%ax
  10131c:	f4                   	hlt    
  10131d:	eb fd                	jmp    10131c <abort+0x94>
  10131f:	90                   	nop

00101320 <idle_fun>:
  101320:	55                   	push   %ebp
  101321:	89 e5                	mov    %esp,%ebp
  101323:	fb                   	sti    
  101324:	f4                   	hlt    
  101325:	eb fd                	jmp    101324 <idle_fun+0x4>
  101327:	90                   	nop

00101328 <kEntry>:
  101328:	55                   	push   %ebp
  101329:	89 e5                	mov    %esp,%ebp
  10132b:	83 ec 08             	sub    $0x8,%esp
  10132e:	e8 3d f5 ff ff       	call   100870 <initSerial>
  101333:	e8 20 ed ff ff       	call   100058 <initTimer>
  101338:	e8 fb f1 ff ff       	call   100538 <initIdt>
  10133d:	e8 be ec ff ff       	call   100000 <initIntr>
  101342:	e8 b1 f9 ff ff       	call   100cf8 <initSeg>
  101347:	e8 80 f5 ff ff       	call   1008cc <initProcess>
  10134c:	b8 88 3a 10 00       	mov    $0x103a88,%eax
  101351:	89 c4                	mov    %eax,%esp
  101353:	e8 c8 ff ff ff       	call   101320 <idle_fun>

00101358 <no0>:
  101358:	6a 00                	push   $0x0
  10135a:	6a 00                	push   $0x0
  10135c:	eb 64                	jmp    1013c2 <asmDoIrq>

0010135e <no1>:
  10135e:	6a 00                	push   $0x0
  101360:	6a 01                	push   $0x1
  101362:	eb 5e                	jmp    1013c2 <asmDoIrq>

00101364 <no2>:
  101364:	6a 00                	push   $0x0
  101366:	6a 02                	push   $0x2
  101368:	eb 58                	jmp    1013c2 <asmDoIrq>

0010136a <no3>:
  10136a:	6a 00                	push   $0x0
  10136c:	6a 03                	push   $0x3
  10136e:	eb 52                	jmp    1013c2 <asmDoIrq>

00101370 <no4>:
  101370:	6a 00                	push   $0x0
  101372:	6a 04                	push   $0x4
  101374:	eb 4c                	jmp    1013c2 <asmDoIrq>

00101376 <no5>:
  101376:	6a 00                	push   $0x0
  101378:	6a 05                	push   $0x5
  10137a:	eb 46                	jmp    1013c2 <asmDoIrq>

0010137c <no6>:
  10137c:	6a 00                	push   $0x0
  10137e:	6a 06                	push   $0x6
  101380:	eb 40                	jmp    1013c2 <asmDoIrq>

00101382 <no7>:
  101382:	6a 00                	push   $0x0
  101384:	6a 07                	push   $0x7
  101386:	eb 3a                	jmp    1013c2 <asmDoIrq>

00101388 <no8>:
  101388:	6a 08                	push   $0x8
  10138a:	eb 36                	jmp    1013c2 <asmDoIrq>

0010138c <no9>:
  10138c:	6a 00                	push   $0x0
  10138e:	6a 09                	push   $0x9
  101390:	eb 30                	jmp    1013c2 <asmDoIrq>

00101392 <no10>:
  101392:	6a 0a                	push   $0xa
  101394:	eb 2c                	jmp    1013c2 <asmDoIrq>

00101396 <no11>:
  101396:	6a 0b                	push   $0xb
  101398:	eb 28                	jmp    1013c2 <asmDoIrq>

0010139a <no12>:
  10139a:	6a 0c                	push   $0xc
  10139c:	eb 24                	jmp    1013c2 <asmDoIrq>

0010139e <no13>:
  10139e:	6a 0d                	push   $0xd
  1013a0:	eb 20                	jmp    1013c2 <asmDoIrq>

001013a2 <no14>:
  1013a2:	6a 0e                	push   $0xe
  1013a4:	eb 1c                	jmp    1013c2 <asmDoIrq>

001013a6 <intr0>:
  1013a6:	6a 00                	push   $0x0
  1013a8:	68 e8 03 00 00       	push   $0x3e8
  1013ad:	eb 13                	jmp    1013c2 <asmDoIrq>

001013af <irqEmpty>:
  1013af:	6a 00                	push   $0x0
  1013b1:	6a ff                	push   $0xffffffff
  1013b3:	eb 0d                	jmp    1013c2 <asmDoIrq>

001013b5 <irqGProtectFault>:
  1013b5:	6a 0d                	push   $0xd
  1013b7:	eb 09                	jmp    1013c2 <asmDoIrq>

001013b9 <irqSyscall>:
  1013b9:	6a 00                	push   $0x0
  1013bb:	68 80 00 00 00       	push   $0x80
  1013c0:	eb 00                	jmp    1013c2 <asmDoIrq>

001013c2 <asmDoIrq>:
  1013c2:	fa                   	cli    
  1013c3:	1e                   	push   %ds
  1013c4:	06                   	push   %es
  1013c5:	0f a0                	push   %fs
  1013c7:	0f a8                	push   %gs
  1013c9:	60                   	pusha  
  1013ca:	54                   	push   %esp
  1013cb:	e8 c4 f0 ff ff       	call   100494 <irqHandle>
  1013d0:	a1 2c 22 10 00       	mov    0x10222c,%eax
  1013d5:	85 c0                	test   %eax,%eax
  1013d7:	74 02                	je     1013db <switch>
  1013d9:	89 c4                	mov    %eax,%esp

001013db <switch>:
  1013db:	83 c4 04             	add    $0x4,%esp
  1013de:	61                   	popa   
  1013df:	0f a9                	pop    %gs
  1013e1:	0f a1                	pop    %fs
  1013e3:	07                   	pop    %es
  1013e4:	1f                   	pop    %ds
  1013e5:	83 c4 04             	add    $0x4,%esp
  1013e8:	83 c4 04             	add    $0x4,%esp
  1013eb:	fb                   	sti    
  1013ec:	cf                   	iret   
