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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.length.times do |i|
    puts "#{i + 1}. #{songs[i]}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  if songs.include?(song)
    puts "Playing #{song}"
  elsif song.to_i <= songs.length && song.to_i > 0 
    puts "Playing #{songs[song.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
end

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.strip 
  if command == "list"
    list(songs)
  elsif command == "play"
    play(songs)
  elsif command == "help"
    help
  elsif command == "exit"
    exit_jukebox
  end
end
