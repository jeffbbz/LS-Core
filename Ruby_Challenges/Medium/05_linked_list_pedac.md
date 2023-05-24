### Goal

Implement a simple singly linked list, that can contain a range of data and can be reverse and converted to an from an array



### Rules

- A linked list is a fundamental CS data structure

- singly linked lists have elements

- each element contains data

- each element has a next field pointing to the next element in the list

- often used for sequences or LIFO stacks
- reverse method
- convert to array method
- convert from array method

- items added go ontop of each other ->
  - list has no elements, add 1
  - list has 1 element, 1, add 2
  - list as 2 elements 2, 1 in that order



- Element class

  - constructor method

    - takes one arg (an element)
    - assigns to instance variable?

  - datum method

    -  returns the element of the list

  - tail? method

    - returns t if element is last in list

  - next method

    - returns the next method in the list after the give or nil

    

- SimpleLinkedList class

  - no arguments upon instantiation
    - set instance variable empty to true
    - set size variable to 0
  - empty upon instantation
  - size method 
    - which returns an integer count of elements in the list
  - empty? method
    - returns true if list is empty
  - push method
    - takes one argument (an element to add to the list)
    - adds item to list front (before not after the previous elements)
    - which increases list size
    - and returns false if empty? is called
  - peek method
    - returns data value of the first (last added) element of the list? or nil if no elements
  - head method
    - returns an element class object
    - the first element of the list
    - which has the datum equal to its value
  - pop method 
    - which removes and returns the first element of the list
    - decrements list size
  - to_a instance method
    - converts list object to an array and element objects to array elements
    - pops the head item of the list and adds it to the array and so on list is 2 then 1, array == [1, 2]
    - does not mutate list
  - reverse instance method
    - reverse the order of the linked list
  - from_a class method
    - takes an array argument
    - converts an array to a linked list object
    - if array is empty or array is nil then size is zero and list is empty and elements return nil
    - adds elements from an array as element objects in reverse order 
      - [1, 2] gets added as 2 then 1
    - increments list size for linked list object
