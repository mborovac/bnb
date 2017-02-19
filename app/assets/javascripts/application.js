// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require moment
//= require fullcalendar
//= require_tree .

$(function() {
	$('#calendar').fullCalendar({
		header: {
      left: 'prevYear prev',
			center: 'today,title',
			right: 'next nextYear'
		},
    aspectRatio: 1.9,
    editable: false,
		eventLimit: true,
    firstDay: 1,
    columnFormat: {
      month: 'dddd'
    },
    fixedWeekCount: false,
    overlap: false,
    buttonIcons: {
      prevYear: false,
      nextYear: false
    },
    viewRender: function(view) {
      // setting previous/next year button text
      var d = $('#calendar').fullCalendar('getDate');
      $(".fc-prevYear-button").text(parseInt(d.year()) - 1);
      $(".fc-nextYear-button").text(parseInt(d.year()) + 1);

      // adding bootstrap's button classes to buttons
      $(".fc-prev-button").addClass('btn btn-success');
      $(".fc-next-button").addClass('btn btn-success');
      // $(".fc-today-button").addClass('btn btn-info');
    },
    events: '/events.json',
    eventRender: function(event, element, view) {
      console.log(element)
    }
	});
});
