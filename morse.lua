-- script for translating from morse code to english


function main()

	local encrypted
	local decrypted = ''

	local morse = {
		['.-'] = 'A',
		['-...'] = 'B',
		['-.-.'] = 'C',
		['-..'] = 'D',
		['.'] = 'E',
		['..-.'] = 'F',
		['--.'] = 'G',
		['....'] = 'H',
		['..'] = 'I',
		['.---'] = 'J',
		['-.-'] = 'K',
		['.-..'] = 'L',
		['--'] = 'M',
		['-.'] = 'N',
		['---'] = 'O',
		['.--.'] = 'P',
		['--.-'] = 'Q',
		['.-.'] = 'R',
		['...'] = 'S',
		['-'] = 'T',
		['..-'] = 'U',
		['...-'] = 'V',
		['.--'] = 'W',
		['-..-'] = 'X',
		['-.--'] = 'Y',
		['--..'] = 'Z',

		['.----'] = '1',
		['..---'] = '2',
		['...--'] = '3',
		['....-'] = '4',
		['.....'] = '5',
		['-....'] = '6',
		['--...'] = '7',
		['---..'] = '8',
		['----.'] = '9',
		['-----'] = '0'
	}

	io.write("String to decrypt: ")
	
	encrypted = io.read("*l")
	

	for c in string.gmatch(encrypted, "[.-]+") do
		if morse[c] == nil then
			decrypted = decrypted .. 'UNK'
		else
			decrypted = decrypted .. morse[c]

		end
	end

	print(decrypted)


end

main()
