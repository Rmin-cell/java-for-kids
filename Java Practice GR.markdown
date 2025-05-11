# Java Practice Questions for Midterm Exam


## Tracing Code Snippets

### Question 1: Easy

**Code Snippet:**

```java
public class Person {
    private String name;
    private int age;

    public Person() {
        name = "Unknown";
        age = 0;
    }

    public Person(String n, int a) {
        name = n;
        age = a;
    }

    public void display() {
        System.out.println("Name: " + name + ", Age: " + age);
    }

    public static void main(String[] args) {
        Person p1 = new Person();
        Person p2 = new Person("Alice", 25);
        p1.display();
        p2.display();
    }
}
```

**Question:** What will be the output when running the `main` method?



**Hint:** Determine which constructor is called for each object creation based on the arguments provided.

### Question 2: Medium

**Code Snippet:**

First, the `Engine` class:

```java
public class Engine {
    private static int engineCount = 0;

    public Engine() {
        engineCount++;
    }

    public static int getEngineCount() {
        return engineCount;
    }
}
```

Then, the `Car` class:

```java
public class Car {
    private static int carCount = 0;
    private Engine engine;

    public Car() {
        engine = new Engine();
        carCount++;
    }

    public static int getCarCount() {
        return carCount;
    }

    public static void main(String[] args) {
        Car c1 = new Car();
        Car c2 = new Car();
        System.out.println("Number of cars: " + Car.getCarCount());
        System.out.println("Number of engines: " + Engine.getEngineCount());
    }
}
```

**Question:** What will be the output when running the `main` method in the `Car` class?

**Answer:**


**Hint:** Static variables are shared across all instances of the class. Each time a `Car` is created, it increments `carCount` and creates a new `Engine`, which increments `engineCount`.

## Completing Code Snippets

### Question 3: Simple

**Code Snippet:**

```java
public class Book {
    private String title;
    private String author;
    private double price;

    // Complete the constructor
    public Book(String t, String a, double p) {
        // Your code here
    }

    public void display() {
        System.out.println("Title: " + title + ", Author: " + author + ", Price: " + price);
    }

    public static void main(String[] args) {
        Book b = new Book("Java Programming", "John Doe", 29.99);
        b.display();
    }
}
```

**Question:** Complete the constructor for the `Book` class so that it initializes the `title`, `author`, and `price` fields with the provided parameters.


**Hint:** Assign the parameters `t`, `a`, and `p` to the instance variables `title`, `author`, and `price`, respectively.

### Question 4: Composition

**Code Snippet:**

Assume the `Engine` class is defined as follows:

```java
public class Engine {
    private String type;

    public Engine(String t) {
        type = t;
    }

    public String getType() {
        return type;
    }
}
```

Now, the `Car` class:

```java
public class Car {
    private String make;
    private String model;
    private Engine engine;

    // Complete the constructor
    public Car(String m, String md, String et) {
        // Your code here
    }

    public void display() {
        System.out.println("Make: " + make + ", Model: " + model + ", Engine: " + engine.getType());
    }

    public static void main(String[] args) {
        Car c = new Car("Honda", "Civic", "Inline-4");
        c.display();
    }
}
```

**Question:** Complete the constructor for the `Car` class so that it initializes the `make`, `model`, and creates a new `Engine` object with the provided `engineType`.


**Hint:** In the constructor, assign `m` to `make`, `md` to `model`, and create a new `Engine` object with `et` as the type.

## Identifying Errors in Code

### Question 5: Constructor Error

**Code Snippet:**

```java
public class Student {
    private String name;

    public Student(String n) {
        name = n;
    }

    public static void main(String[] args) {
        Student s = new Student(); // Error here
        System.out.println(s.name);
    }
}
```

**Question:** The code is intended to create a `Student` object and print its name. However, there is an error. Identify and explain the error.


**Hint:** Check if all necessary constructors are defined. When a parameterized constructor is defined, the default constructor must be explicitly defined if needed.

### Question 6: Assignment Error

**Code Snippet:**

```java
public class Circle {
    private double radius;

    public Circle(double r) {
        r = radius; // Error here
    }

    public double getArea() {
        return 3.14 * radius * radius;
    }

    public static void main(String[] args) {
        Circle c = new Circle(5.0);
        System.out.println(c.getArea()); // Outputs 0.0 instead of 78.5
    }
}
```

**Question:** The code is intended to create a `Circle` object with a given radius and calculate its area. However, there is an error in the constructor that causes the area to be calculated incorrectly. Identify and fix the error.


**Hint:** Ensure that the parameter is correctly assigned to the instance variable in the constructor. Check for reversed assignment.