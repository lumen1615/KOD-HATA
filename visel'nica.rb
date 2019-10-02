#Encoding: utf-8 
def clear
	system 'clear'
end
def menu
		puts"\t\t\t\t   МЕНЮ"
		puts"\t\t\t 1. Играть"
		puts"\t\t\t 2. Инструкция"
		puts"\t\t\t 3. Выйти"
end
def level_com
		puts"\t\t\t\t   ВЫБЕРИТЕ УРОВЕНЬ СЛОЖНОСТИ "
		puts"\t\t\t 1. Легче лёгкого"
		puts"\t\t\t 2. Глумление на лёгком режиме"
		puts"\t\t\t 3. Сложнее сложного"
		puts"\t\t\t 4. Хардкор"
end
def a_game
	level_com
	cho_diff = gets.to_i
		case cho_diff
			when 1			
				heal = 10
				clear				
			when 2
				heal = 7
				clear				
			when 3			
				heal = 3
				clear	
			when 4
				heal = 1
				clear
			end
		phras = ["Блин","Вот чёрт","Да ладно","Ну хватит"]
words = ["Welcome", "love", "to", "world"]
word = words[rand(words.size)]
use_word = []
us_wo = ""
	for i in 0..word.size-1
		use_word[i] = " - "
		print use_word[i]
	end
	print "\n"	
	puts "Введите свой вариант буквы"
	while heal != 0 || word == use_word do
	use_char = gets.to_s.delete("\n")
		
			if word.rindex("#{use_char}")
				puts "Это правильная буква"
				use_word[word.rindex("#{use_char}")]=word[word.rindex("#{use_char}")]
				
			else
				puts phras[rand(phras.size)]
				heal=heal-1
				
			end
			
		
		puts "Попробую ещё раз..."
		if heal == 0
			clear
			print "\t\t\t\tGAMEOVER\n"
			end
			
		if use_word==word.each_char.map(&:to_s)
			clear
			print "\t\t\t\tЙОООООУУУ, ДА ТЫ КАЖЕТСЯ ВЫИГРАЛ!!!\n"
			end
		end		
end
def instruction
				
end
def exit
	system 'exit'

end
print"Нажмите клавишу Enter"
	
intr = gets.to_s.delete("\n")
heal = 5

	while intr != 'END' do
		menu
		cho_menu = gets.to_i
			case cho_menu
			when 1
			clear
			 a_game
			when 2
			clear
			 instruction
			else 3
			 exit
			end
			intr = gets.to_s
		end
