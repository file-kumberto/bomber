
var counterFunctionCall = 0;;
function func() {
    counterFunctionCall = counterFunctionCall + 1;
    var text = 60 - counterFunctionCall;
    console.debug("counterFunctionCall " + counterFunctionCall + "\n");
    return text;
}

