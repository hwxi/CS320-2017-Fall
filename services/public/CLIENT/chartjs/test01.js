
var ctx =
document.getElementById('theChart01').getContext('2d');

var theChart01 =
new
Chart
( ctx
, {
    // The type of chart we want to create
    type: 'line',

    // The data for our dataset
    data: {
	labels: ["January", "February", "March", "April", "May", "June", "July"],
	datasets: [{
	    label: "Data for test01",
	    borderColor: 'rgb(255, 99, 132)',
	    backgroundColor: 'rgb(255, 99, 132)',
	    data: [0, 10, 5, 2, 20, 30, 45],
	}]
    },

    // Configuration options go here
    options: {
	scales: {
	    yAxes: [{
		ticks: {
		    beginAtZero: true
		}
	    }]
	}
    }
  }
);
