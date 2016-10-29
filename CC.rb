def caesar_cipher(cipher, factor)
	
	cipher.each_char {|char|
		if ("A".."Z")===char
			value = char.ord+factor
			value -=26 if value > 90
		elsif ("a".."z")===char
			value = char.ord+factor
			value -=26 if value > 122
		else
			value = char.ord
		end
	
		print "#{value.chr}"
	}
	
end
	
	
caesar_cipher("What a string!", 5)