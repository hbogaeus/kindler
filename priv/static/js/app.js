// for phoenix_html support, including form and button helpers
// copy the following scripts into your javascript bundle:
// * https://raw.githubusercontent.com/phoenixframework/phoenix_html/v2.10.0/priv/static/phoenix_html.js

document.getElementById("submit").addEventListener("click", function() {
  var file = document.getElementById("file").files[0];

  if (file) {
    var fd = new FormData();
    fd.append("upload", file);
    var request = new XMLHttpRequest();
    request.addEventListener("readystatechange", function(e) {
      /* ReadyState 4 when upload is finished and server closes the connection */

      if (this.readyState === 4) {
        document.getElementById("status").textContent = e.target.statusText;
      }
    });
    request.open("POST", "/upload");
    request.send(fd);
  }
});
