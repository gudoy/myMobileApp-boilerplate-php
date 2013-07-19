<?php

Class CIndex extends Controller 
{	
	public function index()
	{
		// Set the response body content
		//$this->response->body = '<h1>Welcome to PHPGasus Mû!</h1>';
		
		// Data to be passed to the response
		//$this->data = 'Welcome to PHPGasus Mû!';
		//$this->data = array('foo' => 'foo', 'bar' => 'bar', 'foobar' => 42);
		
		$this->response->view->name = 'Home';
		$this->render();
	}
	
	public function maintenance()		{ $this->render(); }
	public function down()				{ $this->render(); }
	public function notfound()			{ $this->render(); }
}


?>