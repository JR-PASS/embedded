	AREA Reset,DATA,READONLY  ;Reset为默认的入口地址
	DCD 0X12345678            ;程序从0x80000000开始运行，
		                      ;而系统将之后四个字节内容分给了堆栈指针
							  ;所以定义0x12345678方便观察
	DCD Reset_Handler         ;定义一个标号，作为后面的输出
	AREA CODE_SEGMET,CODE,READONLY
	ENTRY
Reset_Handler  proc
	export Reset_Handler    [weak]
	MOV R0,#0;最终结果保存到R0
	MOV R1,#10;R1从10取到0
start
	ADD R0,R0,R1
	SUBS R1,R1,#1
	BNE start;如果R1不为0则继续加
	ENDP
	END