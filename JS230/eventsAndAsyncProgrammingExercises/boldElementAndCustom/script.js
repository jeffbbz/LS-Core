// function makeBold(element, callback) {
//   element.style.fontWeight = 'bold';
//   if (callback && typeof callback === 'function') callback(element);
// }
//
// let sectionElement = document.querySelector('section');
// makeBold(sectionElement, function(elem) {
//   elem.classList.add('highlight');
// });
//
// sectionElement.classList.contains('highlight'); // true
// sectionElement.style.fontWeight; // "bold"

// Further Exploration

let sectionElement = document.querySelector('section');

sectionElement.addEventListener('bolded', event => {
  event.target.classList.add('highlight');
})

function makeBold(element) {
  element.style.fontWeight = 'bold';
  element.dispatchEvent(new CustomEvent('bolded'));
}

makeBold(sectionElement);