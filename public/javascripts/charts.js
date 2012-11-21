function drawPresenceChart(title, xAxis, data)
{
    chart = new Highcharts.Chart({
      chart: {
        renderTo: 'container',
        type: 'bar'
      },
      title: {
        text: 'Presença'
      },
      xAxis: {
        categories: xAxis,
        labels: {
          align: 'right',
          style: {
            fontSize: '13px',
            fontFamily: 'Verdana, sans-serif'
          }
        }
      },
      yAxis: {
        min: 0,
        max: 100,
        title: {
          text: '%'
        }
      },
      legend: {
        enabled: false
      },
      series: [{
        name: 'Presença',
        data: data
      }]
    });

    $('.second_report_links').hide();
 }
    
function drawPieChart(title, data)
{
  chart = new Highcharts.Chart({
    chart: {
      renderTo: 'container',
      plotBackgroundColor: null,
      plotBorderWidth: null,
      plotShadow: false
    },
    title: {
      text: title
    },
    tooltip: {
      formatter: function() {
                         return '<b>'+ this.point.name +'</b>: '+ this.y;
                      }
    },
    plotOptions: {
      pie: {
        allowPointSelect: true,
        cursor: 'pointer',
        dataLabels: {
          enabled: true,
          color: '#000000',
          connectorColor: '#000000',
          formatter: function() {
                               return this.point.name +': '+ Math.round(this.percentage * 10)/10 +' %';
                            }
        }
      }
    },
    series: [{
      type: 'pie',
      name: '',
      data: data
      
    }]
  });
}
