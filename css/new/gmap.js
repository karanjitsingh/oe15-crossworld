
      var map;
      function initialize() //function initializes Google map
      {
        var googleMapOptions =
        {
            center: mapCenter, // map center
            zoom: 2, //zoom level, 0 = earth view to higher value
            panControl: true, //enable pan Control
            zoomControl: true, //enable zoom control
            zoomControlOptions: {
            style: google.maps.ZoomControlStyle.SMALL //zoom control size
             },
            scaleControl: true, // enable scale control
            mapTypeId: google.maps.MapTypeId.ROADMAP // google map type
        };
map = new google.maps.Map(document.getElementById("google_map"), googleMapOptions);
      }


var mapCenter = new google.maps.LatLng(54.19265, 16.1779); //Google map Coordinates

function addMyMarker() { //function that will add markers on button click
            var marker = new google.maps.Marker({
            position:mapCenter,
            map: map,
            draggable:true,
            animation: google.maps.Animation.DROP,
            title:"This a new marker!",
            icon: "http://maps.google.com/mapfiles/ms/micons/blue.png"
            });
                      }







$(document).ready(function(){

  $('input[value=que1]').click(function(){
    if ($('input[value=a1]').prop("checked")) {
      addMyMarker();
    } else{
      alert("wrong answer");
    };
  });
});    


var mapCenter1 = new google.maps.LatLng(28.6139, 77.2090); //Google map Coordinates

function addMyMarker2() { //function that will add markers on button click
            var marker = new google.maps.Marker({
            position:mapCenter1,
            map: map,
            draggable:true,
            animation: google.maps.Animation.DROP,
            title:"This a new marker!",
            icon: "http://maps.google.com/mapfiles/ms/micons/blue.png"
            });
                      }


$(document).ready(function(){

  $('input[value=que2]').click(function(){
    if ($('input[value=a1]').prop("checked")) {
      addMyMarker2();
    } else{
      alert("wrong answer");
    };
  });
});    