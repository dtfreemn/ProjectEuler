#load in .txt file
def load_txt_file(file)
	text_array = File.open("#{file}")
end

#read .txt file to split array by word
def read_loaded_txt_file_to_array(file)
	text_array = file.read.split(",")
end

#remove character from text, double quotes in this case
def remove_character(text_array)
	text_array.each do |word|
		word.delete!('"')
	end
	text_array
end

def sort_alphabetically(text_array)
	text_array = text_array.sort
end

#TURN SORTED NAMES INTO NUMBERS (ADD EACH LETTER VALUE TOGETHER)
def letters_to_numbers(text_array, alphabet_hash)
	i = 0
	new_name = 0
	new_array =[]
	
	text_array.each do |name|
		name.each_char do |char|
			new_name += alphabet_hash[char]
			puts "#{char} equals #{alphabet_hash[char]}"
		end
		puts "#{name} in numbers equals #{new_name}"
		new_array << new_name
		new_name = 0
	end
	new_array
end

#MULTIPLY NUMBER BY INDEX +1 AND SUM TOTAL OF ALL
def multiply_numname_by_index(numname_array)
	final_sum = 0
	
	numname_array.each_with_index do |numname, i|
		puts "Multiplying #{numname} times #{i+1}"
		final_sum += (numname * (i + 1))
		puts "Final sum now equals #{final_sum}"
	end
	final_sum
end

alphabet_hash = {"A" => 1, "B" => 2, "C" => 3, "D" => 4, "E" => 5, "F" => 6, "G" => 7, "H" => 8, "I" => 9, "J" => 10, "K" => 11, "L" => 12, "M" => 13, "N" => 14, "O" => 15, "P" => 16, "Q" => 17, "R" => 18, "S" => 19, "T" => 20, "U" => 21, "V" => 22, "W" => 23, "X" => 24, "Y" => 25, "Z" => 26}





#RUNNER
file = load_txt_file('PE_problem22_names.txt')
read_file = read_loaded_txt_file_to_array(file)
no_quotes = remove_character(read_file)
sorted_name_list = sort_alphabetically(no_quotes)
names_as_numbers = letters_to_numbers(sorted_name_list, alphabet_hash)
puts multiply_numname_by_index(names_as_numbers)
