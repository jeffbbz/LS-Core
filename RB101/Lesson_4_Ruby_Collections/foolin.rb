=begin

# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

--------------------------------------------------------------------------

P - Understand the Problem

Possible Questions:

1. What is a substring?
2. What is a palindrome?
3. Will strings contain only letters characters?
4. Will there be strings with spaces?
5. Will there be empty strings?
6. Will the input only be a string?

Problem

input: string
output: array of substrings <- Use this data structure
rules:
    Explicit Requirements:
        - Palindromes are case sensative
        - return all palindromes in a string (can be none or multiple!)
        - return only substrings which are palindromes

    Implicit Requirements:
        - If the string is empty, return an empty array
        - if the string is not a palindrom, return an empty array
        - if palindrome(s) present return an array of string(s)











=end