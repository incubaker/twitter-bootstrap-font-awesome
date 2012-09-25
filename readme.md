# Twitter Bootstrap + Font Awesome

When you clone this repo it may not contain the submodules contents run the following to fetch the submodules

	git submodule update --init

Simply compile using

	sh ./Makefile
	
You need the following global dependancies from npm

	npm install uglify-js -g
	npm install recess -g
	
To use this repository in your projects include via

	git submodule add git://github.com/incubaker/twitter-bootstrap-font-awesome.git
	
or 

	git submodule add git://github.com/incubaker/twitter-bootstrap-font-awesome.git submodules/twitter-bootstrap-font-awesome
	
To-do:
	
* Compile Responsive CSS file