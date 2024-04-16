document.querySelector('img').addEventListener('click', event => {
  event.preventDefault();
}, false);

// Line 2 calls the `stopPropagation` method on the event which triggers the
// Event handler. This method prevents the event from propagating further through the capturing
// and/or bubbling phases. Instead of this, we need to use the `preventDefault` method
// which keeps the default action from occurring (in this case anchor elements have
// a default action of following their href attribute value link.)