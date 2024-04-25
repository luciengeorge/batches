def tag(name, content, attributes = {})
  # 1. create an empty array to store all the html options that the user gives us through the attributes parameter
  html_options = []
  # 2. iterate over the hash
  attributes.each do |key, value|
    # 3. In each iteration we'll create a string "key='value'"
    option = "#{key}='#{value}'"
    # 4. push this option variable to the array created in step 1.
    html_options.push(option)
  end
  # if the user calls the tag method this way tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
  # The html_options array will have this format => ["href='https://lewagon.org'", "class='btn'"]

  # finally we need to put everything together by creating the opening tag, add the html options, add the content, and finally add the closing tag using interpolation
  return "<#{name} #{html_options.join(' ')}>#{content}</#{name}>"
end

p tag("h1", "Hello world")
# => <h1>Hello world</h1>

p tag("h1", "Hello world", { class: "bold" })
# => <h1 class='bold'>Hello world</h1>

p tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>
