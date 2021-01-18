ca65 HEADER.asm -g
ca65 bank_00.asm -g
ca65 bank_01.asm -g
ca65 bank_02.asm -g
ca65 bank_0F.asm -g

ld65 -C nes.cfg HEADER.o bank_00.o bank_01.o bank_02.o bank_0F.o -m mapfile.txt -Ln labels.txt -o Jiggers.nes --dbgfile Jiggers.dbg

@del *.o

@echo.

@del *.bin

@pause