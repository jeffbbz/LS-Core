# greeting () { 
#   echo Hello $1
# }

# greeting 'Peter'

# # Hello Peter

# --------------------

greeting () {
  echo "Hello $1"
  echo "Hello $2"
}

greeting 'Peter' 'Paul'

# Hello Peter
# Hello Paul