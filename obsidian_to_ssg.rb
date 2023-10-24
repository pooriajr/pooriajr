require 'pathname'
require 'front_matter_parser'
require 'Date'
require 'active_support/all'

title = ARGV[0]

raise 'Please provide a title' if title.nil?

# This is the obsidian post which serves as the source
obsidian_path = Pathname'/Users/pooria/Library/Mobile Documents/com~apple~CloudDocs/Brain2'
obsidian_post = obsidian_path + "#{title}.md"
obsidian_post_content = obsidian_post.read

obsidian_image_regex = /!\[\[(.*?)\]\]/
obsidian_post_images = obsidian_post_content.scan obsidian_image_regex
obsidian_post_images.flatten!

obsidian_post_image_paths = obsidian_post_images.map do |image|
    "#{obsidian_path}/#{image}"
end

blog_images_path = '/Users/pooria/Projects/Kian Pak/kianpak/src/images/'
blog_images_path_relative = '/images/'
blog_image_paths = obsidian_post_images.map do |filename|
    "#{blog_images_path}#{filename}"
end

# Copy the images from source to destination
images_source = obsidian_post_image_paths
images_dest = blog_image_paths
zipped = images_source.zip images_dest

zipped.each do |source, dest|
    File.write(dest, File.read(source))
end

original_content = File.read(obsidian_post)
original_name = obsidian_post.basename('.*')
transformed_content = original_content.gsub(obsidian_image_regex,"![](#{blog_images_path_relative + '\1'})")
transformed_content.prepend "---\ntitle: #{original_name}\n---\n"

parsed = FrontMatterParser::Parser.parse_file(
    obsidian_post,
    loader: FrontMatterParser::Loader::Yaml.new(allowlist_classes: [Date])
)
date = parsed.front_matter["date"] || Date.today

blog_post_name = original_name.to_s.remove(/[^0-9|A-Z|a-z| ]/).parameterize + '.md'
blog_post_path = "/Users/pooria/Projects/Kian Pak/kianpak/src/_posts/#{date}-#{blog_post_name}"

File.write(blog_post_path, transformed_content)

# This is the newly created blog post
blog_post_contents = File.read blog_post_path


