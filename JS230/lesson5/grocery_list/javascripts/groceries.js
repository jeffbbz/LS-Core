document.addEventListener("DOMContentLoaded", () => {
  let list = document.querySelector('#grocery-list');
  let form = document.querySelector('form');

  const listItems = {};

  function defaultQuantity(quantity) {
    if (quantity === '') return 1;
    return Number(quantity);
  }

  function addToList(item, quantity) {
    let amount = defaultQuantity(quantity);

    if (listItems[item]) {
      listItems[item] += amount;
    } else {
      listItems[item] = amount;
    }
  }

  function appendNewListElement(item) {
    let li = document.createElement('li');
    li.textContent = `${listItems[item]} ${item}`;
    list.appendChild(li);
  }

  function editListElement(item) {
    let li = [...document.querySelectorAll('li')].filter(li => li.textContent.includes(item))[0]
    li.textContent = `${listItems[item]} ${item}`;
  }

  form.addEventListener('submit', event => {
    event.preventDefault();

    let item = form.querySelector('#name');
    let quantity = form.querySelector('#quantity');

    if (Object.hasOwn(listItems, item.value)) {
      addToList(item.value, quantity.value);
      editListElement(item.value);
    } else {
      addToList(item.value, quantity.value);
      appendNewListElement(item.value);
    }

    form.reset();
  });
});