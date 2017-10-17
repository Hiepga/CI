{extends file="templates/main.tpl"}

{block name="main_content"}
	<div class="container-fluid">
		<hr>
		<div class="widget-box widget-plain">
			<div class="center">
				<ul class="stat-boxes2">
					<li>
						<div class="left peity_bar_neutral">
							<span>
								<span style="display: none;">2,4,9,7,12,10,12</span>
								<canvas width="50" height="24"></canvas>
							</span>
							+10%
						</div>
						<div class="right"> <strong>15598</strong> Visits </div>
					</li>
					<li>
						<div class="left peity_line_neutral">
							<span>
								<span style="display: none;">10,15,8,14,13,10,10,15</span>
								<canvas width="50" height="24"></canvas>
							</span>
							10%
						</div>
						<div class="right"> <strong>150</strong> New Users </div>
					</li>
					<li>
						<div class="left peity_bar_bad">
							<span>
								<span style="display: none;">3,5,6,16,8,10,6</span>
								<canvas width="50" height="24"></canvas>
							</span>
							-40%
						</div>
						<div class="right"> <strong>4560</strong> Orders</div>
					</li>

					<li>
						<div class="left peity_line_good">
						<span>
							<span style="display: none;">12,6,9,23,14,10,17</span>
							<canvas width="50" height="24"></canvas>
						</span>
						+60%
						</div>
						<div class="right"> <strong>5672</strong> Active Users </div>
					</li>

					<li>
						<div class="left peity_bar_good"><span>12,6,9,23,14,10,13</span>+30%</div>
						<div class="right"> <strong>2560</strong> Register</div>
					</li>
				</ul>
			</div>
		</div>

		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title"> <span class="icon"> <i class="icon-signal"></i> </span>
						<h5>Line chart</h5>
					</div>
					<div class="widget-content">
						<div class="bars"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
{/block}

{block name="block_script"}
	<script src="{$link_backend}js/matrix.charts.js"></script> 
	<script type="text/javascript">
		$(function () {
		    // we use an inline data source in the example, usually data would
		    // be fetched from a server
		    var data = [], totalPoints = 300;
		    function getRandomData() {
		        if (data.length > 0)
		            data = data.slice(1);

		        // do a random walk
		        while (data.length < totalPoints) {
		            var prev = data.length > 0 ? data[data.length - 1] : 50;
		            var y = prev + Math.random() * 10 - 5;
		            if (y < 0)
		                y = 0;
		            if (y > 100)
		                y = 100;
		            data.push(y);
		        }

		        // zip the generated y values with the x values
		        var res = [];
		        for (var i = 0; i < data.length; ++i)
		            res.push([i, data[i]])
		        return res;
		    }

		    // setup control widget
		    var updateInterval = 30;
		    $("#updateInterval").val(updateInterval).change(function () {
		        var v = $(this).val();
		        if (v && !isNaN(+v)) {
		            updateInterval = +v;
		            if (updateInterval < 1)
		                updateInterval = 1;
		            if (updateInterval > 2000)
		                updateInterval = 2000;
		            $(this).val("" + updateInterval);
		        }
		    });

		    // setup plot
		    var options = {
		        series: { shadowSize: 0 }, // drawing is faster without shadows
		        yaxis: { min: 0, max: 100 },
		        xaxis: { show: false }
		    };
		    var plot = $.plot($("#placeholder2"), [ getRandomData() ], options);

		    function update() {
		        plot.setData([ getRandomData() ]);
		        // since the axes don't change, we don't need to call plot.setupGrid()
		        plot.draw();
		        
		        setTimeout(update, updateInterval);
		    }

		    update();
		});
	</script>
	<!--Turning-series-chart-js-->
	<script src="{$link_backend}js/matrix.dashboard.js"></script>

{/block}