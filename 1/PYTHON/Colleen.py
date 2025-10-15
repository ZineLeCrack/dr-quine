# python

def ft_printf(str):
	for i in range(len(str)):
		if i != 0 and str[i - 1] == '!' and (str[i] == 'n' or str[i] == 't' or str[i] == 's'):
			continue
		if str[i] == '!':
			if str[i + 1] == 'n':
				print(chr(10), end='')
			elif str[i + 1] == 't':
				print(chr(9), end='')
			elif str[i + 1] == 's':
				print(chr(34) + str + chr(34), end='')
			else:
				print(str[i], end='')
		else:
			print(str[i], end='')

str = "# python!n!ndef ft_printf(str):!n!tfor i in range(len(str)):!n!t!tif i != 0 and str[i - 1] == '!' and (str[i] == 'n' or str[i] == 't' or str[i] == 's'):!n!t!t!tcontinue!n!t!tif str[i] == '!':!n!t!t!tif str[i + 1] == 'n':!n!t!t!t!tprint(chr(10), end='')!n!t!t!telif str[i + 1] == 't':!n!t!t!t!tprint(chr(9), end='')!n!t!t!telif str[i + 1] == 's':!n!t!t!t!tprint(chr(34) + str + chr(34), end='')!n!t!t!telse:!n!t!t!t!tprint(str[i], end='')!n!t!telse:!n!t!t!tprint(str[i], end='')!n!nstr = !s!nft_printf(str)!n"
ft_printf(str)
