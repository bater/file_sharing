function startTimer(duration, display) {
  var timer = duration, minutes, seconds;
  setInterval(function () {
    minutes = parseInt(timer / 60, 10);
    seconds = parseInt(timer % 60, 10);

    display.textContent = stringRjust(minutes) + ":" + stringRjust(seconds);

    if (--timer < 0) {
      timer = duration;
    }
  }, 1000);
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
