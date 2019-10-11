pragma solidity >=0.4.21 <0.6.0;

contract TodoList{
  uint public  taskCount=0 ;

  struct Task{
    uint id  ;
    string content ;
    bool completed ;
  }
  event TaskCreated(
      uint id ,
      string content   ,
      bool completed
    );
event TaskCompleted(
  uint id ,
  bool completed
  );
  constructor() public{
    createTask("Check Out first task");
  }
  mapping (uint => Task) public tasks ;

  function createTask(string memory _content) public{
    //Task[]
    taskCount ++ ;  //increment operator
    tasks[taskCount] = Task(taskCount , _content , false);
    emit TaskCreated(taskCount, _content, false);
  }

  function toggleCompleted(uint _id) public{
    //tasks[id]
    Task memory _task = tasks[_id] ;
    _task.completed = ! _task.completed ;
    tasks[_id] = _task ;
    emit TaskCompleted(_id, _task.completed);
  }

}
