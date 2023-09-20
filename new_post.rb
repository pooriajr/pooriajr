# to use:
# ruby new_post.rb "Post Title"

require 'time'

title = ARGV[0]
date = Time.now.strftime("%Y-%m-%d")
filename = "#{date}-#{title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')}.md"
path = File.join("src/_posts", filename)

if File.exist?(path)
  abort("A post already exists at #{path}")
else
  File.open(path, 'w') do |file|
    file.puts("---")
    file.puts("title: \"#{title}\"")
    file.puts("date: #{date}")
    file.puts("---")
  end
end

puts "Created new post at #{path}"

