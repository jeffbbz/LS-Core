function colorGeneration(generation) {
  let elements = elementsWithNumberIDs();
  let generations = elementGenerations(elements);
  elements.filter((_, idx) => generations[idx] === generation)
          .forEach(element => element.classList.add("generation-color"));
}

function elementsWithNumberIDs() {
  let elements = [];
  for (let id = 1; document.getElementById(id) !== null; id += 1) {
    elements.push(document.getElementById(id));
  }
  return elements;
}

function elementGenerations(elements) {
  return elements.map(element => {
    let current = element;
    let count = 0;
    while (current.tagName !== "BODY") {
      current = current.parentElement;
      count += 1;
    }

    return count;
  });
}