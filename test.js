const inquirer = require('inquirer');

inquirer
    .prompt([
        /* Pass your questions in here */
        {
            type: "list",
            message: "Please select from the following options:",
            name: "start",
            choices: [
                "View all departments",
                "View all roles",
                "View all employees",
                "Add a department",
                "Add a role",
                "Add an employee",
                "Update an employee role",
                "I'm done"
            ]
        }
    ])
    .then((answers) => {
        // Use user feedback for... whatever!!
        console.log(answers)
    })
    .catch((error) => {
        if (error.isTtyError) {
            // Prompt couldn't be rendered in the current environment
        } else {
            // Something else went wrong
        }
    });