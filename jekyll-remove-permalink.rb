require 'fileutils'

Dir.glob("_posts/*.md") {|x|
    orig_file = File.new(x)
    File.open('new_file', "w") do |newfile|
        orig_file.each do |li|
            newfile.puts li unless (li[/^permalink/])
        end
    end
    FileUtils.mv 'new_file', "#{x}"
}
