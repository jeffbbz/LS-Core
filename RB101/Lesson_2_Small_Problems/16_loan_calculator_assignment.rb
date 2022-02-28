def prompt(message)
  puts ">> #{message}"
end

def welcome_graphic
  welcome = <<-GRAPHIC
    
$$--------------------------$$$$$$$--------------------------$$
 
Welcome to the Mortgage Calculator! Who doesn't love mortgages?

$$--------------------------$$$$$$$--------------------------$$

            GRAPHIC

  puts welcome
end

def format_input
  gets.chomp.delete('$').delete('%').delete(',').delete(' ')
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(input)
  (integer?(input) || float?(input)) && input.start_with?("0") != true
end

def loan_input
  loan = ''
  loop do
    prompt("Input your full loan amount:")
    loan = format_input

    if valid_number?(loan)
      break
    else
      prompt("Please use only valid numbers and no currency symbols.")
    end
  end
  loan
end

def apr_input
  apr = ''
  loop do
    prompt("Input your Annual Percentage Rate (APR):")
    apr = format_input

    if valid_number?(apr)
      break
    else
      prompt("Please use only valid numbers and do not include a % sign.")
    end
  end
  apr
end

def loan_duration_input
  annual_loan_duration = ''
  loop do
    prompt("Input your loan duration (in years):")
    annual_loan_duration = format_input

    if valid_number?(annual_loan_duration)
      break
    else
      prompt("Please use only valid numbers and no letters.")
    end
  end
  annual_loan_duration
end

def monthly_pay(amount, interest, duration)
  amount.to_f * (interest / (1 - (1 + interest)**(-duration)))
end

# tbh, I couldn't figure out how to add commas so I googled
# this method and the gsub/regex bits are above my current understanding!
def add_commas(number)
  whole, decimal = number.to_s.split('.')
  if whole.to_i < -999 || whole.to_i > 999
    whole.reverse!.gsub!(/(\d{3})(?=\d)/, '\\1,').reverse!
  end
  [whole, decimal].compact.join('.')
end

def loading_calculations
  prompt("Calculating your monthly payment...")
  prompt(".......")
  sleep 0.15
  prompt("..............")
  sleep 0.15
  prompt("..........................")
  sleep 0.15
end

loan = ''
apr = ''
annual_loan_duration = ''

welcome_graphic()

loop do
  loan = loan_input()
  apr = apr_input()
  annual_loan_duration = loan_duration_input()

  monthly_int_rate = (apr.to_f / 12) / 100

  monthly_loan_duration = annual_loan_duration.to_i * 12

  monthly_payment = monthly_pay(loan, monthly_int_rate, monthly_loan_duration)

  total_payment = monthly_payment * monthly_loan_duration

  total_interest = total_payment - loan.to_f

  loading_calculations()

  result_prompt = <<-RESULT
    
    Okay, here's your result:

    With a loan of $#{add_commas(loan)}, 
    and a #{apr.to_f}% APR,
    for a term of #{annual_loan_duration} years:

    Monthly Payment:                        $#{add_commas(format('%.2f', monthly_payment))}
    Total Paid to Interest by Mortgage End: $#{add_commas(format('%.2f', total_interest))}
    Total Paid by Mortgage End:             $#{add_commas(format('%.2f', total_payment))}

  RESULT

  prompt(result_prompt)

  prompt("Would you like to make another calculation? (Y/N)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks and good luck for the next #{annual_loan_duration} years!")
