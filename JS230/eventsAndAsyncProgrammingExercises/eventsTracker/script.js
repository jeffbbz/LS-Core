const tracker = (() => {
  const events = [];
  return {
    list() {
      return events.slice();
    },

    elements() {
      return this.list().map(event => event.target);
    },

    add(event) {
      events.push(event);
    },

    clear() {
      events.length = 0;
      return events.length;
    },
  };
})();

function track(callback) {
  return function () {
    if (!tracker.list().includes(event)) tracker.add(event);
    callback(event);
  }
}

document.addEventListener('DOMContentLoaded', () => {
  let divRed = document.querySelector('#red');
  let divBlue = document.querySelector('#blue');
  let divOrange = document.querySelector('#orange');
  let divGreen = document.querySelector('#green');


  divRed.addEventListener('click', track(event => {
    document.body.style.background = 'red';
  }));

  divBlue.addEventListener('click', track(event => {
    event.stopPropagation();
    document.body.style.background = 'blue';
  }));

  divOrange.addEventListener('click', track(event => {
    document.body.style.background = 'orange';
  }));

  divGreen.addEventListener('click', track(event => {
    document.body.style.background = 'green';
  }));
});