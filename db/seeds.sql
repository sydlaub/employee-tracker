INSERT INTO department (name)
VALUES ("Engineering"),
       ("Finance"),
       ("Legal"),
       ("Sales");

INSERT INTO roles (id, title, department, salary)
VALUES (1, "Sales Lead", "Sales", 100000),
       (2, "Salesperson", "Sales", 80000),
       (3, "Lead Engineer", "Engineering", 150000),
       (4, "Software Engineer", "Engineering", 120000),
       (5, "Account Manager", "Finance", 160000),
       (6, "Accountant", "Finance", 125000),
       (7, "Legal Team Lead", "Legal", 250000),
       (8, "Lawyer", "Legal", 190000);

INSERT INTO employees (id, first_name, last_name, title, department, salary, manager)
VALUES  (1, "Sydney", "Laub", "Sales Lead", "Sales", 100000, "NULL"),
        (2, "Eli", "Manning", "Salesperson", "Sales", 80000, "Sydney Laub"),
        (3, "Emily", "Levin", "Lead Engineer", "Engineering", 150000, "NULL"),
        (4, "Marlee", "Sullivan", "Software Engineer", "Engineering", 120000, "Emily Levin"),
        (5, "Coco", "Lurz", "Account Manager", "Finance", 160000, "NULL"),
        (6, "Audrey", "Laport", "Accountant", "Finance", 125000, "Coco Lurz"),
        (7, "Olivia", "Stillman", "Legal Team Lead", "Legal", 250000, "NULL"),
        (8, "Emily", "Stillman", "Lawyer", "Legal", 190000, "Olivia Stillman");