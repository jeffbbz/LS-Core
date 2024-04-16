### GOAL

Write a function that accepts an element id argument and returns a 2-d array of subarrays
The first subarray is the element and its siblings. The next are any parent of the element
and the parent's siblings, up to the top of the tree (the element with the ID 1)

### Rules

INPUT: an integer representing an elements ID
OUTPUT: 2-d array of 2 subarrays with 
`[[element, siblings...], [parent, parent siblings...],[grandparent, gp sibs]...]`
- Input will be an integer (doesn't work with `querySelector`)
- if element/parent have no siblings they will be only subarr element
- last element of array will be ARTICLE (id 1)
- ARTICLE will only be one subarr
- returned sub array elements will be the `tagName` property string value

### Examples

ID = 1 
Return value `[["Article"]]`

### ALGO
1. Create outer empty array
2. Create Element/siblings subarr
   - Get Element
     - add it's tagName to an array
   - Get siblings of element
     - get element children of element parent 
       - unless element tagName = "ARTICLE"
     - add to array
   - add array of element and siblings to empty array
3. Create Parent/sibling subarr
   - get parent of element
     - add to array
   - get siblings of parent
     - add to array
   - add array to outer array
4. Repeat step 3 until outer array has ["ARTICLE"] as its last element
   5. or the last element of the outer array has the same tagName as element with id 1