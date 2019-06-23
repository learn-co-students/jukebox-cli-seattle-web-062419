songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:\n
  - help : displays this help message\n
  - list : displays a list of songs you can play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"
end



def list(my_songs)
  i = 1
  my_songs.each do |song|
    puts "#{i}. #{song}"
    i+=1
  end
end


def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  is_valid_number = input.to_i.to_s
  if is_valid_number
    is_valid_number = (input.to_i <= my_songs.length)
  end
  if is_valid_number
    puts "Playing #{my_songs[input.to_i - 1]}"
  elsif my_songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input=="exit"
    case input
    when "play"
      play(my_songs)
    when "help"
      help
    when "exit"
    when "list"
      list(my_songs)
    end
    input = gets.chomp
  end
  exit_jukebox
end

run(songs)