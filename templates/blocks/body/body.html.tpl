<div class="body" id="body">
	{block name='aside'}{include file='blocks/aside/aside.html.tpl'}{/block}
	{block name='main'}
	<div id="main" class="main" role="main">
		<header id="mainHeader" class="header mainHeader">{block name='mainHeader'}
			<a id="goToMainNavAction" class="action goToMainNavAction" href="#mainNav"><span class="label">Menu</span></a>
			<h2 class="title">{$view.name}</h2>
		{/block}</header>
		<div id="mainContent" class="mainContent">{block name='mainContent'}{/block}</div>
		<footer id="mainFooter" class="mainFooter">{block name='mainFooter'}{/block}</footer>
	</div>
	{/block}
</div>