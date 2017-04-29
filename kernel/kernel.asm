
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
  10007b:	8b 0d 00 23 10 00    	mov    0x102300,%ecx
  100081:	8b 15 20 24 10 00    	mov    0x102420,%edx
  100087:	8d 1c 89             	lea    (%ecx,%ecx,4),%ebx
  10008a:	c1 e3 04             	shl    $0x4,%ebx
  10008d:	01 d3                	add    %edx,%ebx
  10008f:	66 98                	cbtw   
  100091:	05 00 0c 00 00       	add    $0xc00,%eax
  100096:	66 89 84 1b 00 80 0b 	mov    %ax,0xb8000(%ebx,%ebx,1)
  10009d:	00 
  10009e:	8d 42 01             	lea    0x1(%edx),%eax
  1000a1:	a3 20 24 10 00       	mov    %eax,0x102420
  1000a6:	83 f8 50             	cmp    $0x50,%eax
  1000a9:	74 19                	je     1000c4 <showCharInScreen+0x54>
  1000ab:	5b                   	pop    %ebx
  1000ac:	5d                   	pop    %ebp
  1000ad:	c3                   	ret    
  1000ae:	66 90                	xchg   %ax,%ax
  1000b0:	ff 05 00 23 10 00    	incl   0x102300
  1000b6:	c7 05 20 24 10 00 00 	movl   $0x0,0x102420
  1000bd:	00 00 00 
  1000c0:	5b                   	pop    %ebx
  1000c1:	5d                   	pop    %ebp
  1000c2:	c3                   	ret    
  1000c3:	90                   	nop
  1000c4:	41                   	inc    %ecx
  1000c5:	89 0d 00 23 10 00    	mov    %ecx,0x102300
  1000cb:	c7 05 20 24 10 00 00 	movl   $0x0,0x102420
  1000d2:	00 00 00 
  1000d5:	5b                   	pop    %ebx
  1000d6:	5d                   	pop    %ebp
  1000d7:	c3                   	ret    

001000d8 <timerHandle>:
  1000d8:	55                   	push   %ebp
  1000d9:	89 e5                	mov    %esp,%ebp
  1000db:	83 3d 8c ad 10 00 01 	cmpl   $0x1,0x10ad8c
  1000e2:	74 2c                	je     100110 <timerHandle+0x38>
  1000e4:	83 3d e8 ed 10 00 01 	cmpl   $0x1,0x10ede8
  1000eb:	74 3f                	je     10012c <timerHandle+0x54>
  1000ed:	8b 15 3c 6d 10 00    	mov    0x106d3c,%edx
  1000f3:	81 fa e0 2c 10 00    	cmp    $0x102ce0,%edx
  1000f9:	74 4f                	je     10014a <timerHandle+0x72>
  1000fb:	8b 82 50 40 00 00    	mov    0x4050(%edx),%eax
  100101:	85 c0                	test   %eax,%eax
  100103:	74 3b                	je     100140 <timerHandle+0x68>
  100105:	48                   	dec    %eax
  100106:	89 82 50 40 00 00    	mov    %eax,0x4050(%edx)
  10010c:	5d                   	pop    %ebp
  10010d:	c3                   	ret    
  10010e:	66 90                	xchg   %ax,%ax
  100110:	ff 0d 94 ad 10 00    	decl   0x10ad94
  100116:	75 cc                	jne    1000e4 <timerHandle+0xc>
  100118:	c7 05 8c ad 10 00 02 	movl   $0x2,0x10ad8c
  10011f:	00 00 00 
  100122:	83 3d e8 ed 10 00 01 	cmpl   $0x1,0x10ede8
  100129:	75 c2                	jne    1000ed <timerHandle+0x15>
  10012b:	90                   	nop
  10012c:	ff 0d f0 ed 10 00    	decl   0x10edf0
  100132:	75 b9                	jne    1000ed <timerHandle+0x15>
  100134:	c7 05 e8 ed 10 00 02 	movl   $0x2,0x10ede8
  10013b:	00 00 00 
  10013e:	eb ad                	jmp    1000ed <timerHandle+0x15>
  100140:	c7 82 4c 40 00 00 02 	movl   $0x2,0x404c(%edx)
  100147:	00 00 00 
  10014a:	5d                   	pop    %ebp
  10014b:	e9 38 05 00 00       	jmp    100688 <schedule>

00100150 <do_sys_write>:
  100150:	55                   	push   %ebp
  100151:	89 e5                	mov    %esp,%ebp
  100153:	57                   	push   %edi
  100154:	56                   	push   %esi
  100155:	53                   	push   %ebx
  100156:	83 ec 1c             	sub    $0x1c,%esp
  100159:	8b 45 08             	mov    0x8(%ebp),%eax
  10015c:	8b 40 10             	mov    0x10(%eax),%eax
  10015f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100162:	48                   	dec    %eax
  100163:	83 f8 01             	cmp    $0x1,%eax
  100166:	76 1c                	jbe    100184 <do_sys_write+0x34>
  100168:	83 ec 08             	sub    $0x8,%esp
  10016b:	6a 7a                	push   $0x7a
  10016d:	68 64 0e 10 00       	push   $0x100e64
  100172:	e8 b1 0b 00 00       	call   100d28 <abort>
  100177:	83 c4 10             	add    $0x10,%esp
  10017a:	8d 65 f4             	lea    -0xc(%ebp),%esp
  10017d:	5b                   	pop    %ebx
  10017e:	5e                   	pop    %esi
  10017f:	5f                   	pop    %edi
  100180:	5d                   	pop    %ebp
  100181:	c3                   	ret    
  100182:	66 90                	xchg   %ax,%ax
  100184:	8b 45 08             	mov    0x8(%ebp),%eax
  100187:	8b 70 18             	mov    0x18(%eax),%esi
  10018a:	8b 40 14             	mov    0x14(%eax),%eax
  10018d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100190:	85 c0                	test   %eax,%eax
  100192:	74 39                	je     1001cd <do_sys_write+0x7d>
  100194:	8a 06                	mov    (%esi),%al
  100196:	84 c0                	test   %al,%al
  100198:	74 54                	je     1001ee <do_sys_write+0x9e>
  10019a:	bf 01 00 00 00       	mov    $0x1,%edi
  10019f:	eb 10                	jmp    1001b1 <do_sys_write+0x61>
  1001a1:	8d 76 00             	lea    0x0(%esi),%esi
  1001a4:	8d 4f 01             	lea    0x1(%edi),%ecx
  1001a7:	8a 44 31 ff          	mov    -0x1(%ecx,%esi,1),%al
  1001ab:	84 c0                	test   %al,%al
  1001ad:	74 31                	je     1001e0 <do_sys_write+0x90>
  1001af:	89 cf                	mov    %ecx,%edi
  1001b1:	0f be d8             	movsbl %al,%ebx
  1001b4:	83 ec 0c             	sub    $0xc,%esp
  1001b7:	53                   	push   %ebx
  1001b8:	e8 a7 04 00 00       	call   100664 <putChar>
  1001bd:	89 1c 24             	mov    %ebx,(%esp)
  1001c0:	e8 ab fe ff ff       	call   100070 <showCharInScreen>
  1001c5:	83 c4 10             	add    $0x10,%esp
  1001c8:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  1001cb:	75 d7                	jne    1001a4 <do_sys_write+0x54>
  1001cd:	8b 45 08             	mov    0x8(%ebp),%eax
  1001d0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1001d3:	89 50 1c             	mov    %edx,0x1c(%eax)
  1001d6:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1001d9:	5b                   	pop    %ebx
  1001da:	5e                   	pop    %esi
  1001db:	5f                   	pop    %edi
  1001dc:	5d                   	pop    %ebp
  1001dd:	c3                   	ret    
  1001de:	66 90                	xchg   %ax,%ax
  1001e0:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  1001e3:	8b 45 08             	mov    0x8(%ebp),%eax
  1001e6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  1001e9:	89 50 1c             	mov    %edx,0x1c(%eax)
  1001ec:	eb e8                	jmp    1001d6 <do_sys_write+0x86>
  1001ee:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1001f5:	eb d6                	jmp    1001cd <do_sys_write+0x7d>
  1001f7:	90                   	nop

001001f8 <syscallHandle>:
  1001f8:	55                   	push   %ebp
  1001f9:	89 e5                	mov    %esp,%ebp
  1001fb:	83 ec 08             	sub    $0x8,%esp
  1001fe:	8b 55 08             	mov    0x8(%ebp),%edx
  100201:	8b 42 1c             	mov    0x1c(%edx),%eax
  100204:	83 f8 04             	cmp    $0x4,%eax
  100207:	74 2b                	je     100234 <syscallHandle+0x3c>
  100209:	77 1d                	ja     100228 <syscallHandle+0x30>
  10020b:	48                   	dec    %eax
  10020c:	83 f8 01             	cmp    $0x1,%eax
  10020f:	76 15                	jbe    100226 <syscallHandle+0x2e>
  100211:	83 ec 08             	sub    $0x8,%esp
  100214:	68 86 00 00 00       	push   $0x86
  100219:	68 64 0e 10 00       	push   $0x100e64
  10021e:	e8 05 0b 00 00       	call   100d28 <abort>
  100223:	83 c4 10             	add    $0x10,%esp
  100226:	c9                   	leave  
  100227:	c3                   	ret    
  100228:	3d a2 00 00 00       	cmp    $0xa2,%eax
  10022d:	75 e2                	jne    100211 <syscallHandle+0x19>
  10022f:	c9                   	leave  
  100230:	c3                   	ret    
  100231:	8d 76 00             	lea    0x0(%esi),%esi
  100234:	89 55 08             	mov    %edx,0x8(%ebp)
  100237:	c9                   	leave  
  100238:	e9 13 ff ff ff       	jmp    100150 <do_sys_write>
  10023d:	8d 76 00             	lea    0x0(%esi),%esi

