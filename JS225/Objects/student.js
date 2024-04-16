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

let foo = createStudent('Foo', '1st');
foo.info();
// "Foo is a 1st year student"
console.log(foo.listCourses());
// [];
foo.addCourse({ name: 'Math', code: 101 });
foo.addCourse({ name: 'Advanced Math', code: 102 });
console.log(foo.listCourses());
// // [{ name: 'Math', code: 101 }, { name: 'Advanced Math', code: 102 }]
foo.addNote(101, 'Fun course');
foo.addNote(101, 'Remember to study for algebra');
foo.viewNotes();
// // "Math: Fun course; Remember to study for algebra"
foo.addNote(102, 'Difficult subject');
foo.viewNotes();
// // "Math: Fun course; Remember to study for algebra"
// // "Advance Math: Difficult subject"
foo.updateNote(101, 'Fun course');
foo.viewNotes();
// // "Math: Fun course"
// // "Advanced Math: Difficult subject"