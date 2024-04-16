const element1 = document.querySelector('table');
const element2 = document.querySelector('main h1');
const element3 = document.querySelector('main');

document.addEventListener('DOMContentLoaded', () => {
  function delegateEvent(parentElement, selector, eventType, callback) {
    if (!parentElement) return undefined;
    let children = [...parentElement.querySelectorAll(selector)];

    parentElement.addEventListener(eventType, event => {
      if (children.includes(event.target)) callback(event);
    });

    return true;
  }

  const callback = ({target, currentTarget}) => {
    alert(`Target: ${target.tagName}\nCurrent Target: ${currentTarget.tagName}`);
  };

  // const newP = document.createElement('P');
  // const newContent = document.createTextNode('New Paragraph');
  // newP.appendChild(newContent);
  // element2.appendChild(newP);

  // console.log('Scenario 1: ', delegateEvent(element1, 'p', 'click', callback) === undefined, 'is true'); // true
  // console.log('Scenario 2: ', delegateEvent(element2, 'p', 'click', callback) === true, 'is true'); // true
  // console.log('Scenario 3: ', delegateEvent(element2, 'h1', 'click', callback) === true, 'is true'); // true
  console.log('Scenario 4: ', delegateEvent(element3, 'h1', 'click', callback) === true, 'is true'); // true
  // console.log('Scenario 5: ', delegateEvent(element3, 'aside p', 'click', callback) === true, 'is true'); // true
  // console.log('Scenario 6: ', delegateEvent(element2, 'p', 'click', callback) === true, 'is true'); // true
});