00100240 <irqHandle>:
  100240:	55                   	push   %ebp
  100241:	89 e5                	mov    %esp,%ebp
  100243:	83 ec 08             	sub    $0x8,%esp
  100246:	8b 55 08             	mov    0x8(%ebp),%edx
  100249:	1e                   	push   %ds
  10024a:	06                   	push   %es
  10024b:	0f a0                	push   %fs
  10024d:	0f a8                	push   %gs
  10024f:	b8 10 00 00 00       	mov    $0x10,%eax
  100254:	8e c0                	mov    %eax,%es
  100256:	8e d8                	mov    %eax,%ds
  100258:	8e e0                	mov    %eax,%fs
  10025a:	8b 42 20             	mov    0x20(%edx),%eax
  10025d:	83 f8 0d             	cmp    $0xd,%eax
  100260:	74 56                	je     1002b8 <irqHandle+0x78>
  100262:	7e 3c                	jle    1002a0 <irqHandle+0x60>
  100264:	3d 80 00 00 00       	cmp    $0x80,%eax
  100269:	74 25                	je     100290 <irqHandle+0x50>
  10026b:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  100270:	75 33                	jne    1002a5 <irqHandle+0x65>
  100272:	83 ec 0c             	sub    $0xc,%esp
  100275:	68 77 0e 10 00       	push   $0x100e77
  10027a:	e8 39 09 00 00       	call   100bb8 <Log>
  10027f:	e8 54 fe ff ff       	call   1000d8 <timerHandle>
  100284:	83 c4 10             	add    $0x10,%esp
  100287:	0f a9                	pop    %gs
  100289:	0f a1                	pop    %fs
  10028b:	07                   	pop    %es
  10028c:	1f                   	pop    %ds
  10028d:	c9                   	leave  
  10028e:	c3                   	ret    
  10028f:	90                   	nop
  100290:	83 ec 0c             	sub    $0xc,%esp
  100293:	52                   	push   %edx
  100294:	e8 5f ff ff ff       	call   1001f8 <syscallHandle>
  100299:	83 c4 10             	add    $0x10,%esp
  10029c:	eb e9                	jmp    100287 <irqHandle+0x47>
  10029e:	66 90                	xchg   %ax,%ax
  1002a0:	83 f8 ff             	cmp    $0xffffffff,%eax
  1002a3:	74 e2                	je     100287 <irqHandle+0x47>
  1002a5:	83 ec 08             	sub    $0x8,%esp
  1002a8:	50                   	push   %eax
  1002a9:	68 81 0e 10 00       	push   $0x100e81
  1002ae:	e8 05 09 00 00       	call   100bb8 <Log>
  1002b3:	83 c4 10             	add    $0x10,%esp
  1002b6:	eb cf                	jmp    100287 <irqHandle+0x47>
  1002b8:	83 ec 08             	sub    $0x8,%esp
  1002bb:	68 8b 00 00 00       	push   $0x8b
  1002c0:	68 64 0e 10 00       	push   $0x100e64
  1002c5:	e8 5e 0a 00 00       	call   100d28 <abort>
  1002ca:	83 c4 10             	add    $0x10,%esp
  1002cd:	eb b8                	jmp    100287 <irqHandle+0x47>
  1002cf:	90                   	nop

001002d0 <GProtectFaultHandle>:
  1002d0:	55                   	push   %ebp
  1002d1:	89 e5                	mov    %esp,%ebp
  1002d3:	83 ec 10             	sub    $0x10,%esp
  1002d6:	68 8b 00 00 00       	push   $0x8b
  1002db:	68 64 0e 10 00       	push   $0x100e64
  1002e0:	e8 43 0a 00 00       	call   100d28 <abort>
  1002e5:	83 c4 10             	add    $0x10,%esp
  1002e8:	c9                   	leave  
  1002e9:	c3                   	ret    
  1002ea:	66 90                	xchg   %ax,%ax

