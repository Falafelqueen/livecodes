
# We implemented `credit_card_checker(credit_card_number)`   → we defined the method to take one argument
# We cleaned up our string from spaces
#
#     There are multiple ways of doing it fx:
#
#     clean_string = credit_card_number.gsub(/\s/, "")  using gsub to replace all the spaces by nothing ie. effectively removing them
#
#     clean_string = credit_card_number.delete("")
#
#     → if you decide not the clean up the string from spaces than the your pattern could look something like this  `/\s*(\d\s*){16}/`
#
# We use `match?` to check whether the string is matching our pattern ( `match?` returns true or false)
# Depending on weather the string matches we return a different message

def credit_card_checker(credit_card_number)
  clean_string = credit_card_number.gsub(/\s/, '')
  # here we are using name capture group to capture the first number (just to practice)
  # we check the value with case statement and return string message accordingly
  pattern = /^(?<company_number>\d)\d{15}$/
  if (match_data = clean_string.match(pattern))
    case match_data[:company_number]
    when '4' then 'Valid VISA credit card number'
    when '5' then 'Valid Mastercard credit card number'
    end
  else
    'Invalid credit card number'
  end
end

# We accounted for the fact that someone could be having AMEX
# We adjusted our method to take two parameters (first credit_card_number and second optional card_provider)
# We set default value for the card_provider to be an empty string (so it doesn't break if someone calls the method without it)
def advanced_credit_card_checker(credit_card_number, card_provider = "")
  # we created an AMEX card check pattern
  amex_pattern = /^3[47]\d{2}[\s-]?\d{6}[\s-]?\d{5}$/
  # starts with number 3
  # followed by 4 OR 7
  # followed by exactly 2 numbers
  # followed by either nothing or one space or - (using ? quantifier)
  # followed by exactly 6 digits
  # followed by either nothing or one space or - (using ? quantifier)
  # ending with exactly 5 digits

  # if this method was called with the AMEX passed as card privder AND the pattern match we return 'Valid AMEX card'
  # if not we call our regular credit_card_checker method 
  if card_provider == 'AMEX' && credit_card_number.match?(amex_pattern)
    'Valid AMEX card'
  else
    credit_card_checker(credit_card_number)
  end
end
