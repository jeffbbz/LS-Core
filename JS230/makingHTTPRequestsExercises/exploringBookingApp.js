// How many staff are there?

let staffRequest = new XMLHttpRequest();
staffRequest.open('get', '/api/staff_members');
staffRequest.responseType = 'json'

staffRequest.addEventListener('load', event => {
  console.log(staffRequest.response.length) // 5
});

staffRequest.send();

// How many students are there?

let studentRequest = new XMLHttpRequest();
studentRequest.open('get', '/api/students');
studentRequest.responseType = 'json'

studentRequest.addEventListener('load', event => {
  console.log(studentRequest.response.length) // 5
});

studentRequest.send();

// How many schedules exist?

let scheduleRequest = new XMLHttpRequest();
scheduleRequest.open('get', '/api/schedules');
scheduleRequest.responseType = 'json'

scheduleRequest.addEventListener('load', event => {
  console.log(scheduleRequest.response.length) // 9
});

scheduleRequest.send();

// How many schedules have bookings?

let scheduleBookingsRequest = new XMLHttpRequest();
scheduleBookingsRequest.open('get', '/api/schedules');
scheduleBookingsRequest.responseType = 'json'

scheduleBookingsRequest.addEventListener('load', event => {
  let bookings = scheduleBookingsRequest.response.filter(schedule => schedule.student_email);
  console.log(bookings.length) // 3
});

scheduleBookingsRequest.send();

// Do all staff have schedules?
// There is no route that will provide this information.

// Did all students book a schedule?
// There is no route that will provide this information.

////////////////////////------------------------------------------

function requestData(url) {
  return new Promise(resolve =>  {
    let request = new XMLHttpRequest();
    request.open('GET', url);
    request.responseType = 'json';

    request.addEventListener('load', event => {
      resolve(request.response);
    });

    request.send();
  });
}

requestData('/api/staff_members').then(value => console.log(value.length)); // 5
requestData('/api/students').then(value => console.log(value.length));      // 5
requestData('/api/schedules').then(value => console.log(value.length));     // 9
requestData('/api/schedules').then(value => console.log(value.filter(schedule => schedule.student_email).length));     // 3

////////////////////////------------------------------------------

function requestData2(url) {
  return new Promise(resolve =>  {
    let request = new XMLHttpRequest();
    request.open('GET', url);
    request.responseType = 'json';

    request.addEventListener('load', event => {
      resolve(request.response);
    });

    request.send();
  });
}

async function processAndLogRequest(url, callback) {
  let response = await requestData2(url);
  console.log(callback(response));
}

processAndLogRequest('/api/staff_members', response => response.length);
processAndLogRequest('/api/students', response => response.length);
processAndLogRequest('/api/schedules', response => response.length);
processAndLogRequest('/api/schedules', response => response.filter(schedule => schedule.student_email).length);