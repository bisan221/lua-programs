-- caeser cipher breaker

function main()

	local encrypted

	io.write("String to decrypt: ")
	encrypted = io.read("*l")

	for i=0,25 do
		local decrypted = {}
		for c=1, #encrypted do
			local code = (string.byte(encrypted, c) + i - string.byte('a')) % 26 + string.byte('a')
			decrypted[c] = string.char(code)
		end
		print(table.concat(decrypted, ''))

	end

end

main()
