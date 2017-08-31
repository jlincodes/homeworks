function titlize(names, callback) {
  let titlized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titlized);
};

// titlize(["Mary", "Brian", "Leo"], (names) => {
//   names.forEach(name => console.log(name));
// });
