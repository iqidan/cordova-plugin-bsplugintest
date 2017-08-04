var exec = require("cordova/exec");
// function TestModel(){};

// TestModel.prototype.bsPluginTest = function(success, fail, option){
// 	exec(success, fail, "bsPluginTest", "getScreenMessage", option);
// };

// var testModel = new TestModel();
// module.exports = testModel;
module.exports = function(success, fail, option){
	exec(success, fail, "bsPluginTest", "getScreenMessage", option);
};