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
	puts text_array
	text_array
end

def sort_alphabetically(text_array)
	text_array = text_array.sort
end

#TURN SORTED NAMES INTO NUMBERS (ADD EACH LETTER VALUE TOGETHER)

#MULTIPLY NUMBER BY INDEX +1 AND SUM TOTAL OF ALL

alphabet_hash = {"A" => 1, "B" => 2, "C" => 3, "D" => 4, "E" => 5, "F" => 6, "G" => 7, "H" => 8, "I" => 9, "J" => 10, "K" => 11, "L" => 12, "M" => 13, "N" => 14, "O" => 15, "P" => 16, "Q" => 17, "R" => 18, "S" => 19, "T" => 20, "U" => 21, "V" => 22, "W" => 23, "X" => 24, "Y" => 25, "Z" => 26}





#RUNNER
name_array = sort_alphabetically(remove_character(read_loaded_txt_file_to_array(load_txt_file('PE_problem22_names.txt'))))