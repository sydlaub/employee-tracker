// GIVEN a command-line application that accepts user input


const mysql = require('mysql2');
const inquirer = require('inquirer');
const util = require('util');
require("console.table");

// connect to database
const db = mysql.createConnection(
    {
        host: '127.0.0.1',
        user: 'root',
        password: 'Tommybaha22!',
        database: 'employee_tracker_db'
    }
    // console.log('Connection to employee_tracker_db successful!')
);

// WHEN I start the application
// THEN I am presented with the following options: view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role

const startApp = () => {
    inquirer
    .prompt([
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
    .then((response) => {
        console.log('test string')
        console.log(response.start)
        switch (response.start) {
            case "View all departments": viewDeptartment();
                break;
            case "View all roles": viewRoles();
                break;
            case "View all employees": viewEmployees();
                break;
            case "Add a department": addDeptartment();
                break;
            case "Add a role": addRole();
                break;
            case "Add an employee": addEmployee();
                break;
            case "Update an employee role": updateRole();
                break;
            case "I'm done":
                console.log("Thank you!");
                process.exit();
        }
    }).catch(err => console.log(err));
};


// call start app function
startApp();



// create variables for each case that user could pick
const viewDeptartment = () => {
    console.log("test");
    // WHEN I choose to view all departments
    // THEN I am presented with a formatted table showing department names and department ids
    db.query(
        'SELECT * FROM department',
        function (err, results) {
            console.table(results); // results contains rows returned by server
            startApp();
        }
    );
    
};



const viewRoles = () => {
    // WHEN I choose to view all roles
    // THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role
    db.query(
        'SELECT * FROM roles',
        function (err, results) {
            console.table(results); // results contains rows returned by server
            startApp();
        }
    );
};

const viewEmployees = () => {
    // WHEN I choose to view all employees
    // THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to

};




const addDeptartment = () => {
    // WHEN I choose to add a department
    // THEN I am prompted to enter the name of the department and that department is added to the database
    
};



const addRole = () => {
    // WHEN I choose to add a role
    // THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database
    
};



const addEmployee = () => {
    // WHEN I choose to add an employee
    // THEN I am prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database
    
};



const updateRole = () => {
    // WHEN I choose to update an employee role
    // THEN I am prompted to select an employee to update and their new role and this information is updated in the database

};














