### GOAL

Define a function that takes two integer ID arguments and swaps those elements in the DOM

### RULES

- return undefined if ID doesn't exist
- return undefined if one of the nodes is a child of the other
- swapped node will bring its children with it

### Approach
- return undefined if node doesn't exist
- Find nodes
- Check if nodes are children of each other 
  - loop through children of node
  - break if child node has an id of second arguement
  - repeat with second node arg
  - if either is child return undefined
- swap nodes
  - using array destructering replace nodes with each
