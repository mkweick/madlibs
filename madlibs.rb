nouns = File.open('nouns.txt', 'r') { |f| f.read }.split
verbs = File.open('verbs.txt', 'r') { |f| f.read }.split
adjectives = File.open('adjectives.txt', 'r') { |f| f.read }.split

def say(msg)
  puts msg
end

def exit_with(msg)
  say(msg)
  exit
end

exit_with("No input file!") if ARGV.empty?
exit_with("File doesn't exist!") if !File.exists?(ARGV[0])

contents = File.open(ARGV[0], 'r') { |f| f.read }
contents1 = File.open(ARGV[1], 'r') { |f| f.read }

contents.gsub!('NOUN').each { |noun| nouns.sample }
contents.gsub!('VERB').each { verbs.sample }
contents.gsub!('ADJECTIVE').each { adjectives.sample }

contents1.gsub!('NOUN').each { |noun| nouns.sample }
contents1.gsub!('VERB').each { verbs.sample }
contents1.gsub!('ADJECTIVE').each { adjectives.sample }

p contents
p contents1