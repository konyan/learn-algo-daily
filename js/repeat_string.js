// Complete the repeatedString function below.

function repeatedString(s, n) {
  var originCount = s.split("").filter(item => item == "a").length;
  var repeatCount = Math.floor(n / s.length);
  var reminderCount = n % s.length;
  var reminderArray = [];
  if (reminderCount > 0) {
    var reminderString = s.substring(0, reminderCount);
    reminderArray = reminderString.split("").filter(item => item == "a");
  }
  var result = originCount * repeatCount + reminderArray.length;
  return result;
}

repeatedString("a", 1000000000000);
