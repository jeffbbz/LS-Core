function nodeSwap(id1, id2) {
  let node1 = document.getElementById(id1);
  let node2 = document.getElementById(id2);
  if (!node1 || !node2 || node1.contains(node2) || node2.contains(node1)) return undefined;

  let node2Clone = node2.cloneNode(true);
  node1.parentElement.insertBefore(node2Clone, node1);
  node2.parentElement.replaceChild(node1, node2);
  return true;

  // let temp = document.createElement('DIV');
  // node1.replaceWith(temp);
  // node2.replaceWith(node1);
  // temp.replaceWith(node2);
  // return true
}

// // at least one of the id attributes doesn't exist
// > nodeSwap(1, 20);
// = undefined

// // at least one of the nodes is a "child" of the other
//   > nodeSwap(1, 4);
// = undefined
//   > nodeSwap(9, 3);
// = undefined

// // one swap
// > nodeSwap(1, 2);

// // multiple swaps
// > nodeSwap(3, 1);
// > nodeSwap(7, 9);