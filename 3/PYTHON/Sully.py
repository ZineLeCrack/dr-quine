import os, sys

x = 5
if x > 0:
	x -= 1
	filename = 'Sully_' + str(x) + '.py'
	f = open(filename, 'w')
	code = "import os, sys%c%cx = %c%cif x > 0:%c%cx -= 1%c%cfilename = 'Sully_' + str(x) + '.py'%c%cf = open(filename, 'w')%c%ccode = %c%s%c%c%cf.write(code %c (10, 10, 48 + x, 10, 10, 9, 10, 9, 10, 9, 10, 9, 34, code, 34, 10, 9, 37, 10, 9, 10, 9, 10))%c%cf.close()%c%cos.system(sys.executable + ' ' + filename)%c"
	f.write(code % (10, 10, 48 + x, 10, 10, 9, 10, 9, 10, 9, 10, 9, 34, code, 34, 10, 9, 37, 10, 9, 10, 9, 10))
	f.close()
	os.system(sys.executable + ' ' + filename)
