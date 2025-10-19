# Grace
STR = "# Grace%cSTR = %c%s%c%cPRINT = %cf.write(STR %c (10, 34, STR, 34, 10, 34, 37, 34, 10, 34, 34, 10, 10))%c%cRUN = %cf = open('Grace_kid.py', 'w'); exec(PRINT); f.close()%c%cexec(RUN)%c"
PRINT = "f.write(STR % (10, 34, STR, 34, 10, 34, 37, 34, 10, 34, 34, 10, 10))"
RUN = "f = open('Grace_kid.py', 'w'); exec(PRINT); f.close()"
exec(RUN)
