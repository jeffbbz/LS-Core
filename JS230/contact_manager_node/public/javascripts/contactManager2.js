(function() {
class ContactManager {
  constructor() {
    this.contactForm = document.querySelector('#create');
    this.searchQuery = '';
    this.tags = [];

    this.init();
  }

  init() {
    this.queryInitialDOMElements();
    // this.requestAllContacts();
    this.InsertAllContacts();
    this.attachShowHideFormListener(this.addContact1, this.addContact2);
    this.attachContactFormButtonListener()
    this.attachContactFormSubmitListener();
    this.attachContactButtonListeners();
    this.attachSearchListener();
    this.attachShowContactsButtonListener();
  }

  queryInitialDOMElements() {
    this.mainContainer = document.querySelector('div.col-xs-12.main-container > div');
    this.addContact1 = document.querySelector('.add-contact a');
    this.searchBar = this.mainContainer.querySelector('div.row.well');
    this.formContainer = this.mainContainer.querySelector('.forms-container');
    this.formHeader = this.formContainer.querySelector('h2');
    this.contactsPlaceholder = document.querySelector('div.empty-contacts-placeholder');
    this.noContactsPlaceholder = this.mainContainer.querySelector('div.well.text-center');
    this.contactsRow = document.querySelector('ul.media-list.row.contacts-container');
    this.searchPlaceholder = document.querySelector('div.empty-search-contacts-placeholder');
    this.addContact2 = this.contactsPlaceholder.querySelector('a.btn');
    this.searchInput = this.searchBar.querySelector('input');
    this.showContactsButton = this.searchBar.querySelector('div.show-all-contacts a');
  }

  attachShowHideFormListener(...elements) {
    this.showHideNonFormHandler = e => this.showHideNonFormElements(e);
    this.showHideFormElementsHandler = e => this.showHideFormElements(e);
    elements.forEach(element => element.addEventListener('click', this.showHideNonFormHandler));
    elements.forEach(element => element.addEventListener('click', this.showHideFormElementsHandler))
  }

  attachShowContactsButtonListener() {
    this.showContactsButtonHandler = e => this.showAllContacts(e);
    this.showContactsButton.addEventListener('click', this.showContactsButtonHandler);
  }

  attachContactFormButtonListener() {
    this.formContainer.addEventListener('click', event => {
      event.preventDefault();
      let target = event.target;

      if (target.tagName === 'BUTTON' && target.type === 'submit') {
        target.closest('form').requestSubmit(target);
      }

      if (target.classList.contains("tag-link")) {
        let tagsInput = this.formContainer.querySelector('div.form-group.has-feedback.form-group-tags input');
        this.writeTagsToTags(target.textContent, tagsInput);
      }

      if (target.classList.contains("btn-close-form") && target.closest('form').id === 'edit') {
        this.showHideNonFormElements();
        document.querySelector('#edit').remove();
      }

      if (target.classList.contains("btn-close-form") && target.closest('form').id === 'create') {
        this.showHideFormElements();
        this.showHideNonFormElements();
        target.closest('form').reset();
      }
    });
  }

  writeTagsToTags(tagsText, tagsInput) {
    let idx = this.tags.indexOf(tagsText);

    if (!tagsInput.value.includes(tagsText)) {

      if (tagsInput.value === '') {
        tagsInput.value = this.tags[idx];
      } else {
        tagsInput.value += "," + this.tags[idx];
      }
    }
  }

  showContactsOrPlaceholder() {
    let noContacts = this.contactsRow.querySelectorAll('li').length === 0;
    this.noContactsPlaceholder.style.display = noContacts ? 'block' : 'none';
  }

  async requestAllContacts() {
    let response = await fetch('/api/contacts');
    return await response.json();
  }

  async InsertAllContacts() {
    this.allContactsResponse = await this.requestAllContacts();
    await this.gatherAllTags();

    this.contacts = {contacts: this.allContactsResponse};
    let contactsClone = structuredClone(this.contacts);
    this.tagsStringToArray(contactsClone);
    let hbScript = document.querySelector('#contacts');

    // let contactPartialScript = document.querySelector('#contactTemplate');
    // let contactsScript = document.querySelector('#contacts');
    //
    // let contacts = Handlebars.compile(contactsScript.innerHTML);
    // let contactTemplate = Handlebars.compile(contactPartialScript.innerHTML);
    //
    // Handlebars.registerPartial('contactTemplate', contactPartialScript.innerHTML)

    this.contactsRow.innerHTML = '';
    this.compileAndRenderHandlebarsTemplate(contactsClone, hbScript, this.contactsRow, 'beforeend');

    // this.contactsRow.insertAdjacentHTML('beforeend', contacts(contactsClone));

    this.showContactsOrPlaceholder();
  }

  tagsStringToArray(contactsObj) {
    contactsObj.contacts.forEach(contact => {
      contact.tags = contact.tags.split(',');
    });
  }

  gatherAllTags() {
    this.allContactsResponse.forEach(contact => {
      let tags = contact.tags.split(',');
      tags.forEach(tag => {
        if (!this.tags.includes(tag) && tag !== "") this.tags.push(tag);
      });
    });
  }

  insertTags() {
    let tagsInput = this.formContainer.querySelector('div.form-group.has-feedback.form-group-tags');

    let tags = {tags: this.tags};
    let hbScript = document.querySelector('#tags');

    this.compileAndRenderHandlebarsTemplate(tags, hbScript, tagsInput, 'afterend');
  }

  async deleteContact(id) {
    await this.requestDeleteContact(id);
    await this.InsertAllContacts();
  }

  async editContact(id) {
    this.singleContactResponse = await this.requestSingleContact(id);

      this.contact = this.singleContactResponse
      let hbScript = document.querySelector('#edit-contact');

      this.compileAndRenderHandlebarsTemplate(this.contact, hbScript, this.contactForm, 'beforebegin');
      this.formHeader.textContent = 'Edit Contact';
      this.gatherAllTags();
      this.insertTags();
      this.showHideNonFormElements();
  }

  attachContactButtonListeners() {
    this.contactsRow.addEventListener('click', event => {
      event.preventDefault();
      let target = event.target;

      if (target.tagName === 'A') {

        if (target.classList.contains('delete-contact')) {
          let id = target.closest('li').getAttribute('data-id')
          this.deleteContact(id);
        }

        if (target.classList.contains('edit-contact')) {
          let id = target.closest('li').getAttribute('data-id')
          this.editContact(id);
        }

        if (target.classList.contains('contact-tag')) {
          this.showSameTagContacts(target.textContent);
        }
      }
    });
  }

  showSameTagContacts(tag) {
    this.search('tag', tag);
  }

  async requestSingleContact(id) {
    let response = await fetch('/api/contacts/' + id);
    return await response.json();
  }

  async requestDeleteContact(id) {
    await fetch('/api/contacts/' + id, {method: 'DELETE'});
  }

  compileAndRenderHandlebarsTemplate(data, hbScript, insertLocation, position) {
    let contactsTemplate = Handlebars.compile(hbScript.innerHTML);
    insertLocation.insertAdjacentHTML(position, contactsTemplate(data));
  }

  toggleShowHide(element) {
    element.style.display === 'none' ? element.style.display = 'block' : element.style.display = 'none';
  }

  showHideNonFormElements(event) {
    if (event) event.preventDefault();
    [this.formHeader, this.contactsPlaceholder, this.searchPlaceholder, this.searchBar, this.contactsRow].forEach(element => this.toggleShowHide(element));
    this.searchPlaceholder.style.display = 'none';
  }

  showHideFormElements(event) {
    if (event) event.preventDefault();
    if (this.formHeader.textContent !== 'Create New Contact') this.formHeader.textContent = 'Create New Contact';
    this.toggleShowHide(this.contactForm);

    if (this.contactForm.style.display === 'block') {
      this.insertTags();
    } else {
      this.contactForm.querySelector('.tag-buttons').remove();
    }
  }

  attachContactFormSubmitListener() {
    this.submitDataHandler = e => this.submitData(e);
    this.formContainer.addEventListener('submit', this.submitDataHandler);
  }

  async submitData(event) {
    event.preventDefault();
    let form = event.target;
    this.validateContactData(form);
    let json = this.formDataToJson(form);

    if (form.id === 'create') await this.postNewContact(json);
    if (form.id === 'edit') await this.putUpdateContact(json);

    await this.submissionCleanup(event, form)
    form.reset();
  }

  validateContactData(form) {
    this.validateName(form);
    this.validatePhone(form);
    this.validateEmail(form);
    this.validateTags(form);
  }

  validateTags(form) {
    let tags = form.tags.value;
    form.tags.value = tags.replace(/[^a-z\d\s\,]/gi, '').replace(/\s{1,}/g, ',').replace(/\,{2,}/g, ',').trim();
  }

  validateEmail(form) {
    let email = form.email.value;
    form.email.value = email.replace(/[^a-z\d\.@]/ig, '').trim();
  }

  validatePhone(form) {
    let phone = form.phone_number.value;
    form.phone_number.value = phone.replace(/\D/g, '').trim();
  }

  validateName(form) {
    let name = form.full_name.value;
    form.full_name.value = name.replace(/\s{2,}/g, ' ').trim();
  }

  async submissionCleanup(event, form) {
    if (form.id === 'create') this.toggleShowHide(form);
    if (form.id === 'edit') form.remove();

    if (this.formContainer.querySelector('.tag-buttons')) this.formContainer.querySelector('.tag-buttons').remove();
    this.showHideNonFormElements();
    await this.InsertAllContacts();
  }

  async putUpdateContact(data) {
    let headers = { "Content-Type": "application/json", };
    await fetch('/api/contacts' + this.contact.id, {method: 'PUT', headers: headers, body: data});
  }

  formDataToJson(form) {
    let data = new FormData(form);
    let dataObject = Object.fromEntries(data.entries());
    return JSON.stringify(dataObject);
  }

  async postNewContact(data) {
    let headers = { "Content-Type": "application/json", };
    await fetch('/api/contacts', {method: 'POST', headers: headers, body: data});
  }

  attachSearchListener() {
    this.searchBar.addEventListener('keyup', event => {
      this.searchQuery = this.searchInput.value.trim();
      this.search('name');
    });
  }

  search(type, param) {
    this.allResults = [...document.querySelectorAll('li')];

    if (type === 'name') {
      if (this.searchQuery === '') {
        this.showAllResults();
      } else {
        let nameMatch = this.findNameMatch();

        if (nameMatch) {
          let matchIDs = nameMatch.map(match => match.getAttribute('data-id'));
          this.hideTagNonMatches(matchIDs);
          this.searchPlaceholder.style.display = 'none';
          this.contactsRow.style.display = 'block';
        } else {
          this.displayNoMatches();
        }
      }
    }

    if (type === 'tag') {
      let tagMatch = this.findTagMatch(param);
      let matchIDs = tagMatch.map(match => match.getAttribute('data-id'));
      this.hideTagNonMatches(matchIDs);
      this.showContactsButton.parentElement.style.display = 'block';
    }
  }

  showAllContacts(event) {
    if (event) event.stopPropagation();
    if (this.allResults) this.allResults.forEach(contact => contact.style.display = 'block');
    this.showContactsButton.parentElement.style.display = 'none';
  }

  hideTagNonMatches(matchIDs) {
    this.allResults.forEach(contact => {
      if (matchIDs.includes(contact.getAttribute('data-id'))) {
        contact.style.display = 'block';
      } else {
        contact.style.display = 'none';
      }
    });
  }

  findTagMatch(param) {
    return this.allResults.filter(contact => {
      let tagLinks = [...contact.querySelectorAll('a.contact-tag')];
      return tagLinks.some(link => link.textContent.includes(param));
    });
  }

  findNameMatch(query) {
    return this.allResults.filter(contact => {
      let name = contact.querySelector('h3').textContent.toLowerCase();
      return name.startsWith(this.searchQuery.toLowerCase());
    });
  }

  hideNameNonMatches(matchID) {
    this.allResults.forEach(contact => {
      if (contact.getAttribute('data-id') !== matchID) contact.style.display = 'none';
    })
  }

  showAllResults() {
    this.allResults.forEach(contact => contact.style.display = 'block');
    this.searchPlaceholder.style.display = 'none';
    this.contactsRow.style.display = 'block';
  }

  displayNoMatches() {
    let strongText = this.searchPlaceholder.querySelector('strong');
    strongText.textContent = this.searchQuery;
    this.searchPlaceholder.style.display = 'block';
    this.contactsRow.style.display = 'none';
  }
}

new ContactManager();
})();
