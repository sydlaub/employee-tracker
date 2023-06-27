INSERT INTO department (name)
VALUES ("Engineering"),
       ("Finance"),
       ("Legal"),
       ("Sales");

INSERT INTO roles (title, department, salary)
VALUES ("Sales Lead", "Sales", 100000),
       ("Salesperson", "Sales", 80000),
       ("Lead Engineer", "Engineering", 150000),
       ("Software Engineer", "Engineering", 120000),
       ("Account Manager", "Finance", 160000),
       ("Accountant", "Finance", 125000),
       ("Legal Team Lead", "Legal", 250000),
       ("Lawyer", "Legal", 190000);

INSERT INTO employees (first_name, last_name, title, department, salary, manager)
VALUES  ("Sydney", "Laub", "Sales Lead", "Sales", 100000, "NULL"),
        ("Eli", "Manning", "Salesperson", "Sales", 80000, "Sydney Laub"),
        ("Emily", "Levin", "Lead Engineer", "Engineering", 150000, "NULL"),
        ("Marlee", "Sullivan", "Software Engineer", "Engineering", 120000, "Emily Levin"),
        ("Coco", "Lurz", "Account Manager", "Finance", 160000, "NULL"),
        ("Audrey", "Laport", "Accountant", "Finance", 125000, "Coco Lurz"),
        ("Olivia", "Stillman", "Legal Team Lead", "Legal", 250000, "NULL"),
        ("Emily", "Stillman", "Lawyer", "Legal", 190000, "Olivia Stillman");