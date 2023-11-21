

consolelog("JS Started");

var console = {
    log: function(arg){
        consolelog(arg);
    }
}

var a = ["a", "b"];
var dict = {};
a.forEach((item,index) => dict["event_" +  index] = () => {console.log(item)});

closureTest(dict);

/* PROMİSE CODES
var lazy = false;
var data = false;

new Promise(res => res()).then(() => {
    data = true;
    console.log("continue Render");
});
console.log("event Complete");
console.log("data:" + data);

let syncResolved = false;
new Promise(res => res()).then(() => setTimeout(() => { syncResolved = true}));
//typeof(doNothing) != "undefined" && doNothing();
doNothing();
const syncResolveProblem = syncResolved === true;
console.log("syncResolveProblem:" + syncResolveProblem);
 */
