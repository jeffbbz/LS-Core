# string='Chad'

# if [[ -n $string ]]
# then
#   echo $string is longer than zero chars in length.
# fi

# --------

# int_1=8
# int_2=8

# if [[ int_1 -eq int_2 ]]
# then
#   echo $int_1 and $int_2 are equal!
# fi

# --------

# if [[ -e /Users/paco/Launch_School/LS_Core/RB170/bash_basics/if_statement.sh ]]
# then
#   echo 'File exists!'
# fi

# --------

# integer=4

# if [[ $integer -lt 5 ]]
# then
#   echo $integer is less than 5

#   if [[ $integer -gt 1 ]]
#   then
#     echo $integer is greater than 1
#   fi
# fi

# --------

# integer=25

# if [[ $integer -lt 20 ]]
# then
#   echo $integer is less than 20
# else
#   echo $integer is not less than 20
# fi

# --------

# integer=30

# if [[ $integer -gt 40 ]]
# then
#   echo $integer is greater than 40
# elif [[ $integer -gt 20 ]]
# then
#   echo $integer is greater than 20 but not 40
# else
#   echo $integer is less than 20
# fi

# --------

# integer=40

# if [[ $integer -gt 10 ]] && [[ $integer -lt 100 ]]
# then
#   echo $integer is between 10 and 100
# fi

# --------

# integer=50

# if [[ $integer -lt 40 ]] || [[ $integer -gt 45 ]]
# then
#   echo $integer is less than 40 or greater than 45
# fi

# --------

integer=60

if [[ ! ($integer -lt 30 || $integer -gt 100) ]]
then
  echo $integer is not less than 30 or greater than 100
fi