	AREA Reset,DATA,READONLY  ;ResetΪĬ�ϵ���ڵ�ַ
	DCD 0X12345678            ;�����0x80000000��ʼ���У�
		                      ;��ϵͳ��֮���ĸ��ֽ����ݷָ��˶�ջָ��
							  ;���Զ���0x12345678����۲�
	DCD Reset_Handler         ;����һ����ţ���Ϊ��������
	AREA CODE_SEGMET,CODE,READONLY
	ENTRY
Reset_Handler  proc
	export Reset_Handler    [weak]
	MOV R0,#0;���ս�����浽R0
	MOV R1,#10;R1��10ȡ��0
start
	ADD R0,R0,R1
	SUBS R1,R1,#1
	BNE start;���R1��Ϊ0�������
	ENDP
	END