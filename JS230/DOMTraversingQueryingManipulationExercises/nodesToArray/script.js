function nodesToArray() {
  let element = document.body;
  let arr = [];

  return walk(document.body);
}

function walk(element) {
  
  for (let index = 0; index < element.children.length; index += 1) {
    walk(element.children[index]);
  }
}


