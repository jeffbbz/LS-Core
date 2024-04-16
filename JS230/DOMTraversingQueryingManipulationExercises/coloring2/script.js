
document.addEventListener('DOMContentLoaded', () => {
  function colorGeneration(gen) {
    walkDOM(document.body, el => {
      if (findIndentGen(el) === gen) {
        el.classList.add('generation-color');
      }
    });
  }

  function walkDOM(element, callBack) {
    callBack(element);
    for (let child of element.children) {
      walkDOM(child, callBack);
    }
  }

  function findIndentGen(element) {
    let indentCount = 0;

    while (element.tagName !== 'BODY') {
      indentCount += 1;
      element = element.parentElement;
    }

    return indentCount;
  }

  colorGeneration(1)
  colorGeneration(4)
  colorGeneration(7)


});


