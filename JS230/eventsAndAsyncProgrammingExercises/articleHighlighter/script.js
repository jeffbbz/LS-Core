document.addEventListener('DOMContentLoaded', () => {
  const main = document.querySelector('main');
  const linkList = document.querySelector('header ul');
  const highlighted = document.getElementsByClassName('highlight');

  function clearHighlighted() {
    [...highlighted].forEach(element => element.classList.remove('highlight'));
  }

  document.addEventListener('click', event => {
      clearHighlighted();
      main.classList.add('highlight');
  }, true);

  linkList.addEventListener('click', event => {
    event.stopPropagation();

    if (event.target.tagName === 'A') {
      clearHighlighted();
      let href = event.target.getAttribute('href');
      let article = main.querySelector(href);
      article.classList.add('highlight');
    }
  });

  main.addEventListener('click', event => {
    event.stopPropagation();
    let element = event.target;

    if (element.tagName === 'ARTICLE') {
      clearHighlighted();
      element.classList.add('highlight');
    } else if (element.parentElement.tagName === 'ARTICLE') {
      clearHighlighted();
      element.parentElement.classList.add('highlight');
    }
  });
});