document.addEventListener('DOMContentLoaded', () => {
  let handlebarsTemplates = {};
  compileHandlebarsTemplates();
  registerHandlebarsPartials();

  let slides = document.querySelector('#slides');
  let photoInfo = document.querySelector('section > header');
  let comments = document.querySelector('#comments ul');
  let next = document.querySelector(".next");
  let prev = document.querySelector('.prev');
  let form = document.querySelector('form');

  let topPhotoID = 1;

  let photoRequest = new XMLHttpRequest();
  makePhotoRequest(photoRequest);
  renderPhotos(photoRequest);

  function compileHandlebarsTemplates() {
    document.querySelectorAll('script[type="text/x-handlebars"]').forEach(template => {
      handlebarsTemplates[template["id"]] = Handlebars.compile(template["innerHTML"]);
    });
  }

  function registerHandlebarsPartials() {
    document.querySelectorAll("[data-type=partial]").forEach(template => {
      Handlebars.registerPartial(template["id"], template["innerHTML"]);
    });
  }

  function renderPhotos(request) {
    request.addEventListener("load", event => {
      let response = request.response;
      let photoData = {photos: response};

      slides.insertAdjacentHTML('beforeend', handlebarsTemplates.photos(photoData));

      requestAndRenderComments();
      renderPhotoInfo(photoData);

      next.addEventListener('click', event => {
        event.preventDefault();
        slides.append(slides.firstElementChild);
        topPhotoID = slides.firstElementChild.dataset.id;

        requestAndRenderComments();
        renderPhotoInfo(photoData);
      });

      prev.addEventListener('click', event => {
        event.preventDefault();
        topPhotoID = slides.lastElementChild.dataset.id;
        slides.prepend(slides.lastElementChild)

        requestAndRenderComments();
        renderPhotoInfo(photoData);
      });

      photoInfo.addEventListener('click', event => {
        event.preventDefault();
        let likeButton = photoInfo.querySelector('.button.like');
        let favButton = photoInfo.querySelector('.button.favorite');

        if (event.target === likeButton) {
          incrementButton(likeButton, '/photos/like');
        }

        if (event.target === favButton) {
          incrementButton(favButton, '/photos/favorite');
        }
      });

      form.addEventListener('submit', event => {
        event.preventDefault();
        let form = event.target;
        console.log('submit event');
        submitForm(form);
      });
    });
  }

  function incrementButton(button, url) {
    let request = new XMLHttpRequest();
    request.open('POST', url);
    request.responseType = 'json';
    request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=utf-8');

    request.addEventListener('load', event => {
      let response = request.response;
      button.textContent = button.textContent.replace(/\d+/, response.total);
    });

    request.send('photo_id=' + topPhotoID);
  }

  function submitForm(form) {
    let formData = new FormData(form)
    formData.set('photo_id', topPhotoID);
    let serializedForm = new URLSearchParams([...formData]);

    let request = new XMLHttpRequest();
    request.open(form.method, '/comments/new');
    request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded; charset=UTF-8');
    request.responseType = 'json';

    request.addEventListener('load', event => {
      requestAndRenderComments();
      form.reset();
    });

    request.send(serializedForm);
  }

  function requestAndRenderComments() {
    let request = new XMLHttpRequest();
    makePhotoCommentRequest(request)
    renderPhotoComments(request);
  }

  function renderPhotoInfo(photoData) {
    let topPhoto = photoData.photos.filter(photo => photo.id === Number(topPhotoID))[0];
    photoInfo.innerHTML = "";
    photoInfo.insertAdjacentHTML('beforeend', handlebarsTemplates.photo_information(topPhoto));
  }

  function makePhotoRequest(request) {
    request.open('GET', '/photos');
    request.responseType = 'json';
    request.send();
  }

  function renderPhotoComments(request) {
    request.addEventListener('load', event => {
      let response = request.response;
      let commentData = {comments: response};
      comments.innerHTML = "";
      comments.insertAdjacentHTML('beforeend', handlebarsTemplates.photo_comments(commentData));
    })
  }

  function makePhotoCommentRequest(request) {
    request.open('GET', '/comments?photo_id=' + topPhotoID);
    request.responseType = 'json';
    request.send();
  }
});