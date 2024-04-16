### GOAL

Create a function that colorizes the element at a given ID argument
And any other elements that are at the same level of indentation

### RULES
INPUT: an integer rep of an element id
OUTPUT: undefined, `style.generation-color` property color is changed
- changes should be made to .generation-color
  - accessible via style property
- Find the element at the given id
  - find the level of indentation for the that element
    - work backwards up the tree, until body, count each parent and add to a count
    - 