
var startnumber = 60;
var counterFunctionCall = 0;
var interval = 1000;
function func() {
    console.debug("counterFunctionCall " + counterFunctionCall + "\n");
    var counterFunctionCall = counterFunctionCall + 1;
    var text = startnumber - counterFunctionCall;
    return text;
}

function resetTimer() {
    var number = 0;
    var counterFunctionCall = number;
    interval = 500;
    console.debug("counterFunctionCall " + counterFunctionCall + "\n");
}

