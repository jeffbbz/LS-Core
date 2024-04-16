function domTreeTracer(id) {
  let domElements = [];
  let element = document.getElementById(id);
  let siblings;

  while (element.tagName !== "BODY") {
    siblings = element.parentElement.children;
    domElements.push([...siblings].map(element => element.tagName));
    element = element.parentElement;
  }

  return domElements;
}

// > domTreeTracer(1);
// = [["ARTICLE"]]
//   > domTreeTracer(2);
// = [["HEADER", "MAIN", "FOOTER"], ["ARTICLE"]]
//   > domTreeTracer(22);
// = [["A"], ["STRONG"], ["SPAN", "SPAN"], ["P", "P"], ["SECTION", "SECTION"], ["HEADER", "MAIN", "FOOTER"], ["ARTICLE"]]