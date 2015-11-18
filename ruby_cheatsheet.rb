# main menu
# have a case statement for main menu options
# command line menu
# ide menu
# search menu

def main_menu
  puts "My Cheatsheet"
  puts "1. Command Line"
  puts "2. IDE"
  puts "3. Search"
  puts "4. Quit"
  puts "Make a selection(1-4): "
end

def choice
  selection = gets.to_i
  case selection
   when 1
     command_line_menu
   when 2
     ide_menu
   when 3
     search
  end
end

def command_line_menu
  puts "Command Line Menu:"
  puts "1. cd - change directory - cd learning_ruby"
  puts "2. ls - list directory - ls"
  puts "3. mkdir - make directory(new folder) - mkdir learning_ruby"
  puts "4. Main Menu"
  puts "Make a selection(1-4): "
#  cmd_line_choice
end

def cmd_line_choice
  selection = gets.to_i
  case selection
    when 1
      puts `man cd`
    when 2
      puts `man ls`
    when 3
      puts `man mkdir`
  end
end

def ide_menu
  puts "IDE Menu:"
  puts "1. moves lines up and down"
  puts "2. comments out(and comments out all selected lines when multiple lines are selected)"
  puts "3. saves file"
  puts "4. Main Menu"
  puts "Make a selection(1-4): "
#  ide_choice
end

def ide_choice
  selection = gets.to_i
  case selection
    when 1
      puts "CTRL + CMD + arrow keys"
    when 2
      puts "CMD + /"
    when 3
      puts "CMD + s"
  end
end


def search_input
  puts "Enter search term: "
  user_search = gets.strip
  puts `man #{user_search}`
end

input = 0
# this while loop is for the main menu
while input != 4
  main_menu
  input = gets.to_i
  # these case statements are for the main menu
  case input
   when 1
     cmd_line_selection = 0
     # this while loop is for the cmd line menu
     while cmd_line_selection != 4
       command_line_menu
       cmd_line_selection = gets.to_i
       # these case statements are for the cmdline man pages
       case cmd_line_selection
       when 1
           puts `man cd`
         when 2
           puts `man ls`
         when 3
           puts `man mkdir`
       end
      end
   when 2
     ide_selection = 0
     # this while loop is for the ide menu
     while ide_selection != 4
       ide_menu
       ide_selection = gets.to_i
       # these case statements are for the ide information
       case ide_selection
         when 1
           puts "CTRL + CMD + arrow keys"
         when 2
           puts "CMD + /"
         when 3
           puts "CMD + s"
       end
     end
   when 3
     search_choice = 0
     while search_choice != "n"
       puts "Do you want to search? (y/n)"
       search_choice = gets.strip
       case search_choice
          when "y"
          search_input
          # otherwise it goes back to main menu
        end
    end
  end
end
