#Exercise 13.4

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog].push('bowser')

p pets

# using element assignement -> pets[:dog] = 'bowser' would re-assign
# the evalue of :dog and delete the other values.

# using element reference -> pets[:dog].push('bowser') does not re-assign
# it returns an array and we can use Array#push to append the value we want.
