function doGet(){
	var output = getEvents();
	Logger.log(output);
	return ContentService.createTextOutput(output);
}

function getEvents(){
	var calendar = CalendarApp.getCalendarsByName('calendar-alarm')[0];
	var now = new Date();
	var offset = now.getTimezoneOffset() * -60000;
	var later = new Date();
	var interval = 3600; //How long to check in the future for events
	var str = "";
	later.setSeconds(now.getSeconds() + interval);
	str += '|';
	str += (now.getTime()+offset).toString().slice(0, -3);
	str += ' ';

	var events = calendar.getEvents(now, later);
	if(events.length >= 1)
		str += (events[0].getStartTime().getTime()+offset).toString.slice(0, -3);
	else
		str += '0';
	return str;
}
