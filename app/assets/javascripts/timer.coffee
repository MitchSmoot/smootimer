# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

const hotKeys = (e) => {
    let windowEvent = window.event ? event : e;
    if (windowEvent.keyCode === 66 && windowEvent.ctrlKey) {
       const searchBar = document.querySelector('#searchBar');
       searchBar.focus();     
    }
}
document.onkeydown = hotKeys;
