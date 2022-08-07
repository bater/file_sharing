function startTimer(duration, display) {
  var timer = duration, minutes, seconds;
  var looper = setInterval(frame, 1000);
  function frame() {
    minutes = parseInt(timer / 60, 10);
    seconds = parseInt(timer % 60, 10);

    display.textContent = stringRjust(minutes) + ":" + stringRjust(seconds);

    if (--timer < 0) {
      clearInterval(looper);
      document.getElementById('remain-text').innerHTML = "Time`s up! Redirct to indext now.";
      window.location.href = '/';
    }
  }
}

function stringRjust(int) {
  return int < 10 ? "0" + int : int;
}

window.onload = function () {
  var display = document.querySelector('#time');
  if (display != null) {
    var duration = parseInt(display.dataset.remain, 10);
    startTimer(duration, display);
  }
};
