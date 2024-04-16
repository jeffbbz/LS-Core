### GOAL

Create an `Array.prototype.slice`-like function for the DOM Tree:
Take two args (start idx/parent node id and end idx/innermost child node id)
returns an array of element tagNames

### RULES
INPUT: numeric element id attributes (for start and end index)
OUTPUT: Array of tagName property string values for the included elements
- unlike slice, the end idx is inclusive
- end index might not be the innermost childnode id
- only element nodes
- elements without body ancestor should not work
- if either ID arg is not in DOM return `undefined`
- if slice is not possible because start and end are not connected return `undefined`
  - slices must be from a parent element to children?

### Examples

> sliceTree(1, 4);
= ["ARTICLE", "HEADER", "SPAN", "A"]
> sliceTree(1, 76);
= undefined
> sliceTree(2, 5);
= undefined
> sliceTree(5, 4);
= undefined
> sliceTree(1, 23);
= ["ARTICLE", "FOOTER"]
> sliceTree(1, 22);
= ["ARTICLE", "MAIN", "SECTION", "P", "SPAN", "STRONG", "A"]
> sliceTree(11, 19);
= ["SECTION", "P", "SPAN", "STRONG", "A"]
> 
> 

function walk(node, callback) {
callback(node);                                                   // do something with node
for (let index = 0; index < node.childNodes.length; index += 1) { // for each child node
walk(node.childNodes[index], callback);                         // recursively call walk()
}
}

walk(document.body, node => {                                // log nodeName of every node
console.log(node.nodeName);
});

### ALGO

- Get all elements of the ids between start and end
  - make an array of ids from start to end
    - [...Array(4 + 1).keys()].slice(1);
      iterate over the array mapping each number to its element of matching id
    - .map(num => document.getElementById(num))
      - iterate over the elements
        - if each successive element is not a child of the previous return undefined

- Start with the end element
- Find it's parent and its parent id
- if less than or equal to start number add to front of array
- if greater than start number break