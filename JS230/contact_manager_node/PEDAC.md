- single page website
- all requests to server ajax

## Home view

### page header
    - title
### content div
##### top row with search and add contact button
      - two split divs next to each other
      - div with anchor for button
      - div with text input for search
##### contact list row ul
      - displays up to four li elements across but contains unlimited
        - li contacts
          - div heading (contact name)
          - div body (contact info)
          - div footer buttons (edit and delete)
            - delete browser alert pop up are you sure then deletes
            - edit loads edit contact inline page
##### empty row place holder
##### empty search place holder?
### page footer
    - credits

## Add contacts
  - add contact button on top bar (persisetent except when adding contact)
  - button click loads a form with three fields
    - full name, email address, telephone
    - has submit and cancel button
  - cancel returns to home view
  - submit posts the contact to the server and returns to home view with new contact added to list

## Implement contact search
  - search for contacts among contact list
  - "live search"
  - persistent search bar at top except when adding contact
  - search by contact name
    - eliminates contacts that don't match the search query string by each letter
    - returns only the first match?

## Implement tagging feature
  - create tags
    - (ie: "sales", "marketing"...)
  - when adding/editing a contact select from tags and attach to contact
  - click on a tag and show all contacts with tag

## use API server to store and retrieve contacts
  - docs at `http://localhost:3000/doc`
#### Delete contacts
    - DELETE request
    - deletes contact with given id
#### Get all contacts
    - GET request
    - returns JSON formatted array of contact objects
#### get a single contact
    - GET request
    - returns JSON formated contact object with given id
#### save a contact
    - POST request
    - accepts JSON or query string request body
    - responds with jSON of contact object of given id
#### update a contact
    - PUT request
    - accepts JSON or query string request body
    - accepts partial update (dont' have in include data for all fields)
    - responds with jSON of contact object of given id

## Other notes:
  - each contact has a unique numeric ID (1, 2, 3...)
  - feel free to play with object creation patterns that we covered in the previous course.
  - We recommend making use of PEDAC to process the problem and its requirements to break them down into smaller and more manageable problems.
  - The UI isn't too important here since the focus is on the functionality.  

## Other

Demo Page: https://devsaran.github.io/contact-manager-backbone/#home
Project Page: https://launchschool.com/lessons/b2e85240/assignments/adf78182


### Home Page on Load

When we first load the page:

- add contact form hidden
- Add contact and search bar and header viewable
- current contacts or no contacts placeholder shown
  - Check if contacts
    - send a get request to the API for all contacts
  - if no contacts (response from server is empty)
    - show placeholder
  - else
    - show contacts
    - render response from server via handlebars to contact div

    


- input validation?
- delete unused css?
- change css and classnames to stuff i like?