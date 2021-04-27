require 'json'

filepath = 'data/new_beers.json'

beers = {
  title: "Great beers",
  beers: [
    {
      name: 'Edelweiss',
      appearance: 'White',
      origin: 'Austria'
    },
    {
      name: 'Guinness',
      appearance: 'Stout',
      origin: 'Ireland'
    }
  ]
}

File.open(filepath, 'wb') do |file|
  # JSON.generate switches the ruby object (hash or array) to text
  file.write(JSON.generate(beers))
end