001002ec <initIdt>:
  1002ec:	55                   	push   %ebp
  1002ed:	89 e5                	mov    %esp,%ebp
  1002ef:	53                   	push   %ebx
  1002f0:	ba 3d 0e 10 00       	mov    $0x100e3d,%edx
  1002f5:	89 d3                	mov    %edx,%ebx
  1002f7:	c1 ea 10             	shr    $0x10,%edx
  1002fa:	b9 e0 2c 10 00       	mov    $0x102ce0,%ecx
  1002ff:	b8 e0 24 10 00       	mov    $0x1024e0,%eax
  100304:	66 89 18             	mov    %bx,(%eax)
  100307:	66 c7 40 02 08 00    	movw   $0x8,0x2(%eax)
  10030d:	c6 40 04 00          	movb   $0x0,0x4(%eax)
  100311:	c6 40 05 8f          	movb   $0x8f,0x5(%eax)
  100315:	66 89 50 06          	mov    %dx,0x6(%eax)
  100319:	83 c0 08             	add    $0x8,%eax
  10031c:	39 c1                	cmp    %eax,%ecx
  10031e:	75 e4                	jne    100304 <initIdt+0x18>
  100320:	b8 e6 0d 10 00       	mov    $0x100de6,%eax
  100325:	66 a3 e0 24 10 00    	mov    %ax,0x1024e0
  10032b:	66 c7 05 e2 24 10 00 	movw   $0x8,0x1024e2
  100332:	08 00 
  100334:	c6 05 e4 24 10 00 00 	movb   $0x0,0x1024e4
  10033b:	c6 05 e5 24 10 00 8f 	movb   $0x8f,0x1024e5
  100342:	c1 e8 10             	shr    $0x10,%eax
  100345:	66 a3 e6 24 10 00    	mov    %ax,0x1024e6
  10034b:	b8 ec 0d 10 00       	mov    $0x100dec,%eax
  100350:	66 a3 e8 24 10 00    	mov    %ax,0x1024e8
  100356:	66 c7 05 ea 24 10 00 	movw   $0x8,0x1024ea
  10035d:	08 00 
  10035f:	c6 05 ec 24 10 00 00 	movb   $0x0,0x1024ec
  100366:	c6 05 ed 24 10 00 8f 	movb   $0x8f,0x1024ed
  10036d:	c1 e8 10             	shr    $0x10,%eax
  100370:	66 a3 ee 24 10 00    	mov    %ax,0x1024ee
  100376:	b8 f2 0d 10 00       	mov    $0x100df2,%eax
  10037b:	66 a3 f0 24 10 00    	mov    %ax,0x1024f0
  100381:	66 c7 05 f2 24 10 00 	movw   $0x8,0x1024f2
  100388:	08 00 
  10038a:	c6 05 f4 24 10 00 00 	movb   $0x0,0x1024f4
  100391:	c6 05 f5 24 10 00 8f 	movb   $0x8f,0x1024f5
  100398:	c1 e8 10             	shr    $0x10,%eax
  10039b:	66 a3 f6 24 10 00    	mov    %ax,0x1024f6
  1003a1:	b8 f8 0d 10 00       	mov    $0x100df8,%eax
  1003a6:	66 a3 f8 24 10 00    	mov    %ax,0x1024f8
  1003ac:	66 c7 05 fa 24 10 00 	movw   $0x8,0x1024fa
  1003b3:	08 00 
  1003b5:	c6 05 fc 24 10 00 00 	movb   $0x0,0x1024fc
  1003bc:	c6 05 fd 24 10 00 8f 	movb   $0x8f,0x1024fd
  1003c3:	c1 e8 10             	shr    $0x10,%eax
  1003c6:	66 a3 fe 24 10 00    	mov    %ax,0x1024fe
  1003cc:	b8 fe 0d 10 00       	mov    $0x100dfe,%eax
  1003d1:	66 a3 00 25 10 00    	mov    %ax,0x102500
  1003d7:	66 c7 05 02 25 10 00 	movw   $0x8,0x102502
  1003de:	08 00 
  1003e0:	c6 05 04 25 10 00 00 	movb   $0x0,0x102504
  1003e7:	c6 05 05 25 10 00 8f 	movb   $0x8f,0x102505
  1003ee:	c1 e8 10             	shr    $0x10,%eax
  1003f1:	66 a3 06 25 10 00    	mov    %ax,0x102506
  1003f7:	b8 04 0e 10 00       	mov    $0x100e04,%eax
  1003fc:	66 a3 08 25 10 00    	mov    %ax,0x102508
  100402:	66 c7 05 0a 25 10 00 	movw   $0x8,0x10250a
  100409:	08 00 
  10040b:	c6 05 0c 25 10 00 00 	movb   $0x0,0x10250c
  100412:	c6 05 0d 25 10 00 8f 	movb   $0x8f,0x10250d
  100419:	c1 e8 10             	shr    $0x10,%eax
  10041c:	66 a3 0e 25 10 00    	mov    %ax,0x10250e
  100422:	b8 0a 0e 10 00       	mov    $0x100e0a,%eax
  100427:	66 a3 10 25 10 00    	mov    %ax,0x102510
  10042d:	66 c7 05 12 25 10 00 	movw   $0x8,0x102512
  100434:	08 00 
  100436:	c6 05 14 25 10 00 00 	movb   $0x0,0x102514
  10043d:	c6 05 15 25 10 00 8f 	movb   $0x8f,0x102515
  100444:	c1 e8 10             	shr    $0x10,%eax
  100447:	66 a3 16 25 10 00    	mov    %ax,0x102516
  10044d:	b8 10 0e 10 00       	mov    $0x100e10,%eax
  100452:	66 a3 18 25 10 00    	mov    %ax,0x102518
  100458:	66 c7 05 1a 25 10 00 	movw   $0x8,0x10251a
  10045f:	08 00 
  100461:	c6 05 1c 25 10 00 00 	movb   $0x0,0x10251c
  100468:	c6 05 1d 25 10 00 8f 	movb   $0x8f,0x10251d
  10046f:	c1 e8 10             	shr    $0x10,%eax
  100472:	66 a3 1e 25 10 00    	mov    %ax,0x10251e
  100478:	b8 16 0e 10 00       	mov    $0x100e16,%eax
  10047d:	66 a3 20 25 10 00    	mov    %ax,0x102520
  100483:	66 c7 05 22 25 10 00 	movw   $0x8,0x102522
  10048a:	08 00 
  10048c:	c6 05 24 25 10 00 00 	movb   $0x0,0x102524
  100493:	c6 05 25 25 10 00 8f 	movb   $0x8f,0x102525
  10049a:	c1 e8 10             	shr    $0x10,%eax
  10049d:	66 a3 26 25 10 00    	mov    %ax,0x102526
  1004a3:	b8 1a 0e 10 00       	mov    $0x100e1a,%eax
  1004a8:	66 a3 28 25 10 00    	mov    %ax,0x102528
  1004ae:	66 c7 05 2a 25 10 00 	movw   $0x8,0x10252a
  1004b5:	08 00 
  1004b7:	c6 05 2c 25 10 00 00 	movb   $0x0,0x10252c
  1004be:	c6 05 2d 25 10 00 8f 	movb   $0x8f,0x10252d
  1004c5:	c1 e8 10             	shr    $0x10,%eax
  1004c8:	66 a3 2e 25 10 00    	mov    %ax,0x10252e
  1004ce:	b8 20 0e 10 00       	mov    $0x100e20,%eax
  1004d3:	66 a3 30 25 10 00    	mov    %ax,0x102530
  1004d9:	66 c7 05 32 25 10 00 	movw   $0x8,0x102532
  1004e0:	08 00 
  1004e2:	c6 05 34 25 10 00 00 	movb   $0x0,0x102534
  1004e9:	c6 05 35 25 10 00 8f 	movb   $0x8f,0x102535
  1004f0:	c1 e8 10             	shr    $0x10,%eax
  1004f3:	66 a3 36 25 10 00    	mov    %ax,0x102536
  1004f9:	b8 24 0e 10 00       	mov    $0x100e24,%eax
  1004fe:	66 a3 38 25 10 00    	mov    %ax,0x102538
  100504:	66 c7 05 3a 25 10 00 	movw   $0x8,0x10253a
  10050b:	08 00 
  10050d:	c6 05 3c 25 10 00 00 	movb   $0x0,0x10253c
  100514:	c6 05 3d 25 10 00 8f 	movb   $0x8f,0x10253d
  10051b:	c1 e8 10             	shr    $0x10,%eax
  10051e:	66 a3 3e 25 10 00    	mov    %ax,0x10253e
  100524:	b8 28 0e 10 00       	mov    $0x100e28,%eax
  100529:	66 a3 40 25 10 00    	mov    %ax,0x102540
  10052f:	66 c7 05 42 25 10 00 	movw   $0x8,0x102542
  100536:	08 00 
  100538:	c6 05 44 25 10 00 00 	movb   $0x0,0x102544
  10053f:	c6 05 45 25 10 00 8f 	movb   $0x8f,0x102545
  100546:	c1 e8 10             	shr    $0x10,%eax
  100549:	66 a3 46 25 10 00    	mov    %ax,0x102546
  10054f:	66 c7 05 4a 25 10 00 	movw   $0x8,0x10254a
  100556:	08 00 
  100558:	c6 05 4c 25 10 00 00 	movb   $0x0,0x10254c
  10055f:	c6 05 4d 25 10 00 8f 	movb   $0x8f,0x10254d
  100566:	b8 30 0e 10 00       	mov    $0x100e30,%eax
  10056b:	66 a3 50 25 10 00    	mov    %ax,0x102550
  100571:	66 c7 05 52 25 10 00 	movw   $0x8,0x102552
  100578:	08 00 
  10057a:	c6 05 54 25 10 00 00 	movb   $0x0,0x102554
  100581:	c6 05 55 25 10 00 8f 	movb   $0x8f,0x102555
  100588:	c1 e8 10             	shr    $0x10,%eax
  10058b:	66 a3 56 25 10 00    	mov    %ax,0x102556
  100591:	b8 43 0e 10 00       	mov    $0x100e43,%eax
  100596:	66 a3 48 25 10 00    	mov    %ax,0x102548
  10059c:	c1 e8 10             	shr    $0x10,%eax
  10059f:	66 a3 4e 25 10 00    	mov    %ax,0x10254e
  1005a5:	b8 47 0e 10 00       	mov    $0x100e47,%eax
  1005aa:	66 a3 e0 28 10 00    	mov    %ax,0x1028e0
  1005b0:	66 c7 05 e2 28 10 00 	movw   $0x8,0x1028e2
  1005b7:	08 00 
  1005b9:	c6 05 e4 28 10 00 00 	movb   $0x0,0x1028e4
  1005c0:	c6 05 e5 28 10 00 ef 	movb   $0xef,0x1028e5
  1005c7:	c1 e8 10             	shr    $0x10,%eax
  1005ca:	66 a3 e6 28 10 00    	mov    %ax,0x1028e6
  1005d0:	b8 34 0e 10 00       	mov    $0x100e34,%eax
  1005d5:	66 a3 e0 25 10 00    	mov    %ax,0x1025e0
  1005db:	66 c7 05 e2 25 10 00 	movw   $0x8,0x1025e2
  1005e2:	08 00 
  1005e4:	c6 05 e4 25 10 00 00 	movb   $0x0,0x1025e4
  1005eb:	c6 05 e5 25 10 00 8e 	movb   $0x8e,0x1025e5
  1005f2:	c1 e8 10             	shr    $0x10,%eax
  1005f5:	66 a3 e6 25 10 00    	mov    %ax,0x1025e6
  1005fb:	66 c7 05 24 24 10 00 	movw   $0x7ff,0x102424
  100602:	ff 07 
  100604:	b8 e0 24 10 00       	mov    $0x1024e0,%eax
  100609:	66 a3 26 24 10 00    	mov    %ax,0x102426
  10060f:	c1 e8 10             	shr    $0x10,%eax
  100612:	66 a3 28 24 10 00    	mov    %ax,0x102428
  100618:	b8 24 24 10 00       	mov    $0x102424,%eax
  10061d:	0f 01 18             	lidtl  (%eax)
  100620:	5b                   	pop    %ebx
  100621:	5d                   	pop    %ebp
  100622:	c3                   	ret    
  100623:	90                   	nop

00100624 <initSerial>:
  100624:	55                   	push   %ebp
  100625:	89 e5                	mov    %esp,%ebp
  100627:	ba f9 03 00 00       	mov    $0x3f9,%edx
  10062c:	31 c0                	xor    %eax,%eax
  10062e:	ee                   	out    %al,(%dx)
  10062f:	ba fb 03 00 00       	mov    $0x3fb,%edx
  100634:	b0 80                	mov    $0x80,%al
  100636:	ee                   	out    %al,(%dx)
  100637:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10063c:	b0 01                	mov    $0x1,%al
  10063e:	ee                   	out    %al,(%dx)
  10063f:	ba f9 03 00 00       	mov    $0x3f9,%edx
  100644:	31 c0                	xor    %eax,%eax
  100646:	ee                   	out    %al,(%dx)
  100647:	ba fb 03 00 00       	mov    $0x3fb,%edx
  10064c:	b0 03                	mov    $0x3,%al
  10064e:	ee                   	out    %al,(%dx)
  10064f:	ba fa 03 00 00       	mov    $0x3fa,%edx
  100654:	b0 c7                	mov    $0xc7,%al
  100656:	ee                   	out    %al,(%dx)
  100657:	ba fc 03 00 00       	mov    $0x3fc,%edx
  10065c:	b0 0b                	mov    $0xb,%al
  10065e:	ee                   	out    %al,(%dx)
  10065f:	5d                   	pop    %ebp
  100660:	c3                   	ret    
  100661:	8d 76 00             	lea    0x0(%esi),%esi

