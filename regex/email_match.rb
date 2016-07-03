VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email? email
  email =~ VALID_EMAIL_REGEX
end

p is_valid_email?("lcastro.oliveira@gmail.com") ? "Valid" : "Invalid"
p is_valid_email?("lcastro.oliveiragmail.com") ? "Valid" : "Invalid"
p is_valid_email?("lcastrooliveira@gmail.com") ? "Valid" : "Invalid"
p is_valid_email?("lcastro.oliveira@gmail") ? "Valid" : "Invalid"
p is_valid_email?("lcastro_h@gmail.com") ? "Valid" : "Invalid"
