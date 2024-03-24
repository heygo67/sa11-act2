#1
def extract_hashtags(text)
    pattern = /#\w+/
    hashtags = text.scan(pattern)
    hashtags.flatten
end


#2
def valid_password?(password)
    pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,16}$/
    password.match?(pattern)
end


#3
def find_numbers(text)
    pattern = /\d+/
    text.scan(pattern)
end


#4
def valid_date?(date)
    pattern = /\d{4}-\d{2}-\d{2}/
    date.match?(pattern)
end


#5
def parse_log_entry(log)
    pattern = /^(INFO|WARN|ERROR): (.*)$/
    match = log.match(pattern)
    [match[1], match[2]] if match
end





    

#example problems
p extract_hashtags("Love this #beautiful day! #sunny")
p valid_password?("Passw0rd")
p valid_password?("pass")
p find_numbers("The order was placed for 100.25 units at a price of 20.75 each.")
p valid_date?("2023-03-15")
p valid_date?("15-03-2023")
log_entry = "ERROR: Disk space low"
result = parse_log_entry(log_entry)
puts result.inspect