00100664 <putChar>:
  100664:	55                   	push   %ebp
  100665:	89 e5                	mov    %esp,%ebp
  100667:	8b 4d 08             	mov    0x8(%ebp),%ecx
  10066a:	ba fd 03 00 00       	mov    $0x3fd,%edx
  10066f:	90                   	nop
  100670:	ec                   	in     (%dx),%al
  100671:	a8 20                	test   $0x20,%al
  100673:	74 fb                	je     100670 <putChar+0xc>
  100675:	ba f8 03 00 00       	mov    $0x3f8,%edx
  10067a:	88 c8                	mov    %cl,%al
  10067c:	ee                   	out    %al,(%dx)
  10067d:	5d                   	pop    %ebp
  10067e:	c3                   	ret    
  10067f:	90                   	nop

00100680 <init_Process>:
  100680:	55                   	push   %ebp
  100681:	89 e5                	mov    %esp,%ebp
  100683:	5d                   	pop    %ebp
  100684:	c3                   	ret    
  100685:	8d 76 00             	lea    0x0(%esi),%esi

00100688 <schedule>:
  100688:	55                   	push   %ebp
  100689:	89 e5                	mov    %esp,%ebp
  10068b:	8b 15 3c 6d 10 00    	mov    0x106d3c,%edx
  100691:	8d 82 5c 40 00 00    	lea    0x405c(%edx),%eax
  100697:	3d 54 2e 11 00       	cmp    $0x112e54,%eax
  10069c:	74 23                	je     1006c1 <schedule+0x39>
  10069e:	83 ba a8 80 00 00 02 	cmpl   $0x2,0x80a8(%edx)
  1006a5:	75 0e                	jne    1006b5 <schedule+0x2d>
  1006a7:	eb 27                	jmp    1006d0 <schedule+0x48>
  1006a9:	8d 76 00             	lea    0x0(%esi),%esi
  1006ac:	83 b8 4c 40 00 00 02 	cmpl   $0x2,0x404c(%eax)
  1006b3:	74 1b                	je     1006d0 <schedule+0x48>
  1006b5:	05 5c 40 00 00       	add    $0x405c,%eax
  1006ba:	3d 54 2e 11 00       	cmp    $0x112e54,%eax
  1006bf:	75 eb                	jne    1006ac <schedule+0x24>
  1006c1:	c7 05 3c 6d 10 00 e0 	movl   $0x102ce0,0x106d3c
  1006c8:	2c 10 00 
  1006cb:	5d                   	pop    %ebp
  1006cc:	c3                   	ret    
  1006cd:	8d 76 00             	lea    0x0(%esi),%esi
  1006d0:	a3 3c 6d 10 00       	mov    %eax,0x106d3c
  1006d5:	c7 80 50 40 00 00 0a 	movl   $0xa,0x4050(%eax)
  1006dc:	00 00 00 
  1006df:	c7 80 4c 40 00 00 00 	movl   $0x0,0x404c(%eax)
  1006e6:	00 00 00 
  1006e9:	05 4c 40 00 00       	add    $0x404c,%eax
  1006ee:	a3 44 ee 10 00       	mov    %eax,0x10ee44
  1006f3:	5d                   	pop    %ebp
  1006f4:	c3                   	ret    
  1006f5:	66 90                	xchg   %ax,%ax
  1006f7:	90                   	nop

001006f8 <waitDisk>:
  1006f8:	55                   	push   %ebp
  1006f9:	89 e5                	mov    %esp,%ebp
  1006fb:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100700:	ec                   	in     (%dx),%al
  100701:	83 e0 c0             	and    $0xffffffc0,%eax
  100704:	3c 40                	cmp    $0x40,%al
  100706:	75 f8                	jne    100700 <waitDisk+0x8>
  100708:	5d                   	pop    %ebp
  100709:	c3                   	ret    
  10070a:	66 90                	xchg   %ax,%ax

0010070c <readSect>:
  10070c:	55                   	push   %ebp
  10070d:	89 e5                	mov    %esp,%ebp
  10070f:	53                   	push   %ebx
  100710:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  100713:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100718:	ec                   	in     (%dx),%al
  100719:	83 e0 c0             	and    $0xffffffc0,%eax
  10071c:	3c 40                	cmp    $0x40,%al
  10071e:	75 f8                	jne    100718 <readSect+0xc>
  100720:	ba f2 01 00 00       	mov    $0x1f2,%edx
  100725:	b0 01                	mov    $0x1,%al
  100727:	ee                   	out    %al,(%dx)
  100728:	ba f3 01 00 00       	mov    $0x1f3,%edx
  10072d:	88 c8                	mov    %cl,%al
  10072f:	ee                   	out    %al,(%dx)
  100730:	89 c8                	mov    %ecx,%eax
  100732:	c1 f8 08             	sar    $0x8,%eax
  100735:	ba f4 01 00 00       	mov    $0x1f4,%edx
  10073a:	ee                   	out    %al,(%dx)
  10073b:	89 c8                	mov    %ecx,%eax
  10073d:	c1 f8 10             	sar    $0x10,%eax
  100740:	ba f5 01 00 00       	mov    $0x1f5,%edx
  100745:	ee                   	out    %al,(%dx)
  100746:	89 c8                	mov    %ecx,%eax
  100748:	c1 f8 18             	sar    $0x18,%eax
  10074b:	83 c8 e0             	or     $0xffffffe0,%eax
  10074e:	ba f6 01 00 00       	mov    $0x1f6,%edx
  100753:	ee                   	out    %al,(%dx)
  100754:	ba f7 01 00 00       	mov    $0x1f7,%edx
  100759:	b0 20                	mov    $0x20,%al
  10075b:	ee                   	out    %al,(%dx)
  10075c:	ec                   	in     (%dx),%al
  10075d:	83 e0 c0             	and    $0xffffffc0,%eax
  100760:	3c 40                	cmp    $0x40,%al
  100762:	75 f8                	jne    10075c <readSect+0x50>
  100764:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100767:	8d 99 00 02 00 00    	lea    0x200(%ecx),%ebx
  10076d:	ba f0 01 00 00       	mov    $0x1f0,%edx
  100772:	66 90                	xchg   %ax,%ax
  100774:	ed                   	in     (%dx),%eax
  100775:	89 01                	mov    %eax,(%ecx)
  100777:	83 c1 04             	add    $0x4,%ecx
  10077a:	39 d9                	cmp    %ebx,%ecx
  10077c:	75 f6                	jne    100774 <readSect+0x68>
  10077e:	5b                   	pop    %ebx
  10077f:	5d                   	pop    %ebp
  100780:	c3                   	ret    
  100781:	8d 76 00             	lea    0x0(%esi),%esi

00100784 <initSeg>:
  100784:	55                   	push   %ebp
  100785:	89 e5                	mov    %esp,%ebp
  100787:	ba 00 ee 10 00       	mov    $0x10ee00,%edx
  10078c:	66 c7 05 08 ee 10 00 	movw   $0xffff,0x10ee08
  100793:	ff ff 
  100795:	66 c7 05 0a ee 10 00 	movw   $0x0,0x10ee0a
  10079c:	00 00 
  10079e:	c6 05 0c ee 10 00 00 	movb   $0x0,0x10ee0c
  1007a5:	c6 05 0d ee 10 00 9a 	movb   $0x9a,0x10ee0d
  1007ac:	c6 05 0e ee 10 00 cf 	movb   $0xcf,0x10ee0e
  1007b3:	c6 05 0f ee 10 00 00 	movb   $0x0,0x10ee0f
  1007ba:	66 c7 05 10 ee 10 00 	movw   $0xffff,0x10ee10
  1007c1:	ff ff 
  1007c3:	66 c7 05 12 ee 10 00 	movw   $0x0,0x10ee12
  1007ca:	00 00 
  1007cc:	c6 05 14 ee 10 00 00 	movb   $0x0,0x10ee14
  1007d3:	c6 05 15 ee 10 00 92 	movb   $0x92,0x10ee15
  1007da:	c6 05 16 ee 10 00 cf 	movb   $0xcf,0x10ee16
  1007e1:	c6 05 17 ee 10 00 00 	movb   $0x0,0x10ee17
  1007e8:	66 c7 05 18 ee 10 00 	movw   $0xffff,0x10ee18
  1007ef:	ff ff 
  1007f1:	66 c7 05 1a ee 10 00 	movw   $0x0,0x10ee1a
  1007f8:	00 00 
  1007fa:	c6 05 1c ee 10 00 00 	movb   $0x0,0x10ee1c
  100801:	c6 05 1d ee 10 00 fa 	movb   $0xfa,0x10ee1d
  100808:	c6 05 1e ee 10 00 cf 	movb   $0xcf,0x10ee1e
  10080f:	c6 05 1f ee 10 00 00 	movb   $0x0,0x10ee1f
  100816:	66 c7 05 20 ee 10 00 	movw   $0xffff,0x10ee20
  10081d:	ff ff 
  10081f:	66 c7 05 22 ee 10 00 	movw   $0x0,0x10ee22
  100826:	00 00 
  100828:	c6 05 24 ee 10 00 00 	movb   $0x0,0x10ee24
  10082f:	c6 05 25 ee 10 00 f2 	movb   $0xf2,0x10ee25
  100836:	c6 05 26 ee 10 00 cf 	movb   $0xcf,0x10ee26
  10083d:	c6 05 27 ee 10 00 00 	movb   $0x0,0x10ee27
  100844:	66 c7 05 28 ee 10 00 	movw   $0x63,0x10ee28
  10084b:	63 00 
  10084d:	b8 40 ee 10 00       	mov    $0x10ee40,%eax
  100852:	66 a3 2a ee 10 00    	mov    %ax,0x10ee2a
  100858:	89 c1                	mov    %eax,%ecx
  10085a:	c1 e9 10             	shr    $0x10,%ecx
  10085d:	88 0d 2c ee 10 00    	mov    %cl,0x10ee2c
  100863:	c6 05 2d ee 10 00 89 	movb   $0x89,0x10ee2d
  10086a:	c6 05 2e ee 10 00 40 	movb   $0x40,0x10ee2e
  100871:	c1 e8 18             	shr    $0x18,%eax
  100874:	a2 2f ee 10 00       	mov    %al,0x10ee2f
  100879:	66 c7 05 2c 24 10 00 	movw   $0x37,0x10242c
  100880:	37 00 
  100882:	66 89 15 2e 24 10 00 	mov    %dx,0x10242e
  100889:	c1 ea 10             	shr    $0x10,%edx
  10088c:	66 89 15 30 24 10 00 	mov    %dx,0x102430
  100893:	b8 2c 24 10 00       	mov    $0x10242c,%eax
  100898:	0f 01 10             	lgdtl  (%eax)
  10089b:	b8 28 00 00 00       	mov    $0x28,%eax
  1008a0:	0f 00 d8             	ltr    %ax
  1008a3:	c7 05 48 ee 10 00 10 	movl   $0x10,0x10ee48
  1008aa:	00 00 00 
  1008ad:	c7 05 44 ee 10 00 2c 	movl   $0x106d2c,0x10ee44
  1008b4:	6d 10 00 
  1008b7:	b8 10 00 00 00       	mov    $0x10,%eax
  1008bc:	8e c0                	mov    %eax,%es
  1008be:	8e d8                	mov    %eax,%ds
  1008c0:	8e e8                	mov    %eax,%gs
  1008c2:	8e e0                	mov    %eax,%fs
  1008c4:	8e d0                	mov    %eax,%ss
  1008c6:	31 c0                	xor    %eax,%eax
  1008c8:	0f 00 d0             	lldt   %ax
  1008cb:	5d                   	pop    %ebp
  1008cc:	c3                   	ret    
  1008cd:	8d 76 00             	lea    0x0(%esi),%esi

