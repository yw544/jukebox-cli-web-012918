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
  help_hash = {
    "help" => "displays this help message",
    "list" => "displays a list of songs you can play",
    "play" => "lets you choose a song to play",
    "exit" => "exits this program"
  }
puts "I accept the following commands:"
help_hash.each do |command, action|
  puts "- #{command} : #{action}"
end
end

def list(songs)
  songs.each_with_index do |song, index|
    num = index + 1
    puts "#{num}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if (1..9).to_a.include?(input.to_i)
    puts "Playing #{songs[input.to_i-1]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
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
    command = gets.chomp
    while command != "exit"
      case command
      when "list"
      list(songs)
      when "play"
        play(songs)
     when "help"
        help
      end
      puts "Please enter a command:"
      command = gets.chomp
    end
    exit_jukebox
  end
