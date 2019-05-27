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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |item,i|
    puts "#{i+1}. #{item}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  users_r = gets.chomp
    if songs.include?(users_r) 
      puts "Playing #{users_r}"
    elsif
      (1..songs.length).member?(users_r.to_i)
      puts "Playing #{songs[users_r.to_i-1]}"
    else 
      puts"Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help 
  users = "" 
  until users == "exit" 
    puts"Please enter a command:"
    users = gets.chomp
    if users == "list"
      list(songs)
    elsif
      users == "play"
      play(songs)
    elsif
      users == "help"
      help
    end  
  end
  exit_jukebox
end