001008d0 <enterUserSpace>:
  1008d0:	55                   	push   %ebp
  1008d1:	89 e5                	mov    %esp,%ebp
  1008d3:	b8 23 00 00 00       	mov    $0x23,%eax
  1008d8:	fa                   	cli    
  1008d9:	8e c0                	mov    %eax,%es
  1008db:	8e e0                	mov    %eax,%fs
  1008dd:	8e d8                	mov    %eax,%ds
  1008df:	8e e8                	mov    %eax,%gs
  1008e1:	66 6a 23             	pushw  $0x23
  1008e4:	68 00 00 40 00       	push   $0x400000
  1008e9:	68 02 02 00 00       	push   $0x202
  1008ee:	6a 1b                	push   $0x1b
  1008f0:	ff 75 08             	pushl  0x8(%ebp)
  1008f3:	fb                   	sti    
  1008f4:	cf                   	iret   
  1008f5:	5d                   	pop    %ebp
  1008f6:	c3                   	ret    
  1008f7:	90                   	nop

001008f8 <readseg>:
  1008f8:	55                   	push   %ebp
  1008f9:	89 e5                	mov    %esp,%ebp
  1008fb:	57                   	push   %edi
  1008fc:	56                   	push   %esi
  1008fd:	53                   	push   %ebx
  1008fe:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100901:	8b 7d 10             	mov    0x10(%ebp),%edi
  100904:	8b 75 0c             	mov    0xc(%ebp),%esi
  100907:	01 de                	add    %ebx,%esi
  100909:	89 f8                	mov    %edi,%eax
  10090b:	25 ff 01 00 80       	and    $0x800001ff,%eax
  100910:	78 2a                	js     10093c <readseg+0x44>
  100912:	29 c3                	sub    %eax,%ebx
  100914:	85 ff                	test   %edi,%edi
  100916:	78 31                	js     100949 <readseg+0x51>
  100918:	c1 ff 09             	sar    $0x9,%edi
  10091b:	39 de                	cmp    %ebx,%esi
  10091d:	76 15                	jbe    100934 <readseg+0x3c>
  10091f:	90                   	nop
  100920:	57                   	push   %edi
  100921:	53                   	push   %ebx
  100922:	e8 e5 fd ff ff       	call   10070c <readSect>
  100927:	81 c3 00 02 00 00    	add    $0x200,%ebx
  10092d:	47                   	inc    %edi
  10092e:	58                   	pop    %eax
  10092f:	5a                   	pop    %edx
  100930:	39 de                	cmp    %ebx,%esi
  100932:	77 ec                	ja     100920 <readseg+0x28>
  100934:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100937:	5b                   	pop    %ebx
  100938:	5e                   	pop    %esi
  100939:	5f                   	pop    %edi
  10093a:	5d                   	pop    %ebp
  10093b:	c3                   	ret    
  10093c:	48                   	dec    %eax
  10093d:	0d 00 fe ff ff       	or     $0xfffffe00,%eax
  100942:	40                   	inc    %eax
  100943:	29 c3                	sub    %eax,%ebx
  100945:	85 ff                	test   %edi,%edi
  100947:	79 cf                	jns    100918 <readseg+0x20>
  100949:	81 c7 ff 01 00 00    	add    $0x1ff,%edi
  10094f:	eb c7                	jmp    100918 <readseg+0x20>
  100951:	8d 76 00             	lea    0x0(%esi),%esi

00100954 <loader>:
  100954:	55                   	push   %ebp
  100955:	89 e5                	mov    %esp,%ebp
  100957:	57                   	push   %edi
  100958:	56                   	push   %esi
  100959:	53                   	push   %ebx
  10095a:	83 ec 2c             	sub    $0x2c,%esp
  10095d:	8b 55 08             	mov    0x8(%ebp),%edx
  100960:	8b 42 2c             	mov    0x2c(%edx),%eax
  100963:	66 83 f8 ff          	cmp    $0xffff,%ax
  100967:	0f 84 87 00 00 00    	je     1009f4 <loader+0xa0>
  10096d:	0f b7 c8             	movzwl %ax,%ecx
  100970:	85 c9                	test   %ecx,%ecx
  100972:	74 6e                	je     1009e2 <loader+0x8e>
  100974:	31 ff                	xor    %edi,%edi
  100976:	89 d6                	mov    %edx,%esi
  100978:	eb 07                	jmp    100981 <loader+0x2d>
  10097a:	66 90                	xchg   %ax,%ax
  10097c:	47                   	inc    %edi
  10097d:	39 cf                	cmp    %ecx,%edi
  10097f:	7d 5f                	jge    1009e0 <loader+0x8c>
  100981:	0f b7 46 2a          	movzwl 0x2a(%esi),%eax
  100985:	0f af c7             	imul   %edi,%eax
  100988:	03 46 1c             	add    0x1c(%esi),%eax
  10098b:	01 f0                	add    %esi,%eax
  10098d:	83 38 01             	cmpl   $0x1,(%eax)
  100990:	75 ea                	jne    10097c <loader+0x28>
  100992:	89 4d d0             	mov    %ecx,-0x30(%ebp)
  100995:	8b 50 08             	mov    0x8(%eax),%edx
  100998:	8b 58 10             	mov    0x10(%eax),%ebx
  10099b:	8b 48 14             	mov    0x14(%eax),%ecx
  10099e:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  1009a1:	51                   	push   %ecx
  1009a2:	8b 40 04             	mov    0x4(%eax),%eax
  1009a5:	05 00 92 01 00       	add    $0x19200,%eax
  1009aa:	50                   	push   %eax
  1009ab:	53                   	push   %ebx
  1009ac:	52                   	push   %edx
  1009ad:	89 55 cc             	mov    %edx,-0x34(%ebp)
  1009b0:	e8 43 ff ff ff       	call   1008f8 <readseg>
  1009b5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  1009b8:	29 d8                	sub    %ebx,%eax
  1009ba:	83 c4 10             	add    $0x10,%esp
  1009bd:	85 c0                	test   %eax,%eax
  1009bf:	8b 4d d0             	mov    -0x30(%ebp),%ecx
  1009c2:	7e b8                	jle    10097c <loader+0x28>
  1009c4:	8b 55 cc             	mov    -0x34(%ebp),%edx
  1009c7:	01 d3                	add    %edx,%ebx
  1009c9:	03 55 d4             	add    -0x2c(%ebp),%edx
  1009cc:	39 d3                	cmp    %edx,%ebx
  1009ce:	73 ac                	jae    10097c <loader+0x28>
  1009d0:	43                   	inc    %ebx
  1009d1:	c6 43 ff 00          	movb   $0x0,-0x1(%ebx)
  1009d5:	39 d3                	cmp    %edx,%ebx
  1009d7:	75 f7                	jne    1009d0 <loader+0x7c>
  1009d9:	47                   	inc    %edi
  1009da:	39 cf                	cmp    %ecx,%edi
  1009dc:	7c a3                	jl     100981 <loader+0x2d>
  1009de:	66 90                	xchg   %ax,%ax
  1009e0:	89 f2                	mov    %esi,%edx
  1009e2:	8b 42 18             	mov    0x18(%edx),%eax
  1009e5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1009e8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1009eb:	8d 65 f4             	lea    -0xc(%ebp),%esp
  1009ee:	5b                   	pop    %ebx
  1009ef:	5e                   	pop    %esi
  1009f0:	5f                   	pop    %edi
  1009f1:	5d                   	pop    %ebp
  1009f2:	c3                   	ret    
  1009f3:	90                   	nop
  1009f4:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  1009f7:	83 ec 08             	sub    $0x8,%esp
  1009fa:	68 80 00 00 00       	push   $0x80
  1009ff:	68 84 0e 10 00       	push   $0x100e84
  100a04:	e8 1f 03 00 00       	call   100d28 <abort>
  100a09:	83 c4 10             	add    $0x10,%esp
  100a0c:	b9 ff ff 00 00       	mov    $0xffff,%ecx
  100a11:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100a14:	e9 5b ff ff ff       	jmp    100974 <loader+0x20>
  100a19:	8d 76 00             	lea    0x0(%esi),%esi

