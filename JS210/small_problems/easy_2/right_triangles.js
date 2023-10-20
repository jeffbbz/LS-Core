function triangle(number) {
  for (let starNum = 1; starNum <= number; starNum += 1) {
    let spaceNum = number - starNum;
    let spaces = ' '.repeat(spaceNum);
    let stars = '*'.repeat(starNum);
    console.log(spaces + stars);
  }
}

triangle(5);

//     *
//    **
//   ***
//  ****
// *****


triangle(9);

//         *
//        **
//       ***
//      ****
//     *****
//    ******
//   *******
//  ********
// *********