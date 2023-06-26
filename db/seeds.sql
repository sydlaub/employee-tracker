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

INSERT INTO employees (id, first_name, last_name, manager_id)
VALUES  (1, "Sydney", "Laub", NULL),
        (2, "Eli", "Manning", NULL),
        (3, "Emily", "Levin", NULL),
        (4, "Marlee", "Sullivan", NULL),
        (5, "Coco", "Lurz", NULL);