let bodyHeader = document.body.querySelectorAll('header')[1];
document.body.insertAdjacentElement('afterbegin', bodyHeader);
bodyHeader = document.body.querySelector('header');

let h1 = document.querySelector('h1');
bodyHeader.insertAdjacentElement('afterbegin', h1);

let [figure1, figure2] = document.getElementsByTagName('figure');
let article = document.querySelector('article')
article.appendChild(figure1);
article.appendChild(figure2);

let [mopBaby, chinStick] = document.getElementsByTagName('img');
figure1.insertBefore(chinStick, mopBaby);
figure2.insertBefore(mopBaby, figure2.firstElementChild);
