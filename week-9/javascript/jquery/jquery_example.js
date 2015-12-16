// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image

//RELEASE 2:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 3:
  //Add code here to select elements of the DOM
  divClass = $(".mascot");
  bodyH1 = $('h1:first');
  divH1 = $('div h1:first-child');
  img = $('img');


//RELEASE 4:
  // Add code here to modify the css and html of DOM elements

bodyH1.css({'color': 'blue', 'border': '1px solid black', 'visibility': 'visible'});

divH1.html('Chorus Frogs');

// img.css({'border': "1px solid green"})

//RELEASE 5: Event Listener
  // Add the code for the event listener here


// $('img').on(function(){
//     $(this).mouseEnter('src', 'http://www.virginiaherpetologicalsociety.com/amphibians/frogsandtoads/upland-chorus-frog/sp_Upland%20Chorus%20Frog%20(Pseudacris%20feriarum%20feriarum)002.jpg')
//   })

img.on('mouseenter', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.virginiaherpetologicalsociety.com/amphibians/frogsandtoads/upland-chorus-frog/sp_Upland%20Chorus%20Frog%20(Pseudacris%20feriarum%20feriarum)002.jpg')
  img.click(function() {
    img.css({"border": "1px solid green"})
    img.animate({
      width: "50%",
      height: "50%",
      borderWidth: "10px"
    }, 3000, function() {
      img.css({"border": "none"})
      img.animate({
        width: "100%",
        height: "100%"
      }, 3000)
    })
  })

})

img.on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })

//RELEASE 6: Experiment on your own

// img.click(function() {
//   img.css({"border": "1px solid green"})
//   img.animate({
//     width: "50%",
//     height: "50%",
//     borderWidth: "10px"
//   }, 3000, function() {
//     img.css({"border": "none"})
//     img.animate({
//       width: "100%",
//       height: "100%"
//     }, 3000)
//   })
// })




})  // end of the document.ready function: do not remove or write DOM manipulation below this.