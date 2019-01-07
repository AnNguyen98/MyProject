Introduction to Node.js

# What is Node? 
- Runtime environment built on Google's V8 JavaScript engine which is used in Chrome 
- Allows us to use JavaScript outside of a browser context
	- E.g. can use directly on a computer or server OS
	- Has support for HTTP, reading from / writing to files


# "Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient."
- Many server languages instantiate every client request on a new thread, which takes up system memory
- Node runs all clients on a single thread and I/O operations are event-based. This makes it highly scaleable compared to traditional server-side languages that have limited threads to handle requests

# Event Loop?
- Once script executes, Node register events and enters an event loop where it checks for events continuously
- Triggers a callback when an event is detected. This all happens asynchronously and it is non-blocking 

# Why Node?
- Very fast
- Code is written in plain JavaScript
- Node Package Manager (NPM) is great
- Well supported, very popular, has active community



