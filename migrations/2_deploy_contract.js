const TodoListMigration = artifacts.require("TodoList");

module.exports = function(deployer) {
  deployer.deploy(TodoListMigration);
};
