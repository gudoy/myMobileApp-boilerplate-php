{extends file='layouts/page.html.tpl'}

{block name='header'}{/block}

{block name='mainHeader'}
<h1 class="title"><a class="action homeAction logo" id="backToIndexAction" rel="home" href="index.html"><img id="logo" class="logo" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABAQAAAAA3bvkkAAAAAnRSTlMAAQGU/a4AAAAKSURBVHjaY2gAAACCAIHaRQg7AAAAAElFTkSuQmCC" alt="ING Direct" /></a></h1>
<a class="action contactUsAction" id="contactUsAction" href="contactUs.html"><span class="label">Contactez-nous</span></a>
{/block}

{block name='mainContent'}
{include file='blocks/index/login.html.tpl'}
{/block}