00100a1c <loadUMain>:
  100a1c:	55                   	push   %ebp
  100a1d:	89 e5                	mov    %esp,%ebp
  100a1f:	83 ec 18             	sub    $0x18,%esp
  100a22:	68 c9 00 00 00       	push   $0xc9
  100a27:	68 00 80 00 00       	push   $0x8000
  100a2c:	e8 db fc ff ff       	call   10070c <readSect>
  100a31:	50                   	push   %eax
  100a32:	68 00 80 00 00       	push   $0x8000
  100a37:	e8 18 ff ff ff       	call   100954 <loader>
  100a3c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100a3f:	b8 23 00 00 00       	mov    $0x23,%eax
  100a44:	fa                   	cli    
  100a45:	8e c0                	mov    %eax,%es
  100a47:	8e e0                	mov    %eax,%fs
  100a49:	8e d8                	mov    %eax,%ds
  100a4b:	8e e8                	mov    %eax,%gs
  100a4d:	66 6a 23             	pushw  $0x23
  100a50:	68 00 00 40 00       	push   $0x400000
  100a55:	68 02 02 00 00       	push   $0x202
  100a5a:	6a 1b                	push   $0x1b
  100a5c:	ff 75 f4             	pushl  -0xc(%ebp)
  100a5f:	fb                   	sti    
  100a60:	cf                   	iret   
  100a61:	83 c4 10             	add    $0x10,%esp
  100a64:	c9                   	leave  
  100a65:	c3                   	ret    
  100a66:	66 90                	xchg   %ax,%ax

00100a68 <addString2Buff>:
  100a68:	55                   	push   %ebp
  100a69:	89 e5                	mov    %esp,%ebp
  100a6b:	8b 4d 08             	mov    0x8(%ebp),%ecx
  100a6e:	8a 11                	mov    (%ecx),%dl
  100a70:	84 d2                	test   %dl,%dl
  100a72:	74 1b                	je     100a8f <addString2Buff+0x27>
  100a74:	a1 a4 24 10 00       	mov    0x1024a4,%eax
  100a79:	29 c1                	sub    %eax,%ecx
  100a7b:	90                   	nop
  100a7c:	40                   	inc    %eax
  100a7d:	88 90 3f 24 10 00    	mov    %dl,0x10243f(%eax)
  100a83:	8a 14 01             	mov    (%ecx,%eax,1),%dl
  100a86:	84 d2                	test   %dl,%dl
  100a88:	75 f2                	jne    100a7c <addString2Buff+0x14>
  100a8a:	a3 a4 24 10 00       	mov    %eax,0x1024a4
  100a8f:	5d                   	pop    %ebp
  100a90:	c3                   	ret    
  100a91:	8d 76 00             	lea    0x0(%esi),%esi

00100a94 <addCh2Buff>:
  100a94:	55                   	push   %ebp
  100a95:	89 e5                	mov    %esp,%ebp
  100a97:	a1 a4 24 10 00       	mov    0x1024a4,%eax
  100a9c:	8d 50 01             	lea    0x1(%eax),%edx
  100a9f:	89 15 a4 24 10 00    	mov    %edx,0x1024a4
  100aa5:	8b 55 08             	mov    0x8(%ebp),%edx
  100aa8:	88 90 40 24 10 00    	mov    %dl,0x102440(%eax)
  100aae:	5d                   	pop    %ebp
  100aaf:	c3                   	ret    

00100ab0 <addDec2Buff>:
  100ab0:	55                   	push   %ebp
  100ab1:	89 e5                	mov    %esp,%ebp
  100ab3:	56                   	push   %esi
  100ab4:	53                   	push   %ebx
  100ab5:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100ab8:	85 db                	test   %ebx,%ebx
  100aba:	0f 89 92 00 00 00    	jns    100b52 <addDec2Buff+0xa2>
  100ac0:	81 fb 00 00 00 80    	cmp    $0x80000000,%ebx
  100ac6:	74 58                	je     100b20 <addDec2Buff+0x70>
  100ac8:	a1 a4 24 10 00       	mov    0x1024a4,%eax
  100acd:	c6 80 40 24 10 00 2d 	movb   $0x2d,0x102440(%eax)
  100ad4:	40                   	inc    %eax
  100ad5:	f7 db                	neg    %ebx
  100ad7:	a3 a4 24 10 00       	mov    %eax,0x1024a4
  100adc:	83 ec 0c             	sub    $0xc,%esp
  100adf:	b8 67 66 66 66       	mov    $0x66666667,%eax
  100ae4:	f7 eb                	imul   %ebx
  100ae6:	89 d6                	mov    %edx,%esi
  100ae8:	c1 fe 02             	sar    $0x2,%esi
  100aeb:	89 d8                	mov    %ebx,%eax
  100aed:	c1 f8 1f             	sar    $0x1f,%eax
  100af0:	29 c6                	sub    %eax,%esi
  100af2:	56                   	push   %esi
  100af3:	e8 b8 ff ff ff       	call   100ab0 <addDec2Buff>
  100af8:	8b 15 a4 24 10 00    	mov    0x1024a4,%edx
  100afe:	8d 42 01             	lea    0x1(%edx),%eax
  100b01:	a3 a4 24 10 00       	mov    %eax,0x1024a4
  100b06:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  100b09:	01 c0                	add    %eax,%eax
  100b0b:	29 c3                	sub    %eax,%ebx
  100b0d:	83 c3 30             	add    $0x30,%ebx
  100b10:	88 9a 40 24 10 00    	mov    %bl,0x102440(%edx)
  100b16:	83 c4 10             	add    $0x10,%esp
  100b19:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100b1c:	5b                   	pop    %ebx
  100b1d:	5e                   	pop    %esi
  100b1e:	5d                   	pop    %ebp
  100b1f:	c3                   	ret    
  100b20:	8b 1d a4 24 10 00    	mov    0x1024a4,%ebx
  100b26:	8d 43 01             	lea    0x1(%ebx),%eax
  100b29:	b2 2d                	mov    $0x2d,%dl
  100b2b:	b9 91 0e 10 00       	mov    $0x100e91,%ecx
  100b30:	29 d9                	sub    %ebx,%ecx
  100b32:	66 90                	xchg   %ax,%ax
  100b34:	89 c3                	mov    %eax,%ebx
  100b36:	88 90 3f 24 10 00    	mov    %dl,0x10243f(%eax)
  100b3c:	40                   	inc    %eax
  100b3d:	8a 54 01 ff          	mov    -0x1(%ecx,%eax,1),%dl
  100b41:	84 d2                	test   %dl,%dl
  100b43:	75 ef                	jne    100b34 <addDec2Buff+0x84>
  100b45:	89 1d a4 24 10 00    	mov    %ebx,0x1024a4
  100b4b:	8d 65 f8             	lea    -0x8(%ebp),%esp
  100b4e:	5b                   	pop    %ebx
  100b4f:	5e                   	pop    %esi
  100b50:	5d                   	pop    %ebp
  100b51:	c3                   	ret    
  100b52:	74 c5                	je     100b19 <addDec2Buff+0x69>
  100b54:	eb 86                	jmp    100adc <addDec2Buff+0x2c>
  100b56:	66 90                	xchg   %ax,%ax

00100b58 <addHex2Buff>:
  100b58:	55                   	push   %ebp
  100b59:	89 e5                	mov    %esp,%ebp
  100b5b:	8b 45 08             	mov    0x8(%ebp),%eax
  100b5e:	85 c0                	test   %eax,%eax
  100b60:	75 02                	jne    100b64 <addHex2Buff+0xc>
  100b62:	5d                   	pop    %ebp
  100b63:	c3                   	ret    
  100b64:	5d                   	pop    %ebp
  100b65:	eb 01                	jmp    100b68 <addHex2Buff.part.1>
  100b67:	90                   	nop

