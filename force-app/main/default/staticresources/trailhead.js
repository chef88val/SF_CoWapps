function helloWorld() {
 //javascript:(function(){ 
    var pageName = prompt('Visualforce page name:'); 
    $A.get("e.force:navigateToURL").setParams(
        {"url": "/apex/" + pageName}).fire();})();//-->
}