<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
#morris-bar-chart {
  -webkit-transition: all 2s; /* Safari */
  transition: all 2s;
}

#morris-table-left-div {
  /*height: 350px;
  overflow: hidden;*/
}
.header-row {
  padding: 0 18px;
}
.header-column {
  font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
  display: inline-block;
  font-weight: 300;
  color: #555;
  /*border: 1px solid grey;*/
  padding: 0px;
  width: 24%;
  box-sizing: border-box; /*content-box|border-box|initial|inherit;*/
}
.list-group-column {
  font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
  display: inline-block;
  font-weight: 300;
  color: #555;
  /*border: 1px solid grey;*/
  padding: 0px;
  width: 24%;
}
</style>


<div id="wrapper">


	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Dashboard</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-comments fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">26</div>
								<div>New Comments!</div>
							</div>
						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-green">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-tasks fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">12</div>
								<div>New Tasks!</div>
							</div>
						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-yellow">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-shopping-cart fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">124</div>
								<div>New Orders!</div>
							</div>
						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-3 col-md-6">
				<div class="panel panel-red">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-3">
								<i class="fa fa-support fa-5x"></i>
							</div>
							<div class="col-xs-9 text-right">
								<div class="huge">13</div>
								<div>Support Tickets!</div>
							</div>
						</div>
					</div>
					<a href="#">
						<div class="panel-footer">
							<span class="pull-left">View Details</span> <span
								class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
							<div class="clearfix"></div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-8">
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bar-chart-o fa-fw"></i> Area Chart Example
						<div class="pull-right">
							<div class="btn-group">
								<button type="button"
									class="btn btn-default btn-xs dropdown-toggle"
									data-toggle="dropdown">
									Actions <span class="caret"></span>
								</button>
								<ul class="dropdown-menu pull-right" role="menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div id="morris-area-chart"></div>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bar-chart-o fa-fw"></i> Bar Chart Example
						<div class="pull-right">
							<div class="btn-group">
								<button type="button"
									class="btn btn-default btn-xs dropdown-toggle"
									data-toggle="dropdown">
									Actions <span class="caret"></span>
								</button>
								<ul class="dropdown-menu pull-right" role="menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-4">
								<div id="morris-table-left-div" class="table-responsive">
									<table id="first-morris-table"
										class="table table-bordered table-hover table-striped">
										<thead>
											<tr>
												<th>#</th>
												<th>Date</th>
												<th>Time</th>
												<th>Amount</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>3326</td>
												<td>10/21/2013</td>
												<td>3:29 PM</td>
												<td>$321.33</td>
											</tr>
											<tr>
												<td>3325</td>
												<td>10/21/2013</td>
												<td>3:20 PM</td>
												<td>$234.34</td>
											</tr>
											<tr>
												<td>3324</td>
												<td>10/21/2013</td>
												<td>3:03 PM</td>
												<td>$724.17</td>
											</tr>
											<tr>
												<td>3323</td>
												<td>10/21/2013</td>
												<td>3:00 PM</td>
												<td>$23.71</td>
											</tr>
											<tr>
												<td>3322</td>
												<td>10/21/2013</td>
												<td>2:49 PM</td>
												<td>$8345.23</td>
											</tr>
											<tr>
												<td>3321</td>
												<td>10/21/2013</td>
												<td>2:23 PM</td>
												<td>$245.12</td>
											</tr>
											<tr>
												<td>3320</td>
												<td>10/21/2013</td>
												<td>2:15 PM</td>
												<td>$5663.54</td>
											</tr>
											<tr>
												<td>3319</td>
												<td>10/21/2013</td>
												<td>2:13 PM</td>
												<td>$943.45</td>
											</tr>
										</tbody>
									</table>


								</div>
								<!-- /.table-responsive -->
							</div>
							<!-- /.col-lg-4 (nested) -->
							<div class="col-lg-8">
								<form action="">
									<input type="radio" name="graphtype" value="AmountWorked"
										onclick="updateMorrisBar(1)"> Amount Worked
									&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="graphtype"
										value="FTE" onclick="updateMorrisBar(2)"> FTE
									&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="graphtype"
										value="ResourceCount" onclick="updateMorrisBar(3)">
									Resource Count
								</form>
								<div id="morris-bar-chart"></div>
							</div>
							<!-- /.col-lg-8 (nested) -->
						</div>
						<!-- /.row -->
					</div>

					<div class="row">
						<div class="col-lg-12">
							<div class="table-responsive">
								<table id="second-morris-table"
									class="table table-bordered table-hover table-striped">
									<thead>
										<tr>
											<th>#</th>
											<th>Date</th>
											<th>Time</th>
											<th>Amount</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>3326</td>
											<td>10/21/2013</td>
											<td>3:29 PM</td>
											<td>$321.33</td>
										</tr>
										<tr>
											<td>3325</td>
											<td>10/21/2013</td>
											<td>3:20 PM</td>
											<td>$234.34</td>
										</tr>
										<tr>
											<td>3324</td>
											<td>10/21/2013</td>
											<td>3:03 PM</td>
											<td>$724.17</td>
										</tr>
										<tr>
											<td>3323</td>
											<td>10/21/2013</td>
											<td>3:00 PM</td>
											<td>$23.71</td>
										</tr>
										<tr>
											<td>3322</td>
											<td>10/21/2013</td>
											<td>2:49 PM</td>
											<td>$8345.23</td>
										</tr>
										<tr>
											<td>3321</td>
											<td>10/21/2013</td>
											<td>2:23 PM</td>
											<td>$245.12</td>
										</tr>
										<tr>
											<td>3320</td>
											<td>10/21/2013</td>
											<td>2:15 PM</td>
											<td>$5663.54</td>
										</tr>
										<tr>
											<td>3319</td>
											<td>10/21/2013</td>
											<td>2:13 PM</td>
											<td>$943.45</td>
										</tr>
									</tbody>
								</table>

							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.col-lg-12 -->
					</div>
					<!-- /.row -->


					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-clock-o fa-fw"></i> Responsive Timeline
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<ul class="timeline">
							<li>
								<div class="timeline-badge">
									<i class="fa fa-check"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Lorem ipsum dolor</h4>
										<p>
											<small class="text-muted"><i class="fa fa-clock-o"></i>
												11 hours ago via Twitter</small>
										</p>
									</div>
									<div class="timeline-body">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Libero laboriosam dolor perspiciatis omnis
											exercitationem. Beatae, officia pariatur? Est cum veniam
											excepturi. Maiores praesentium, porro voluptas suscipit
											facere rem dicta, debitis.</p>
									</div>
								</div>
							</li>
							<li class="timeline-inverted">
								<div class="timeline-badge warning">
									<i class="fa fa-credit-card"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Lorem ipsum dolor</h4>
									</div>
									<div class="timeline-body">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Autem dolorem quibusdam, tenetur commodi provident
											cumque magni voluptatem libero, quis rerum. Fugiat esse
											debitis optio, tempore. Animi officiis alias, officia
											repellendus.</p>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Laudantium maiores odit qui est tempora eos, nostrum
											provident explicabo dignissimos debitis vel! Adipisci eius
											voluptates, ad aut recusandae minus eaque facere.</p>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-badge danger">
									<i class="fa fa-bomb"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Lorem ipsum dolor</h4>
									</div>
									<div class="timeline-body">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Repellendus numquam facilis enim eaque, tenetur nam id
											qui vel velit similique nihil iure molestias aliquam,
											voluptatem totam quaerat, magni commodi quisquam.</p>
									</div>
								</div>
							</li>
							<li class="timeline-inverted">
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Lorem ipsum dolor</h4>
									</div>
									<div class="timeline-body">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Voluptates est quaerat asperiores sapiente, eligendi,
											nihil. Itaque quos, alias sapiente rerum quas odit! Aperiam
											officiis quidem delectus libero, omnis ut debitis!</p>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-badge info">
									<i class="fa fa-save"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Lorem ipsum dolor</h4>
									</div>
									<div class="timeline-body">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Nobis minus modi quam ipsum alias at est molestiae
											excepturi delectus nesciunt, quibusdam debitis amet, beatae
											consequuntur impedit nulla qui! Laborum, atque.</p>
										<hr>
										<div class="btn-group">
											<button type="button"
												class="btn btn-primary btn-sm dropdown-toggle"
												data-toggle="dropdown">
												<i class="fa fa-gear"></i> <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Action</a></li>
												<li><a href="#">Another action</a></li>
												<li><a href="#">Something else here</a></li>
												<li class="divider"></li>
												<li><a href="#">Separated link</a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Lorem ipsum dolor</h4>
									</div>
									<div class="timeline-body">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Sequi fuga odio quibusdam. Iure expedita, incidunt unde
											quis nam! Quod, quisquam. Officia quam qui adipisci quas
											consequuntur nostrum sequi. Consequuntur, commodi.</p>
									</div>
								</div>
							</li>
							<li class="timeline-inverted">
								<div class="timeline-badge success">
									<i class="fa fa-graduation-cap"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Lorem ipsum dolor</h4>
									</div>
									<div class="timeline-body">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Deserunt obcaecati, quaerat tempore officia voluptas
											debitis consectetur culpa amet, accusamus dolorum fugiat,
											animi dicta aperiam, enim incidunt quisquam maxime neque
											eaque.</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-8 -->
			<div class="col-lg-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bell fa-fw"></i> Notifications Panel
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="list-group-header">
							<div class="header-row">
								<div class="header-column">FactSheet Name</div>
								<div class="header-column">
									FTEs<br>Requested
								</div>
								<div class="header-column">
									Point<br>of Contact
								</div>
								<div class="header-column">Presenting</div>
							</div>
						</div>
						<div class="list-group">
							<a href="#" class="list-group-item">
								<div class="list-group-row">
									<div class="list-group-column">PR Expansion for SBO</div>
									<div class="list-group-column">.60</div>
									<div class="list-group-column">Aneta Erdie</div>
									<div class="list-group-column">8/10/2016</div>
								</div>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-comment fa-fw"></i> New Comment <span
								class="pull-right text-muted small"><em>4 minutes
										ago</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-twitter fa-fw"></i> 3 New Followers <span
								class="pull-right text-muted small"><em>12 minutes
										ago</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-envelope fa-fw"></i> Message Sent <span
								class="pull-right text-muted small"><em>27 minutes
										ago</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-tasks fa-fw"></i> New Task <span
								class="pull-right text-muted small"><em>43 minutes
										ago</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-upload fa-fw"></i> Server Rebooted <span
								class="pull-right text-muted small"><em>11:32 AM</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-bolt fa-fw"></i> Server Crashed! <span
								class="pull-right text-muted small"><em>11:13 AM</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-warning fa-fw"></i> Server Not Responding <span
								class="pull-right text-muted small"><em>10:57 AM</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-shopping-cart fa-fw"></i> New Order Placed <span
								class="pull-right text-muted small"><em>9:49 AM</em> </span>
							</a> <a href="#" class="list-group-item"> <i
								class="fa fa-money fa-fw"></i> Payment Received <span
								class="pull-right text-muted small"><em>Yesterday</em> </span>
							</a>
						</div>
						<!-- /.list-group -->
						<a href="#" class="btn btn-default btn-block">View All Alerts</a>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-bar-chart-o fa-fw"></i> Donut Chart Example
					</div>
					<div class="panel-body">
						<div id="morris-donut-chart"></div>
						<a href="#" class="btn btn-default btn-block">View Details</a>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
				<div class="chat-panel panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-comments fa-fw"></i> Chat
						<div class="btn-group pull-right">
							<button type="button"
								class="btn btn-default btn-xs dropdown-toggle"
								data-toggle="dropdown">
								<i class="fa fa-chevron-down"></i>
							</button>
							<ul class="dropdown-menu slidedown">
								<li><a href="#"> <i class="fa fa-refresh fa-fw"></i>
										Refresh
								</a></li>
								<li><a href="#"> <i class="fa fa-check-circle fa-fw"></i>
										Available
								</a></li>
								<li><a href="#"> <i class="fa fa-times fa-fw"></i> Busy
								</a></li>
								<li><a href="#"> <i class="fa fa-clock-o fa-fw"></i>
										Away
								</a></li>
								<li class="divider"></li>
								<li><a href="#"> <i class="fa fa-sign-out fa-fw"></i>
										Sign Out
								</a></li>
							</ul>
						</div>
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<ul class="chat">
							<li class="left clearfix"><span class="chat-img pull-left">
									<img src="http://placehold.it/50/55C1E7/fff" alt="User Avatar"
									class="img-circle" />
							</span>
								<div class="chat-body clearfix">
									<div class="header">
										<strong class="primary-font">Jack Sparrow</strong> <small
											class="pull-right text-muted"> <i
											class="fa fa-clock-o fa-fw"></i> 12 mins ago
										</small>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Curabitur bibendum ornare dolor, quis ullamcorper ligula
										sodales.</p>
								</div></li>
							<li class="right clearfix"><span class="chat-img pull-right">
									<img src="http://placehold.it/50/FA6F57/fff" alt="User Avatar"
									class="img-circle" />
							</span>
								<div class="chat-body clearfix">
									<div class="header">
										<small class=" text-muted"> <i
											class="fa fa-clock-o fa-fw"></i> 13 mins ago
										</small> <strong class="pull-right primary-font">Bhaumik
											Patel</strong>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Curabitur bibendum ornare dolor, quis ullamcorper ligula
										sodales.</p>
								</div></li>
							<li class="left clearfix"><span class="chat-img pull-left">
									<img src="http://placehold.it/50/55C1E7/fff" alt="User Avatar"
									class="img-circle" />
							</span>
								<div class="chat-body clearfix">
									<div class="header">
										<strong class="primary-font">Jack Sparrow</strong> <small
											class="pull-right text-muted"> <i
											class="fa fa-clock-o fa-fw"></i> 14 mins ago
										</small>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Curabitur bibendum ornare dolor, quis ullamcorper ligula
										sodales.</p>
								</div></li>
							<li class="right clearfix"><span class="chat-img pull-right">
									<img src="http://placehold.it/50/FA6F57/fff" alt="User Avatar"
									class="img-circle" />
							</span>
								<div class="chat-body clearfix">
									<div class="header">
										<small class=" text-muted"> <i
											class="fa fa-clock-o fa-fw"></i> 15 mins ago
										</small> <strong class="pull-right primary-font">Bhaumik
											Patel</strong>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Curabitur bibendum ornare dolor, quis ullamcorper ligula
										sodales.</p>
								</div></li>
						</ul>
					</div>
					<!-- /.panel-body -->
					<div class="panel-footer">
						<div class="input-group">
							<input id="btn-input" type="text" class="form-control input-sm"
								placeholder="Type your message here..." /> <span
								class="input-group-btn">
								<button class="btn btn-warning btn-sm" id="btn-chat">
									Send</button>
							</span>
						</div>
					</div>
					<!-- /.panel-footer -->
				</div>
				<!-- /.panel .chat-panel -->
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	var MorrisBarReturnObject;
	var MorrisDonutReturnObject;

	$(function() {

		Morris.Area({
			element : 'morris-area-chart',
			data : [ {
				period : '2010 Q1',
				iphone : 2666,
				ipad : null,
				itouch : 2647
			}, {
				period : '2010 Q2',
				iphone : 2778,
				ipad : 2294,
				itouch : 2441
			}, {
				period : '2010 Q3',
				iphone : 4912,
				ipad : 1969,
				itouch : 2501
			}, {
				period : '2010 Q4',
				iphone : 3767,
				ipad : 3597,
				itouch : 5689
			}, {
				period : '2011 Q1',
				iphone : 6810,
				ipad : 1914,
				itouch : 2293
			}, {
				period : '2011 Q2',
				iphone : 5670,
				ipad : 4293,
				itouch : 1881
			}, {
				period : '2011 Q3',
				iphone : 4820,
				ipad : 3795,
				itouch : 1588
			}, {
				period : '2011 Q4',
				iphone : 15073,
				ipad : 5967,
				itouch : 5175
			}, {
				period : '2012 Q1',
				iphone : 10687,
				ipad : 4460,
				itouch : 2028
			}, {
				period : '2012 Q2',
				iphone : 8432,
				ipad : 5713,
				itouch : 1791
			} ],
			xkey : 'period',
			ykeys : [ 'iphone', 'ipad', 'itouch' ],
			labels : [ 'iPhone', 'iPad', 'iPod Touch' ],
			pointSize : 2,
			hideHover : 'auto',
			resize : true
		});

		MorrisDonutReturnObject = Morris.Donut({
			element : 'morris-donut-chart',
			data : [ {
				label : "Download Sales",
				value : 12
			}, {
				label : "In-Store Sales",
				value : 30
			}, {
				label : "Mail-Order Sales",
				value : 20
			} ],
			resize : true
		});

		MorrisBarReturnObject = Morris.Bar({
			element : 'morris-bar-chart',
			data : [ {
				y : 'ADEP',
				a : 16361.8,
			}, {
				y : 'EAD',
				a : 8205.05,
			}, {
				y : 'EID',
				a : 137.5,
			}, {
				y : 'EMD',
				a : 1296.05,
			}, {
				y : 'ESMD',
				a : 514,
			}, {
				y : 'EWD',
				a : 323.5,
			}, {
				y : 'ITMD',
				a : 454.5,
			} ],
			xkey : 'y',
			ykeys : [ 'a' ],
			labels : [ 'Actual Work' ],
			hideHover : 'auto',
			resize : true
		});

		$('#morris-donut-chart cvg path').each(function(index) {
			addEventListener('mouseout', showDefaultDonutData());
		});

		$("#morris-bar-chart svg rect").on('click', function() {
			setFilterForBottomMorrisTable($(this));
		});

		$(window).resize(function() {
			$("#morris-bar-chart svg rect").on('click', function() {
				setFilterForBottomMorrisTable($(this));
			});
		});

	});

	var tableDataJson = {
		"headers" : [ "Directorate or Division", "Actual Work", "FTEs",
				"Resource Count" ],
		"data" : [ {
			"Directorate or Division" : "ADEP",
			"Actual Work" : 16361.8,
			"FTEs" : 32,
			"Resource Count" : 64
		}, {
			"Directorate or Division" : "EAD",
			"Actual Work" : 8205.05,
			"FTEs" : 16,
			"Resource Count" : 25
		}, {
			"Directorate or Division" : "EID",
			"Actual Work" : 137.5,
			"FTEs" : 0.27,
			"Resource Count" : 1
		}, {
			"Directorate or Division" : "EMD",
			"Actual Work" : 1296.05,
			"FTEs" : 2.53,
			"Resource Count" : 8
		}, {
			"Directorate or Division" : "ESMD",
			"Actual Work" : 514,
			"FTEs" : 1,
			"Resource Count" : 4
		}, {
			"Directorate or Division" : "EWD",
			"Actual Work" : 323.5,
			"FTEs" : 0.63,
			"Resource Count" : 4
		}, {
			"Directorate or Division" : "ITMD",
			"Actual Work" : 454.5,
			"FTEs" : 0.89,
			"Resource Count" : 2
		} ]
	};

	var allMorrisTableData = {
		"headers" : [ "Enterprise Projects", "Directorate or Division",
				"Actual Work", "FTEs", "Resource Count" ],
		"data" : [
				{
					"Enterprise Projects" : "2020 Census Program Management",
					"Directorate or Division" : "ITMD",
					"Actual Work" : 418.50,
					"FTEs" : 0.82,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "2020 Nonresponse Followup",
					"Directorate or Division" : "ESMD",
					"Actual Work" : 477.00,
					"FTEs" : 0.93,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "2020 Response Processing",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 277.50,
					"FTEs" : 0.54,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "AHS 2015 Revised v1",
					"Directorate or Division" : "ITMD",
					"Actual Work" : 36.00,
					"FTEs" : 0.07,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "CE Diary Survey 2016",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 3.00,
					"FTEs" : 0.01,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "CE Quarterly Survey 2016",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 4.00,
					"FTEs" : 0.01,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "CEDCaP-Electronic Correspondence Portal",
					"Directorate or Division" : "EAD",
					"Actual Work" : 1321.05,
					"FTEs" : 2.58,
					"Resource Count" : 9
				},
				{
					"Enterprise Projects" : "CEDCaP-Electronic Correspondence Portal",
					"Directorate or Division" : "EMD",
					"Actual Work" : 1294.05,
					"FTEs" : 2.53,
					"Resource Count" : 7
				},
				{
					"Enterprise Projects" : "CEDCaP-Questionnaire Design and Metadata-COMET",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 3916.50,
					"FTEs" : 7.65,
					"Resource Count" : 11
				},
				{
					"Enterprise Projects" : "CEDCaP-Questionnaire Design and Metadata-COMET",
					"Directorate or Division" : "EAD",
					"Actual Work" : 3670.50,
					"FTEs" : 7.17,
					"Resource Count" : 8
				},
				{
					"Enterprise Projects" : "CEDCaP-Scanning Data Capture from Paper-ICADE",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 7061.30,
					"FTEs" : 13.79,
					"Resource Count" : 27
				},
				{
					"Enterprise Projects" : "CEDCaP-Service Oriented Architecture-API",
					"Directorate or Division" : "EAD",
					"Actual Work" : 168.00,
					"FTEs" : 0.33,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "CEDCaP-Survey and Listing Interview Operational Control-MOJO",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 3768.25,
					"FTEs" : 7.36,
					"Resource Count" : 13
				},
				{
					"Enterprise Projects" : "CEDCaP-Survey and Listing Interview Operational Control-MOJO",
					"Directorate or Division" : "EAD",
					"Actual Work" : 3045.50,
					"FTEs" : 5.95,
					"Resource Count" : 7
				},
				{
					"Enterprise Projects" : "CEDCaP-Survey Response Processing-CARDS",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 381.00,
					"FTEs" : 0.74,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "CLMSO FY16 Education and Training",
					"Directorate or Division" : "EWD",
					"Actual Work" : 32.00,
					"FTEs" : 0.06,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "FY2015 CPS 2014-2016 DSMD",
					"Directorate or Division" : "ESMD",
					"Actual Work" : 9.00,
					"FTEs" : 0.02,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "HSDC2016",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 13.50,
					"FTEs" : 0.03,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "National Crime Victimization Survey SY 2015",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 228.00,
					"FTEs" : 0.45,
					"Resource Count" : 1
				},
				{
					"Enterprise Projects" : "National Crime Victimization Survey SY 2016",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 420.25,
					"FTEs" : 0.82,
					"Resource Count" : 2
				},
				{
					"Enterprise Projects" : "National Crime Victimization Survey SY 2016",
					"Directorate or Division" : "EID",
					"Actual Work" : 137.50,
					"FTEs" : 0.27,
					"Resource Count" : 1
				}, {
					"Enterprise Projects" : "NHIS 2016",
					"Directorate or Division" : "ESMD",
					"Actual Work" : 18.00,
					"FTEs" : 0.04,
					"Resource Count" : 1
				}, {
					"Enterprise Projects" : "NHIS Administrative Schedule",
					"Directorate or Division" : "ESMD",
					"Actual Work" : 10.00,
					"FTEs" : 0.02,
					"Resource Count" : 1
				}, {
					"Enterprise Projects" : "NSCH 2016 Production",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 241.00,
					"FTEs" : 0.47,
					"Resource Count" : 3
				}, {
					"Enterprise Projects" : "NTPS 2015-2016",
					"Directorate or Division" : "ADEP",
					"Actual Work" : 47.50,
					"FTEs" : 0.09,
					"Resource Count" : 2
				}, {
					"Enterprise Projects" : "NTPS 2015-2016",
					"Directorate or Division" : "EMD",
					"Actual Work" : 2.00,
					"FTEs" : 0,
					"Resource Count" : 1
				}, {
					"Enterprise Projects" : "z6385B10 CATI Response Data",
					"Directorate or Division" : "EWD",
					"Actual Work" : 153.00,
					"FTEs" : 0.3,
					"Resource Count" : 1
				}, {
					"Enterprise Projects" : "z6385B20 CAPI Response Data",
					"Directorate or Division" : "EWD",
					"Actual Work" : 114.50,
					"FTEs" : 0.22,
					"Resource Count" : 1
				}, {
					"Enterprise Projects" : "z6385B30 PR Data Collection Data",
					"Directorate or Division" : "EWD",
					"Actual Work" : 24.00,
					"FTEs" : 0.05,
					"Resource Count" : 1
				} ]
	};

	// This updates the data table beside the Morris.Bar 
	function buildTable(localTableDataJson, tagId) {
		console.log('building table for ' + tagId);
		var content = "";
		var header = "<thead><tr>";
		console.log(localTableDataJson.headers)
		for ( var index in localTableDataJson.headers) {
			console.log('added header');
			header += "<th>" + localTableDataJson.headers[index] + "</th>";
		}
		header += "</tr></thead>";
		content += header + "<tbody>";

		for ( var index in localTableDataJson.data) {

			content += "<tr>";
			jQuery.each(localTableDataJson.data[index], function(index2,
					dataColumn) {
				content += "<td>" + dataColumn + "</td>";
			});
			content += "</tr>";

		}

		content += "</tbody>"

		$('#' + tagId).empty();
		$('#' + tagId).append(content);
	}

	buildTable(tableDataJson, 'first-morris-table');
	buildTable(allMorrisTableData, 'second-morris-table');

	var previousTagSelected;

	function filterBottomMorrisTable(filterString, filterColumn) {
		console.log('filtering bottom Morris table for ' + filterString
				+ ' in ' + filterColumn);
		console.log('previous tag: ' + previousTagSelected);
		if (filterString != previousTagSelected) {
			$('#second-morris-table > tbody > tr').each(function(index) {
				console.log('showing row');
				$(this).show();
			});
		}

		$('#second-morris-table > tbody > tr')
				.each(
						function(index) {
							//console.log('table index ' + index);

							$(this)
									.find('td')
									.each(
											function(index2) {
												//console.log('column index ' + index2);
												var columnValue = $(this)
														.text();
												//console.log('columnValue: ' + columnValue);
												var columnName = allMorrisTableData.headers[index2];
												//console.log('column name : ' + columnName);

												hideMorrisTable2Row($(this),
														columnName,
														columnValue,
														filterColumn,
														filterString);

											});

						});
	}

	function hideMorrisTable2Row(selection, columnName, columnValue,
			filterColumn, filterString) {
		console.log('checking for ' + columnName + ' matching ' + filterColumn);
		if (columnName != filterColumn) {
			console.log(columnName + ' does not match' + filterColumn);
			return;
		}
		console.log(columnName + ' matches' + filterColumn);
		if ((columnValue != filterString) || (columnValue == '')) {
			console.log('toggle hiding table row for ' + columnValue);
			if ($(selection).parent().css('display') == 'none') {
				$(selection).parent().show();
				previousTagSelected = filterString;
			} else {
				$(selection).parent().hide();
			}
		} else {
			$(selection).parent().show();
			previousTagSelected = filterString;
		}
	}

	function updateMorrisBar(columnNumber) {
		console.log("updating morris bar");
		var newJSON = {
			element : 'morris-bar-chart',
			data : [ {
				y : 'ADEP',
				a : 16361.8,
			}, {
				y : 'EAD',
				a : 8205.05,
			}, {
				y : 'EID',
				a : 137.5,
			}, {
				y : 'EMD',
				a : 1296.05,
			}, {
				y : 'ESMD',
				a : 514,
			}, {
				y : 'EWD',
				a : 323.5,
			}, {
				y : 'ITMD',
				a : 454.5,
			} ],
			xkey : 'y',
			ykeys : [ 'a' ],
			labels : [ 'Actual Work' ],
			hideHover : 'auto',
			resize : true
		};
		switch (columnNumber) {
		case 1:
			for ( var index in newJSON.data) {
				newJSON.data[index].a = tableDataJson.data[index]["Actual Work"];
			}
			newJSON.labels = [ 'Actual Work' ];
			break;
		case 2:
			for ( var index in newJSON.data) {
				newJSON.data[index].a = tableDataJson.data[index]["FTEs"];
			}
			newJSON.labels = [ 'FTEs' ];
			break;
		case 3:
			for ( var index in newJSON.data) {
				newJSON.data[index].a = tableDataJson.data[index]["Resource Count"];
			}
			newJSON.labels = [ 'Resource Count' ];
			break;
		}

		$('#morris-bar-chart').empty();
		Morris.Bar(newJSON);
		//MorrisBarReturnObject.setData(newJSON);
		MorrisBarReturnObject.setData(newJSON.data, true);

		$("#morris-bar-chart svg rect").on('click', function() {
			//alert( "Handler for .on() called." );
			setFilterForBottomMorrisTable($(this));
		});
	}

	function setFilterForBottomMorrisTable(selectedTag) {
		var tagIndex = $('#morris-bar-chart svg rect').index(selectedTag);
		console.log('tag index: ' + tagIndex);
		var name = tableDataJson.data[tagIndex]['Directorate or Division'];
		console.log('Directorate or Division name: ' + name);
		filterBottomMorrisTable(name, 'Directorate or Division');
		showTotalFTEs();
	}

	// shows the total FTEs in the morris donut
	function showTotalFTEs() {
		console.log('updating donut data');
		var totalFTEs = 0;
		var totalAmountWorked = 0;
		var totalResourceCount = 0;
		$('#second-morris-table > tbody > tr')
				.each(
						function(index) {
							//console.log('table index ' + index);
							$(this)
									.find('td')
									.each(
											function(index2) {
												if ($(this).parent().css(
														'display') != 'none') {
													if (allMorrisTableData.headers[index2] == 'FTEs') {
														totalFTEs += parseFloat($(
																this).text());
													}
													if (allMorrisTableData.headers[index2] == 'Actual Work') {
														totalAmountWorked += parseFloat($(
																this).text());
													}
													if (allMorrisTableData.headers[index2] == 'Resource Count') {
														totalResourceCount += parseFloat($(
																this).text());
													}
												}
											});
						});

		var donutJSON = {
			element : 'morris-donut-chart',
			data : [ {
				label : "Total FTEs",
				value : totalFTEs.toFixed(2)
			} /*, {
			      label: "Total Amount Worked",
			      value: totalAmountWorked.toFixed(2)
			    }, {
			      label: "Total Resource Count",
			      value: totalResourceCount.toFixed(2)
			    }*/],
			resize : true
		};

		$('#morris-donut-chart').empty();
		Morris.Donut(donutJSON);
		//MorrisBarReturnObject.setData(newJSON);
		MorrisDonutReturnObject.setData(donutJSON.data, true);
	}

	function showDefaultDonutData() {
		console.log('leaving svg donut part');
	}
</script>
