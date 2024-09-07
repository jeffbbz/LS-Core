let addContact1 = document.querySelector('.add-contact a');
let mainContainer = document.querySelector('div.col-xs-12.main-container > div');
let contactsPlaceholder = document.querySelector('div.empty-contacts-placeholder');
let searchPlaceholder = document.querySelector('div.empty-search-contacts-placeholder');
let searchBar = mainContainer.querySelector('div.row.well');
let formHeader = mainContainer.querySelector('h2');
let contactFrom = mainContainer.querySelector('form');
let addContact2 = contactsPlaceholder.querySelector('a.btn');

// search bar add new contact listener
addContact1.addEventListener('click', event => {
  event.preventDefault();
  showHideForm();

  let AddContactForm = new ContactForm();
  mainContainer.append(AddContactForm.createHeading());
  mainContainer.append(AddContactForm.assembleForm());

  let form = mainContainer.querySelector('form');
  form.addEventListener('click', event => {
    console.log('click')
  })
});

addContact2.addEventListener('click', event => {
  event.preventDefault();
  showHideForm();

  // let AddContactForm = new ContactForm();
  // mainContainer.append(AddContactForm.createHeading());
  // mainContainer.append(AddContactForm.assembleForm());

});

contactFrom.addEventListener('submit', event => {
  event.preventDefault();
  console.log('submit')
})


contactFrom.querySelector('button.btn-close-form').addEventListener('click', event => {
  console.log('cancel')
  showHideForm();
})

function toggleShowHide(element) {
  element.style.display === 'none' ? element.style.display = 'block' : element.style.display = 'none';
}

function showHideForm() {
  [formHeader, contactFrom, contactsPlaceholder, searchPlaceholder, searchBar].forEach(element => toggleShowHide(element));
}

class ContactForm {
  constructor() {
    this.form = document.createElement('form');
    this.form.className = 'form-horizontal contact-form';
    this.form.method = 'post';
    this.form.role = 'form';
  }

  createHeading() {
    let h2 = document.createElement('h2');
    h2.className = 'page-header text-center';
    h2.textContent = 'Create New Contact';
    return h2;
  }

  createLabel(text) {
    let label = document.createElement('label');
    label.className = 'col-sm-4 control-label';
    label.textContent = text;
    return label;
  }

  createInput(inputKind) {
    let input = document.createElement('input');
    input.className = 'form-control contact-' + inputKind + '-input'
    input.type = this.determineInputType(inputKind);
    input.name = inputKind;
    return input;
  }

  createSubmitButton() {
    let div = this.createDiv('col-sm-offset-4 col-sm-3')
    let button = this.createButton('btn btn-outline btn-lg btn-block', 'Submit', 'submit');
    div.append(button);
    return div;
  }

  createCancelButton() {
    let div = this.createDiv('col-sm-3')
    let button = this.createButton('btn-close-form btn btn-outline btn-lg btn-block', 'Cancel', 'button');
    div.append(button);
    return div;
  }

  createDiv(className) {
    let div = document.createElement('div');
    div.className = className;
    return div;
  }

  createButton(className, text, type) {
    let button = document.createElement('button');
    button.className = className;
    button.textContent = text;
    button.type = type;
    return button;
  }

  determineInputType(inputKind) {
    if (inputKind === 'email') {
      return 'email';
    } else if (inputKind === 'phone') {
      return 'tel';
    } else {
      return 'text';
    }
  }

  makeRow(category, labelText, inputKind) {
    let mainDiv = this.createDiv('form-group has-feedback form-group-' + category);
    let label = this.createLabel(labelText);
    let inputDiv = this.createDiv('col-sm-6');
    let input = this.createInput(inputKind);

    inputDiv.append(input);
    mainDiv.append(label, inputDiv);

    return mainDiv;
  }

  makeButtonRow() {
    let div = this.createDiv('form-group');
    let submit = this.createSubmitButton();
    let cancel = this.createCancelButton();

    div.append(submit, cancel);
    return div;
  }

  assembleForm() {
    let nameDiv = this.makeRow('name', 'Full Name:', 'full-name');
    let emailDiv = this.makeRow('email', 'Email Address:', 'email');
    let phoneDiv = this.makeRow('phone', 'Phone Number:', 'phone');
    let buttonDiv = this.makeButtonRow();

    this.form.append(nameDiv, emailDiv, phoneDiv, buttonDiv);

    this.form.querySelector('button.btn-close-form').addEventListener('click', event => {
      this.form.remove();
      mainContainer.querySelector('h2').remove();
      contactsPlaceholder.style.display = 'block';
      searchPlaceholder.style.display = 'block';
      searchBar.style.display = 'block';
    });

    this.form.addEventListener('submit', event => {
      event.preventDefault();
      console.log('submit')
    });

    return this.form;
  }
}






