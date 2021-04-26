require 'date'
require 'yaml'

def french_ssn_info(ssn)
  # build a regular expression to match my ssn
  # create different groups in the regular expression
  pattern = /(?<gender>1|2)\s?(?<year>\d{2})\s?(?<month>(0[1-9])|(1[0-2]))\s?(?<department>[0-9][1-9])\s?\d{3}\s?\d{3}\s?(?<key>\d{2})/
            # -- gender --   ---- year ----    -------- month ------------   ------ department ------    - rand 6 int -  ---- key ----
  # get match_data
  match_data = ssn.match(pattern)
  # if ssn is an empty string or the key is invalid or no data was matched
  if ssn == '' || !valid_key?(ssn, match_data[:key]) || match_data.nil?
    'The number is invalid'
  else
    # get the right gender (man/woman)
    gender = gender(match_data[:gender])
    # get the year of birth
    year = "19#{match_data[:year]}"
    # get the month of birth
    month = month(match_data[:month])
    # get the department, and match it with the data in the french_departments.yml file
    department = department(match_data[:department])
    "a #{gender}, born in #{month}, #{year} in #{department}."
  end
end

def gender(gender)
  # gender can be either '1' or '2'
  # if '1' => man
  # else '2' => woman
  gender == '1' ? 'man' : 'woman'
end

def month(month)
  # month_index can be '01' to '12'
  month_index = month.to_i
  # Date::MONTHNAMES => [ nil, "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  Date::MONTHNAMES[month_index]
end

def department(department_number)
  # load the content of the YAML file and returns a hash
  departments_hash = YAML.load_file('data/french_departments.yml')
  # read value using the square bracket notation with the departement number as a key
  departments_hash[department_number]
end

# verify that the last 2 digits (i.e. the key) is equal to the result of the remainder of (97 - ssn_without_key / 97)
def valid_key?(ssn, key)
  # remove the last 2 digits and get rid of the white spaces + convert to an integer
  ssn_without_key = ssn.slice(0...-2).gsub(' ', '').to_i
  # comapre the key to the remainder of the division of (97 - ssn_without_key) by 97
  key.to_i == (97 - ssn_without_key) % 97
end
