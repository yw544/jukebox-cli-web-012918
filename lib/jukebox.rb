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