00100b68 <addHex2Buff.part.1>:
  100b68:	55                   	push   %ebp
  100b69:	89 e5                	mov    %esp,%ebp
  100b6b:	53                   	push   %ebx
  100b6c:	83 ec 10             	sub    $0x10,%esp
  100b6f:	89 c3                	mov    %eax,%ebx
  100b71:	89 c2                	mov    %eax,%edx
  100b73:	c1 ea 04             	shr    $0x4,%edx
  100b76:	52                   	push   %edx
  100b77:	e8 dc ff ff ff       	call   100b58 <addHex2Buff>
  100b7c:	89 d8                	mov    %ebx,%eax
  100b7e:	83 e0 0f             	and    $0xf,%eax
  100b81:	83 c4 10             	add    $0x10,%esp
  100b84:	8b 15 a4 24 10 00    	mov    0x1024a4,%edx
  100b8a:	8d 4a 01             	lea    0x1(%edx),%ecx
  100b8d:	89 0d a4 24 10 00    	mov    %ecx,0x1024a4
  100b93:	83 f8 09             	cmp    $0x9,%eax
  100b96:	76 10                	jbe    100ba8 <addHex2Buff.part.1+0x40>
  100b98:	83 c0 57             	add    $0x57,%eax
  100b9b:	88 82 40 24 10 00    	mov    %al,0x102440(%edx)
  100ba1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100ba4:	c9                   	leave  
  100ba5:	c3                   	ret    
  100ba6:	66 90                	xchg   %ax,%ax
  100ba8:	83 c0 30             	add    $0x30,%eax
  100bab:	88 82 40 24 10 00    	mov    %al,0x102440(%edx)
  100bb1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100bb4:	c9                   	leave  
  100bb5:	c3                   	ret    
  100bb6:	66 90                	xchg   %ax,%ax

00100bb8 <Log>:
  100bb8:	55                   	push   %ebp
  100bb9:	89 e5                	mov    %esp,%ebp
  100bbb:	57                   	push   %edi
  100bbc:	56                   	push   %esi
  100bbd:	53                   	push   %ebx
  100bbe:	83 ec 0c             	sub    $0xc,%esp
  100bc1:	8b 5d 08             	mov    0x8(%ebp),%ebx
  100bc4:	8d 75 0c             	lea    0xc(%ebp),%esi
  100bc7:	8a 03                	mov    (%ebx),%al
  100bc9:	84 c0                	test   %al,%al
  100bcb:	74 21                	je     100bee <Log+0x36>
  100bcd:	3c 25                	cmp    $0x25,%al
  100bcf:	74 67                	je     100c38 <Log+0x80>
  100bd1:	8b 15 a4 24 10 00    	mov    0x1024a4,%edx
  100bd7:	8d 4a 01             	lea    0x1(%edx),%ecx
  100bda:	89 0d a4 24 10 00    	mov    %ecx,0x1024a4
  100be0:	88 82 40 24 10 00    	mov    %al,0x102440(%edx)
  100be6:	8a 43 01             	mov    0x1(%ebx),%al
  100be9:	43                   	inc    %ebx
  100bea:	84 c0                	test   %al,%al
  100bec:	75 df                	jne    100bcd <Log+0x15>
  100bee:	a1 a4 24 10 00       	mov    0x1024a4,%eax
  100bf3:	c6 80 40 24 10 00 00 	movb   $0x0,0x102440(%eax)
  100bfa:	85 c0                	test   %eax,%eax
  100bfc:	7e 1e                	jle    100c1c <Log+0x64>
  100bfe:	31 db                	xor    %ebx,%ebx
  100c00:	83 ec 0c             	sub    $0xc,%esp
  100c03:	0f be 83 40 24 10 00 	movsbl 0x102440(%ebx),%eax
  100c0a:	50                   	push   %eax
  100c0b:	e8 54 fa ff ff       	call   100664 <putChar>
  100c10:	43                   	inc    %ebx
  100c11:	83 c4 10             	add    $0x10,%esp
  100c14:	39 1d a4 24 10 00    	cmp    %ebx,0x1024a4
  100c1a:	7f e4                	jg     100c00 <Log+0x48>
  100c1c:	83 ec 0c             	sub    $0xc,%esp
  100c1f:	6a 0a                	push   $0xa
  100c21:	e8 3e fa ff ff       	call   100664 <putChar>
  100c26:	c7 05 a4 24 10 00 00 	movl   $0x0,0x1024a4
  100c2d:	00 00 00 
  100c30:	8d 65 f4             	lea    -0xc(%ebp),%esp
  100c33:	5b                   	pop    %ebx
  100c34:	5e                   	pop    %esi
  100c35:	5f                   	pop    %edi
  100c36:	5d                   	pop    %ebp
  100c37:	c3                   	ret    
  100c38:	8a 43 01             	mov    0x1(%ebx),%al
  100c3b:	3c 64                	cmp    $0x64,%al
  100c3d:	74 5e                	je     100c9d <Log+0xe5>
  100c3f:	7f 33                	jg     100c74 <Log+0xbc>
  100c41:	3c 25                	cmp    $0x25,%al
  100c43:	0f 84 b3 00 00 00    	je     100cfc <Log+0x144>
  100c49:	3c 63                	cmp    $0x63,%al
  100c4b:	75 4a                	jne    100c97 <Log+0xdf>
  100c4d:	8b 16                	mov    (%esi),%edx
  100c4f:	a1 a4 24 10 00       	mov    0x1024a4,%eax
  100c54:	8d 48 01             	lea    0x1(%eax),%ecx
  100c57:	89 0d a4 24 10 00    	mov    %ecx,0x1024a4
  100c5d:	88 90 40 24 10 00    	mov    %dl,0x102440(%eax)
  100c63:	8a 43 02             	mov    0x2(%ebx),%al
  100c66:	83 c6 04             	add    $0x4,%esi
  100c69:	83 c3 02             	add    $0x2,%ebx
  100c6c:	e9 58 ff ff ff       	jmp    100bc9 <Log+0x11>
  100c71:	8d 76 00             	lea    0x0(%esi),%esi
  100c74:	3c 73                	cmp    $0x73,%al
  100c76:	74 47                	je     100cbf <Log+0x107>
  100c78:	3c 78                	cmp    $0x78,%al
  100c7a:	75 1b                	jne    100c97 <Log+0xdf>
  100c7c:	89 f0                	mov    %esi,%eax
  100c7e:	83 c6 04             	add    $0x4,%esi
  100c81:	8b 00                	mov    (%eax),%eax
  100c83:	85 c0                	test   %eax,%eax
  100c85:	74 21                	je     100ca8 <Log+0xf0>
  100c87:	e8 dc fe ff ff       	call   100b68 <addHex2Buff.part.1>
  100c8c:	8a 43 02             	mov    0x2(%ebx),%al
  100c8f:	83 c3 02             	add    $0x2,%ebx
  100c92:	e9 32 ff ff ff       	jmp    100bc9 <Log+0x11>
  100c97:	43                   	inc    %ebx
  100c98:	e9 2c ff ff ff       	jmp    100bc9 <Log+0x11>
  100c9d:	89 f0                	mov    %esi,%eax
  100c9f:	83 c6 04             	add    $0x4,%esi
  100ca2:	8b 00                	mov    (%eax),%eax
  100ca4:	85 c0                	test   %eax,%eax
  100ca6:	75 6e                	jne    100d16 <Log+0x15e>
  100ca8:	a1 a4 24 10 00       	mov    0x1024a4,%eax
  100cad:	8d 50 01             	lea    0x1(%eax),%edx
  100cb0:	89 15 a4 24 10 00    	mov    %edx,0x1024a4
  100cb6:	c6 80 40 24 10 00 30 	movb   $0x30,0x102440(%eax)
  100cbd:	eb cd                	jmp    100c8c <Log+0xd4>
  100cbf:	8d 4e 04             	lea    0x4(%esi),%ecx
  100cc2:	8b 36                	mov    (%esi),%esi
  100cc4:	8a 16                	mov    (%esi),%dl
  100cc6:	84 d2                	test   %dl,%dl
  100cc8:	74 25                	je     100cef <Log+0x137>
  100cca:	8b 3d a4 24 10 00    	mov    0x1024a4,%edi
  100cd0:	8d 47 01             	lea    0x1(%edi),%eax
  100cd3:	29 fe                	sub    %edi,%esi
  100cd5:	8d 76 00             	lea    0x0(%esi),%esi
  100cd8:	89 c7                	mov    %eax,%edi
  100cda:	88 90 3f 24 10 00    	mov    %dl,0x10243f(%eax)
  100ce0:	40                   	inc    %eax
  100ce1:	8a 54 06 ff          	mov    -0x1(%esi,%eax,1),%dl
  100ce5:	84 d2                	test   %dl,%dl
  100ce7:	75 ef                	jne    100cd8 <Log+0x120>
  100ce9:	89 3d a4 24 10 00    	mov    %edi,0x1024a4
  100cef:	8a 43 02             	mov    0x2(%ebx),%al
  100cf2:	89 ce                	mov    %ecx,%esi
  100cf4:	83 c3 02             	add    $0x2,%ebx
  100cf7:	e9 cd fe ff ff       	jmp    100bc9 <Log+0x11>
  100cfc:	a1 a4 24 10 00       	mov    0x1024a4,%eax
  100d01:	8d 50 01             	lea    0x1(%eax),%edx
  100d04:	89 15 a4 24 10 00    	mov    %edx,0x1024a4
  100d0a:	c6 80 40 24 10 00 25 	movb   $0x25,0x102440(%eax)
  100d11:	e9 76 ff ff ff       	jmp    100c8c <Log+0xd4>
  100d16:	83 ec 0c             	sub    $0xc,%esp
  100d19:	50                   	push   %eax
  100d1a:	e8 91 fd ff ff       	call   100ab0 <addDec2Buff>
  100d1f:	83 c4 10             	add    $0x10,%esp
  100d22:	e9 65 ff ff ff       	jmp    100c8c <Log+0xd4>
  100d27:	90                   	nop

