def page_content(title)
  File.read("pages/#{title}.txt")
rescue Errno::ENOENT
  return nil
end

puts page_content("Rafa Garcia")

def save_content(title, content)
  File.open("pages/#{title}.txt", "w") do |file|
    file.print(content)
  end
end

save_content("Rafa Garcia", "Ruby on Rails Developer and loving Husband and Father.")
