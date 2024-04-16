"use strict";

function createStudent(name, year) {
  return {
    name,
    year,
    courses: [],
    info() {
      console.log(`${this.name} is a ${this.year} year student`)
    },
    listCourses() {
      return this.courses;
    },
    addCourse(course) {
      this.courses.push(course);
    },
    addNote(code, note) {
      this.courses.forEach(course => {
        if (course.code === code && !course.note) {
          course.note = note;
        } else if (course.code === code) {
          course.note += '; ' + note;
        }
      });
    },
    updateNote(code, update) {
      this.courses.forEach(course => {
        if (course.code === code) course.note = update;
      });
    },
    viewNotes() {
      let coursesWithNotes = this.courses.filter(course => course.note);
      coursesWithNotes.forEach(course => console.log(`${course.name}: ${course.note}`));
    }
  };
}

let school = {
  students: [],
  addStudent(name, year) {
    if (!['1st', '2nd', '3rd', '4th', '5th'].includes(year)) {
      console.log('Invalid Year');
    } else {
      let student = createStudent(name, year);
      this.students.push(student);
      return student;
    }
  },
  enrollStudent(name, course) {
    let student = this.findStudent(name);
    student.addCourse(course);
  },
  addGrade(studentName, courseName, grade) {
    let student = this.findStudent(studentName);
    let course = this.findCourse(student, courseName);
    course.grade = grade;
  },
  getReportCard(name) {
    let studentCourses = this.findStudent(name).courses;
    studentCourses.forEach(course => {
      if (course.grade) {
        console.log(`${course.name}: ${course.grade}`);
      } else {
        console.log(`${course.name}: In progress`);
      }
    });
  },
  findStudent(name) {
    return this.students.find(student => student.name === name);
  },
  findCourse(student, courseName) {
    return student.courses.find(course => course.name === courseName);
  },
  courseReport(courseName) {
    let grades = [];
    let studentsInCourse = this.findStudentsInCourse(courseName);

    console.log(`=${courseName} Grades=`)

    studentsInCourse.forEach(student => {
      let course = this.findCourse(student, courseName);
      if (course.grade) {
        grades.push(course.grade);
        console.log(`${student.name}: ${course.grade}`);
      }
    });

    if (grades.length === 0) return undefined

    console.log('---')
    console.log(`Course Average: ${this.averageGrades(grades)}`);
    console.log('')
  },
  averageGrades(grades) {
    return grades.reduce((sum, num) => sum + num) / grades.length;
  },
  findStudentsInCourse(courseName) {
    return this.students.filter(student => student.courses.some(course => course.name === courseName));
  },
};

school.addStudent('foo', '3rd');
school.enrollStudent('foo', { name: 'Math', code: 101, grade: 95, })
school.enrollStudent('foo', { name: 'Advanced Math', code: 102, grade: 90, })
school.enrollStudent('foo', { name: 'Physics', code: 202, })

school.addStudent('bar', '1st');
school.enrollStudent('bar', { name: 'Math', code: 101, grade: 91, })

school.addStudent('qux', '2nd');
school.enrollStudent('qux', { name: 'Math', code: 101, grade: 93, })
school.enrollStudent('qux', { name: 'Advanced Math', code: 102, grade: 90, })

school.addGrade('bar', 'Math', 87);
school.addGrade('bar', 'Math', 91);

school.getReportCard('foo')

school.courseReport('Math');
school.courseReport('Advanced Math');
school.courseReport('Physics');
