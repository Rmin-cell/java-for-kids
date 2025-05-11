# Java OOP Practice Questions

This document contains practice questions for the Java OOP midterm exam, focusing on constructors, constructor overloading, static methods, and composition.

## Table of Contents
- [Tracing Code Questions](#tracing-code-questions)
- [Code Completion Questions](#code-completion-questions)
- [Error Identification Questions](#error-identification-questions)

## Tracing Code Questions

### Question 1 (Medium)

Trace through the following code and determine what will be printed when executed:

```java
public class Counter {
    private int count;
    private static int totalInstances = 0;
    
    public Counter() {
        this(0);
    }
    
    public Counter(int initialCount) {
        count = initialCount;
        totalInstances++;
    }
    
    public void increment() {
        count++;
    }
    
    public static int getTotalInstances() {
        return totalInstances;
    }
    
    public int getCount() {
        return count;
    }
    
    public static void main(String[] args) {
        Counter c1 = new Counter();
        Counter c2 = new Counter(10);
        c1.increment();
        c2.increment();
        System.out.println(c1.getCount() + " " + c2.getCount() + " " + Counter.getTotalInstances());
    }
}
```

**What will be the output of this code when executed?**


### Question 2 (Hard)

Trace through the following code and determine what will be printed when executed:

```java
public class Box {
    private double length;
    private double width;
    private static int numBoxes = 0;
    
    public Box(double side) {
        this(side, side);
        System.out.print("S");
    }
    
    public Box(double length, double width) {
        this.length = length;
        this.width = width;
        numBoxes++;
        System.out.print("R");
    }
    
    public double getArea() {
        return length * width;
    }
    
    public static void main(String[] args) {
        Box b1 = new Box(5.0);
        Box b2 = new Box(3.0, 4.0);
        Box b3 = new Box(2.0);
        System.out.print(" ");
        System.out.print(b1.getArea() + " ");
        System.out.print(numBoxes);
    }
}
```

**What will be the output of this code when executed?**


## Code Completion Questions

### Question 1 (Medium)

Complete the `Student` and `Course` classes to implement a composition relationship where a `Student` can enroll in a `Course`. The `Student` class should have methods to enroll in a course and display all enrolled courses.

```java
public class Student {
    private String name;
    private String id;
    private Course[] courses;
    private int courseCount;
    
    // Constructor with name and id parameters
    public Student(String name, String id) {
        // TODO: Complete the constructor
        
    }
    
    // Method to enroll student in a course
    public boolean enrollInCourse(Course course) {
        // TODO: Add course to array if there's space
        // Return true if enrollment successful, false otherwise
        
    }
    
    // Method to display all courses student is enrolled in
    public void displayCourses() {
        // TODO: Complete this method
        
    }
}

public class Course {
    private String courseCode;
    private String courseName;
    private static int maxEnrollment = 30;
    
    // TODO: Create constructors
    
    
    // TODO: Create getters for courseCode and courseName
    
    
    // Method to display course information
    public String toString() {
        // TODO: Complete this method
        
    }
}
```


### Question 2 (Hard)

Complete the `BankAccount` and `Bank` classes to implement a banking system. The `Bank` class should store multiple accounts and provide methods to find accounts, transfer money between accounts, and calculate the total balance of all accounts.

```java
public class BankAccount {
    private String accountNumber;
    private String accountHolder;
    private double balance;
    private static double interestRate = 0.02; // 2% interest rate
    
    // TODO: Create constructors
    
    
    // Method to deposit money
    public void deposit(double amount) {
        // TODO: Complete this method
        
    }
    
    // Method to withdraw money
    public boolean withdraw(double amount) {
        // TODO: Complete this method
        
    }
    
    // Method to apply interest to the account
    public static void setInterestRate(double newRate) {
        // TODO: Complete this method
        
    }
    
    // TODO: Create getters and a toString method
    
}

public class Bank {
    private String name;
    private BankAccount[] accounts;
    private int accountCount;
    
    // TODO: Create constructor
    
    
    // Method to add an account to the bank
    public boolean addAccount(BankAccount account) {
        // TODO: Complete this method
        
    }
    
    // Method to find an account by account number
    public BankAccount findAccount(String accountNumber) {
        // TODO: Complete this method
        
    }
    
    // Method to transfer money between accounts
    public boolean transferMoney(String fromAccountNum, String toAccountNum, double amount) {
        // TODO: Complete this method
        
    }
    
    // Method to calculate the total balance of all accounts
    public double getTotalBalance() {
        // TODO: Complete this method
        
    }
}
```


## Error Identification Questions

### Question 1 (Medium)

The following code has errors. Identify and fix them.

```java
public class Rectangle {
    private double length;
    private double width;
    
    public Rectangle(double l, double w) {
        length = l;
        width = w;
    }
    
    public Rectangle(double side) {
        length = width = side;
    }
    
    public static double getArea() {
        return length * width;
    }
    
    public double getPerimeter() {
        return 2 * (length + width);
    }
    
    public static void main(String[] args) {
        Rectangle r1 = new Rectangle(5.0);
        Rectangle r2 = new Rectangle(3.0, 4.0);
        System.out.println("Area of r1: " + r1.getArea());
        System.out.println("Perimeter of r2: " + Rectangle.getPerimeter());
    }
}
```


### Question 2 (Hard)

The following `Person` and `Employee` classes contain errors. Identify and fix them.

```java
public class Person {
    private String name;
    private int age;
    
    public Person(String name, int age) {
        name = name;
        age = age;
    }
    
    public String getName() {
        return name;
    }
    
    public int getAge() {
        return age;
    }
}

public class Employee extends Person {
    private double salary;
    private static int employeeCount;
    
    public Employee(String name, int age, double salary) {
        this.name = name;
        this.age = age;
        this.salary = salary;
        employeeCount++;
    }
    
    public static void displayEmployeeCount() {
        System.out.println("Total employees: " + employeeCount);
    }
    
    public double giveRaise(double percentage) {
        salary = salary * (1 + percentage/100);
        return salary;
    }
    
    public static void main(String[] args) {
        Employee e1 = new Employee("John", 30, 50000);
        Employee e2 = new Employee("Alice", 25, 60000);
        
        System.out.println(e1.getName() + "'s salary: " + e1.salary);
        e1.giveRaise(10);
        System.out.println(e1.getName() + "'s new salary: " + e1.salary);
        
        displayEmployeeCount();
    }
}
```

