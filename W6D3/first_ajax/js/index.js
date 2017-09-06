console.log("Hello from the JavaScript console!");

$.ajax({
  type: 'GET',
  // url: "http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=1833ae133bacd21f1acde07a44b0fe68",
  url: 'http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=bcb83c4b54aee8418983c2aff3073b3b',
  success(data) {
    console.log(data);
  },
  error() {
    console.log('An error occurred.');
  },
});
console.log('AJAX dispatched.');
