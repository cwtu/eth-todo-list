pragma solidity >=0.5.0;

contract TodoList {
	// state variable
	uint public taskCount = 0;

	// struct type
	struct Task {
		uint id;
		string content;
		bool completed;
	}

	mapping(uint => Task) public tasks;


	event TaskCreated(
		uint id,
		string content,
		bool completed
	);

	constructor() public {
		createTask("Default Task");
	}

	function createTask(string memory _content) public {
		taskCount ++;
		tasks[taskCount] = Task(taskCount, _content, false);
		emit TaskCreated(taskCount, _content, false);
	}
}