00100d28 <abort>:
  100d28:	55                   	push   %ebp
  100d29:	89 e5                	mov    %esp,%ebp
  100d2b:	57                   	push   %edi
  100d2c:	56                   	push   %esi
  100d2d:	53                   	push   %ebx
  100d2e:	83 ec 1c             	sub    $0x1c,%esp
  100d31:	8b 55 08             	mov    0x8(%ebp),%edx
  100d34:	fa                   	cli    
  100d35:	8a 02                	mov    (%edx),%al
  100d37:	b9 32 23 10 00       	mov    $0x102332,%ecx
  100d3c:	84 c0                	test   %al,%al
  100d3e:	74 0b                	je     100d4b <abort+0x23>
  100d40:	41                   	inc    %ecx
  100d41:	42                   	inc    %edx
  100d42:	88 41 ff             	mov    %al,-0x1(%ecx)
  100d45:	8a 02                	mov    (%edx),%al
  100d47:	84 c0                	test   %al,%al
  100d49:	75 f5                	jne    100d40 <abort+0x18>
  100d4b:	c6 01 3a             	movb   $0x3a,(%ecx)
  100d4e:	bb c5 24 10 00       	mov    $0x1024c5,%ebx
  100d53:	be 0a 00 00 00       	mov    $0xa,%esi
  100d58:	bf 67 66 66 66       	mov    $0x66666667,%edi
  100d5d:	4b                   	dec    %ebx
  100d5e:	8b 45 0c             	mov    0xc(%ebp),%eax
  100d61:	99                   	cltd   
  100d62:	f7 fe                	idiv   %esi
  100d64:	8d 42 30             	lea    0x30(%edx),%eax
  100d67:	88 45 e7             	mov    %al,-0x19(%ebp)
  100d6a:	88 03                	mov    %al,(%ebx)
  100d6c:	89 f8                	mov    %edi,%eax
  100d6e:	f7 6d 0c             	imull  0xc(%ebp)
  100d71:	c1 fa 02             	sar    $0x2,%edx
  100d74:	8b 45 0c             	mov    0xc(%ebp),%eax
  100d77:	c1 f8 1f             	sar    $0x1f,%eax
  100d7a:	29 c2                	sub    %eax,%edx
  100d7c:	89 55 0c             	mov    %edx,0xc(%ebp)
  100d7f:	75 dc                	jne    100d5d <abort+0x35>
  100d81:	41                   	inc    %ecx
  100d82:	41                   	inc    %ecx
  100d83:	43                   	inc    %ebx
  100d84:	8a 45 e7             	mov    -0x19(%ebp),%al
  100d87:	88 41 ff             	mov    %al,-0x1(%ecx)
  100d8a:	8a 03                	mov    (%ebx),%al
  100d8c:	88 45 e7             	mov    %al,-0x19(%ebp)
  100d8f:	84 c0                	test   %al,%al
  100d91:	75 ef                	jne    100d82 <abort+0x5a>
  100d93:	c6 01 0a             	movb   $0xa,(%ecx)
  100d96:	0f be 05 20 23 10 00 	movsbl 0x102320,%eax
  100d9d:	84 c0                	test   %al,%al
  100d9f:	74 1b                	je     100dbc <abort+0x94>
  100da1:	bb 20 23 10 00       	mov    $0x102320,%ebx
  100da6:	83 ec 0c             	sub    $0xc,%esp
  100da9:	50                   	push   %eax
  100daa:	e8 b5 f8 ff ff       	call   100664 <putChar>
  100daf:	43                   	inc    %ebx
  100db0:	0f be 03             	movsbl (%ebx),%eax
  100db3:	83 c4 10             	add    $0x10,%esp
  100db6:	84 c0                	test   %al,%al
  100db8:	75 ec                	jne    100da6 <abort+0x7e>
  100dba:	66 90                	xchg   %ax,%ax
  100dbc:	f4                   	hlt    
  100dbd:	eb fd                	jmp    100dbc <abort+0x94>
  100dbf:	90                   	nop

00100dc0 <kEntry>:
  100dc0:	55                   	push   %ebp
  100dc1:	89 e5                	mov    %esp,%ebp
  100dc3:	83 ec 08             	sub    $0x8,%esp
  100dc6:	e8 59 f8 ff ff       	call   100624 <initSerial>
  100dcb:	e8 88 f2 ff ff       	call   100058 <initTimer>
  100dd0:	e8 17 f5 ff ff       	call   1002ec <initIdt>
  100dd5:	e8 26 f2 ff ff       	call   100000 <initIntr>
  100dda:	e8 a5 f9 ff ff       	call   100784 <initSeg>
  100ddf:	e8 38 fc ff ff       	call   100a1c <loadUMain>
  100de4:	eb fe                	jmp    100de4 <kEntry+0x24>

00100de6 <no0>:
  100de6:	6a 00                	push   $0x0
  100de8:	6a 00                	push   $0x0
  100dea:	eb 64                	jmp    100e50 <asmDoIrq>

00100dec <no1>:
  100dec:	6a 00                	push   $0x0
  100dee:	6a 01                	push   $0x1
  100df0:	eb 5e                	jmp    100e50 <asmDoIrq>

00100df2 <no2>:
  100df2:	6a 00                	push   $0x0
  100df4:	6a 02                	push   $0x2
  100df6:	eb 58                	jmp    100e50 <asmDoIrq>

00100df8 <no3>:
  100df8:	6a 00                	push   $0x0
  100dfa:	6a 03                	push   $0x3
  100dfc:	eb 52                	jmp    100e50 <asmDoIrq>

00100dfe <no4>:
  100dfe:	6a 00                	push   $0x0
  100e00:	6a 04                	push   $0x4
  100e02:	eb 4c                	jmp    100e50 <asmDoIrq>

00100e04 <no5>:
  100e04:	6a 00                	push   $0x0
  100e06:	6a 05                	push   $0x5
  100e08:	eb 46                	jmp    100e50 <asmDoIrq>

00100e0a <no6>:
  100e0a:	6a 00                	push   $0x0
  100e0c:	6a 06                	push   $0x6
  100e0e:	eb 40                	jmp    100e50 <asmDoIrq>

00100e10 <no7>:
  100e10:	6a 00                	push   $0x0
  100e12:	6a 07                	push   $0x7
  100e14:	eb 3a                	jmp    100e50 <asmDoIrq>

00100e16 <no8>:
  100e16:	6a 08                	push   $0x8
  100e18:	eb 36                	jmp    100e50 <asmDoIrq>

00100e1a <no9>:
  100e1a:	6a 00                	push   $0x0
  100e1c:	6a 09                	push   $0x9
  100e1e:	eb 30                	jmp    100e50 <asmDoIrq>

00100e20 <no10>:
  100e20:	6a 0a                	push   $0xa
  100e22:	eb 2c                	jmp    100e50 <asmDoIrq>

00100e24 <no11>:
  100e24:	6a 0b                	push   $0xb
  100e26:	eb 28                	jmp    100e50 <asmDoIrq>

00100e28 <no12>:
  100e28:	6a 0c                	push   $0xc
  100e2a:	eb 24                	jmp    100e50 <asmDoIrq>

00100e2c <no13>:
  100e2c:	6a 0d                	push   $0xd
  100e2e:	eb 20                	jmp    100e50 <asmDoIrq>

00100e30 <no14>:
  100e30:	6a 0e                	push   $0xe
  100e32:	eb 1c                	jmp    100e50 <asmDoIrq>

00100e34 <intr0>:
  100e34:	6a 00                	push   $0x0
  100e36:	68 e8 03 00 00       	push   $0x3e8
  100e3b:	eb 13                	jmp    100e50 <asmDoIrq>

00100e3d <irqEmpty>:
  100e3d:	6a 00                	push   $0x0
  100e3f:	6a ff                	push   $0xffffffff
  100e41:	eb 0d                	jmp    100e50 <asmDoIrq>

00100e43 <irqGProtectFault>:
  100e43:	6a 0d                	push   $0xd
  100e45:	eb 09                	jmp    100e50 <asmDoIrq>

00100e47 <irqSyscall>:
  100e47:	6a 00                	push   $0x0
  100e49:	68 80 00 00 00       	push   $0x80
  100e4e:	eb 00                	jmp    100e50 <asmDoIrq>

00100e50 <asmDoIrq>:
  100e50:	fa                   	cli    
  100e51:	60                   	pusha  
  100e52:	54                   	push   %esp
  100e53:	e8 e8 f3 ff ff       	call   100240 <irqHandle>
  100e58:	83 c4 04             	add    $0x4,%esp
  100e5b:	61                   	popa   
  100e5c:	83 c4 04             	add    $0x4,%esp
  100e5f:	83 c4 04             	add    $0x4,%esp
  100e62:	fb                   	sti    
  100e63:	cf                   	iret   
