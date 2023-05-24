### Goal

Create a custom set

### Rules

- a set is an unordered collection (but maybe ours is? ) with no duplicates (but ours does?)

- hybrid of hash and array?
- uses hash as storage?
- equality is determined wtih objects#eql?
- set elements are not modifiable/mutating
- strings are stored as frozen copies
- includes enumerable module? (maybe not for this assignment)



### Test Cases

- CustomSet class
  - objects are empty at instantiation if no optional argument
  - CustomSet#initialize constructor
    - takes an optional array argument
    - stores arguments as instance variable (also array?)
  - CustomSet#empty? method
    - returns true if set is empty
  - CustomSet#contains?
    - takes one argument
    - checks if set contains that element
    - returns true if contained
  - CustomSet#size
    - helper method
    - returns the number elements in the elements array for the object
    - is also the number of objects in the customset
  - CustomSet#subset?
    - takes one CustomSet object argument
    - returns true if calling set is a subset of argument set
      - subset: 
        - sets with less or same number of elements are subsets of larger or same sets
          - if all of the smaller sets elements are also in the larger set
            - iterate over calling set and check if all elements of arg set are included
              - use CustomSet#contains in block
        - subset examples:
          - a set with no elements is a subset of another set with no elements
          - a set with no elements is a subset of a set with elements
          - a set with 2 elements is a subset of a set with 3 elements if those two are included in the larger set
        - not subset examples:
          - a set with elements is not a subset of a set without
          - a set with and element not contained in another set is not a subset
  - CustomSet#disjoint?
    - returns true if two sets have no elements in common
      - iterate over the calling object elements and return true if none of the elements are found in the arg
      - returns true for empty sets
      - false if any one element is found in two sets
  - CustomSet#eql? overide
    - overrides built in
    - returns true if objects have all the same elements (in any order) and no additional elements
      - includes same elements
  - CustomSet#add
    - takes one arguement(not array)
    - adds argument to set 
    - appends argument to end of set
    - cannot add already existing element
      - but doesn't raise an error
    - returns the set 
  - CustomSet#intersection
    - takes a CustomSet object argument
    - returns a new CustomSet object whose elements are those that were in common between the calling and argument set
      - returns a new empty set if one set is empty or they have nothing in common
  - CustomSet#difference
    - takes a CustomSet object argument
    - returns a new set object whose elements are the calling objects minus any duplicates found in the argument set object
      - empty caller and empty arg return empty set
      - empty caller and arg with elements returns empty set
      - caller with elements and empty arg return caller
  - CustomSet#union
    - takes a set object argument
    - returns a new object whose elements are those of the caller and arg merged with duplicates removed
