# to use:
# ruby new_devlog.rb "Devlog Title"

require 'time'

title = ARGV[0]
date = Time.now.strftime("%Y-%m-%d")
filename = "#{date}-#{title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')}.md"
path = File.join("src/_devlogs", filename)

if File.exist?(path)
  abort("A devlog already exists at #{path}")
else
  File.open(path, 'w') do |file|
    file.puts("---")
    file.puts("title: \"#{title}\"")
    file.puts("date: #{Time.now}")
    file.puts("---")
  end
end

puts "Created new devlog at #{path}"

