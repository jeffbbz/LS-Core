
document.addEventListener('DOMContentLoaded', () => {
  function featureImage(event) {
    event.preventDefault();
    let activeImg = document.querySelector('.active');
    activeImg.classList.toggle('active');
    event.target.closest('li').classList.toggle('active');
    setFeaturedImage(event.target.src);
  }

  function setFeaturedImage(imageSource) {
    let img = document.querySelector('figure > img');
    img.src = imageSource;
  }

  let thumbnails = document.querySelectorAll('ul li img');
  thumbnails.forEach(img => img.addEventListener('click', featureImage));
})



