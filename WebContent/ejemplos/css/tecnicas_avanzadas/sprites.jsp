<jsp:include page="../../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>

<style>

#sprites .fantasma{
	background: url("images/sprite_pacman.png") #f6e2b9 no-repeat 0 -98px;
}

#sprites .pacman{
	background: url("images/sprite_pacman.png") #f6e2b9 no-repeat 0 -48px;
}

#sprites .robot{
	background: url("images/sprite_pacman.png") #f6e2b9 no-repeat 0 0px;
}

#sprites li{
	padding: 13px 0 13px 52px;
	list-style-type: none;
	display: block;	
}

#sprites ul{
	width: 15%;
	list-style-type: none;
}

</style>

<div id="sprites">
	<header>
		<h1>SPRITES</h1>
	</header>

	<ul>
		<li class="pacman">PacMan</li>
		<li class="fantasma">Fantasma</li>
		<li class="robot">Robot</li>
	</ul>
	
</div> <!-- SPRITES -->
<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>