<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="style.css" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<title>Search</title>
</head>
<body>
	<div id="header">
		<a href="index.jsp">
			<img id="logo" src="images\littlehacks_logo.png"/>
		</a>
		<form action="search.jsp" id="headerSearch">
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="Enter Keyword" name="search"/>
				<button type="submit" class="btn btn-primary" id="searchbtn">Search</button>
			</div>
		</form>
	</div>
	
	<div id="resultBox">
		<p id="searchfeedback"><span id="totalresults">6</span> results returned (<span id="totaltime">0.12</span> seconds)</p>
		<div class="dropdown">
			<button class="btn btn-primary dropdown-toggle" type="button"
				id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">Sort By</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Most Recent</a> <a
					class="dropdown-item" href="#">Most Retweets</a> <a
					class="dropdown-item" href="#">Most Favourites</a>
			</div>
		</div>

		<ul class="list-group">
			<li class="list-group-item">
				<img id="acctimg" src="http://pbs.twimg.com/profile_images/898278487504695297/P0pV8Wwx_normal.jpg" class="img-circle">
				<div id="acctinfo">
					<strong><span id="acctname">Life Hacks</span></strong>
					<p id="acctusername">@lifehacks</p>
				</div>
				<span id="tweettime">2017-07-09T22:30:01Z</span>
				
			</li>
			<li class="list-group-item">Dapibus ac facilisis in</li>
			<li class="list-group-item">Morbi leo risus</li>
			<li class="list-group-item">Porta ac consectetur ac</li>
			<li class="list-group-item">Vestibulum at eros</li>
		</ul>

	</div>
	<% 
		String query = request.getParameter("search");
	%>
	User searched for:<%= query %>
	
</body>
</html>