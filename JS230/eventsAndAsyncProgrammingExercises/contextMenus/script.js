document.addEventListener('DOMContentLoaded', () => {
  let main = document.querySelector('main');
  let sub = document.querySelector('#sub');

  main.addEventListener('contextmenu', event => {
    event.preventDefault();
    alert("main");
  })

  sub.addEventListener('contextmenu', event => {
    event.preventDefault();
    event.stopPropagation();
    alert("sub");
  });

});