class CLI
    def run
        system('clear')
        greeting
        menu
        end_program
    end

    def greeting
        puts "Welcom to the Covid-19 CLI Tracker!"
    end

    def end_program
        puts "See you later!"
    end

    def menu
        #list options
        list_options
        #ask the user which one does he/she want?
        puts "Which one do you prefer?"
        input = gets.chomp
    end

    def list_options
        puts "1. "
        puts "2. "
        puts "3. "
    end
   
end