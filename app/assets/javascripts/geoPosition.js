function getGeoLocation() {
  navigator.geolocation.getCurrentPosition(setGeoCookie);
    navigator.geolocation.getCurrentPosition(show_map, handle_error);
}

function setGeoCookie(position) {
  var cookie_val = position.coords.latitude + "|" + position.coords.longitude;
  document.cookie = "lat_lng=" + escape(cookie_val);
}

function show_map(position) {
  var latitude = position.coords.latitude;
  var longitude = position.coords.longitude;
  // let's show a map or do something interesting!
}

function handle_error(err) {
  if (err.code == 1) {
    // user said no! send lighthouse coordinates
  }
}

