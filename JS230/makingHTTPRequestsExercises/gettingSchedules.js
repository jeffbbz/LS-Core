// Attempt 2:

function getOpenSchedules2() {
  let request = new XMLHttpRequest();
  request.open('GET', '/api/schedules');
  request.timeout = 5000;
  request.responseType = 'json';

  request.addEventListener('load', event => {
    let allSchedules = request.response;
    let openSchedules = allSchedules.filter(schedule => !schedule.student_email);

    if (openSchedules.length >= 1) {
      let count = StaffScheduleCount(openSchedules);
      alert(formatCount(count));
    } else {
      alert("There are no schedules available for booking");
    }
  });

  request.addEventListener('timeout', event => {
    alert('request timed out!');
  })

  request.addEventListener('loadend', event => {
    alert('Request was completed');
  })

  request.send();
}

function formatCount(countObj) {
  let countString = '';

  for (let [k, v] of Object.entries(countObj)) {
    countString += `${k}: ${v}\n`;
  }

  return countString;
}

function StaffScheduleCount(schedules) {
  let count = {};

  schedules.forEach(schedule => {
    if (count[`staff ${schedule.staff_id}`]) {
      count[`staff ${schedule.staff_id}`] += 1;
    } else {
      count[`staff ${schedule.staff_id}`] = 1;
    }
  });

  return count;
}

//
// // Attempt 1:
//
// function makeRequest(httpMethod, url) {
//   return new Promise((resolve, reject) => {
//     let request = new XMLHttpRequest();
//     request.open(httpMethod, url);
//     request.timeout = 5000;
//     request.responseType = 'json';
//
//     request.addEventListener('load', event => {
//       resolve(request.response);
//     });
//
//     request.addEventListener('timeout', event => {
//       reject('request timed out!');
//     })
//
//     request.send();
//   });
// }
//
// async function getOpenSchedules1() {
//   try {
//     let allSchedules = await makeRequest('GET', '/api/schedules');
//     let openSchedules = allSchedules.filter(schedule => !schedule.student_email);
//     if (openSchedules.length >= 1) {
//       let count = StaffScheduleCount(openSchedules);
//       let countString = '';
//
//       for (let [k, v] of Object.entries(count)) {
//         countString += `${k}: ${v}\n`;
//       }
//
//       alert (countString)
//     } else {
//       alert("There are no schedules available for booking");
//     }
//   } catch (error) {
//     alert(error);
//   } finally {
//     console.log('Request was completed')
//   }
// }
//
// function StaffScheduleCount(schedules) {
//   let count = {};
//
//   schedules.forEach(schedule => {
//     if (count[`staff ${schedule.staff_id}`]) {
//       count[`staff ${schedule.staff_id}`] += 1;
//     } else {
//       count[`staff ${schedule.staff_id}`] = 1;
//     }
//   });
//
//   return count;
// }
//
//
