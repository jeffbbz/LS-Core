
function sliceTree(first, last) {
  if (!document.getElementById(first).contains(document.getElementById(last))) return undefined;

  let currentID = last;
  let currentElement = document.getElementById(last);
  let elements = [];


  while (currentElement.id >= String(first)) {
    elements.unshift(currentElement.tagName);
    currentElement = currentElement.parentElement;
  }

  return elements
}







// sliceTree(1, 4);
// ["ARTICLE", "HEADER", "SPAN", "A"]

// sliceTree(1, 76);
// undefined

// sliceTree(2, 5);
// undefined

// sliceTree(5, 4);
// undefined

// sliceTree(1, 23);
// ["ARTICLE", "FOOTER"]

// sliceTree(1, 22);
// ["ARTICLE", "MAIN", "SECTION", "P", "SPAN", "STRONG", "A"]

// sliceTree(11, 19);
// ["SECTION", "P", "SPAN", "STRONG", "A"]