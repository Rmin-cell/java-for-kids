# Advanced Java Programming Exam Questions

## CODE COMPLETION QUESTIONS (5 questions)

### Question 1: Constructor Chaining
Complete the following class that demonstrates constructor chaining:

```java
public class Student {
    private String name;
    private int age;
    private String major;
    
    public Student(String name) {
        // Complete this constructor to call the two-parameter constructor
        // with default age of 18
        ________________________________
    }
    
    public Student(String name, int age) {
        // Complete this constructor to call the three-parameter constructor
        // with default major "Undeclared"
        ________________________________
    }
    
    public Student(String name, int age, String major) {
        this.name = name;
        this.age = age;
        this.major = major;
    }
}
```

### Question 2: Composition Implementation
Complete the Engine class and Car class to demonstrate composition:

```java
class Engine {
    private String type;
    private int horsepower;
    
    public Engine(String type, int horsepower) {
        this.type = type;
        this.horsepower = horsepower;
    }
    
    // Complete the method to start the engine
    public void start() {
        ________________________________
    }
}

class Car {
    private Engine engine;
    private String model;
    
    public Car(String model, String engineType, int horsepower) {
        this.model = model;
        // Complete the composition relationship
        ________________________________
    }
    
    // Complete the method that delegates to engine
    public void startCar() {
        ________________________________
    }
}
```

### Question 3: Abstract Class and Polymorphism
Complete the abstract class and its implementation:

```java
abstract class Shape {
    protected String color;
    
    public Shape(String color) {
        this.color = color;
    }
    
    // Complete the abstract method declaration
    ________________________________
    
    public void displayColor() {
        System.out.println("Color: " + color);
    }
}

class Circle extends Shape {
    private double radius;
    
    public Circle(String color, double radius) {
        // Complete the constructor
        ________________________________
        this.radius = radius;
    }
    
    // Complete the implementation of the abstract method
    ________________________________
    {
        return Math.PI * radius * radius;
    }
}
```

### Question 4: File I/O Exception Handling
Complete the method that reads from a file and handles exceptions:

```java
import java.io.*;
import java.util.*;

public class FileProcessor {
    public List<String> readFileLines(String filename) {
        List<String> lines = new ArrayList<>();
        // Complete the try-with-resources block
        ________________________________ (BufferedReader br = new BufferedReader(new FileReader(filename))) {
            String line;
            while ((line = br.readLine()) != null) {
                lines.add(line);
            }
        } ________________________________ (IOException e) {
            System.err.println("Error reading file: " + e.getMessage());
            return new ArrayList<>(); // Return empty list on error
        }
        return lines;
    }
}
```

### Question 5: Inheritance and Method Overriding
Complete the subclass that overrides methods properly:

```java
class Vehicle {
    protected String brand;
    protected int year;
    
    public Vehicle(String brand, int year) {
        this.brand = brand;
        this.year = year;
    }
    
    public void displayInfo() {
        System.out.println("Brand: " + brand + ", Year: " + year);
    }
}

class Motorcycle extends Vehicle {
    private boolean hasSidecar;
    
    public Motorcycle(String brand, int year, boolean hasSidecar) {
        // Complete the constructor
        ________________________________
        this.hasSidecar = hasSidecar;
    }
    
    // Complete the method override with proper annotation
    ________________________________
    public void displayInfo() {
        // Complete to call parent method and add motorcycle-specific info
        ________________________________
        System.out.println("Has Sidecar: " + hasSidecar);
    }
}
```

## TRUE/FALSE QUESTIONS (4 questions)

### Question 6: Classes and Objects
**True or False**: In Java, if a class doesn't explicitly define any constructor, the compiler automatically provides a default no-argument constructor that initializes all instance variables to their default values.

### Question 7: Inheritance and Polymorphism
**True or False**: When using polymorphism in Java, the method that gets called is determined at compile time based on the reference type, not the actual object type.

### Question 8: Abstraction
**True or False**: An abstract class in Java can have both abstract methods and concrete methods, and it can also have constructors, but it cannot be instantiated directly.

### Question 9: File I/O
**True or False**: When using try-with-resources in Java, the resources declared in the try statement are automatically closed even if an exception occurs, and you don't need to explicitly call the close() method.

## SHORT ANSWER QUESTIONS (3 questions)

### Question 10: Constructor vs Method
Explain the key differences between constructors and regular methods in Java. Provide at least three differences and briefly explain why each difference exists.

### Question 11: Composition vs Inheritance
When would you choose composition over inheritance in object-oriented design? Provide a specific example scenario and explain your reasoning using the "is-a" vs "has-a" relationship concept.

### Question 12: Polymorphism Benefits
Explain how polymorphism contributes to code maintainability and extensibility. Provide a brief code example that demonstrates how adding a new class type can be done without modifying existing client code.

## FIND THE ERROR QUESTIONS (3 questions)

### Question 13: Constructor and Inheritance Error
Find and explain the error(s) in the following code:

```java
class Animal {
    private String name;
    
    public Animal(String name) {
        this.name = name;
    }
    
    public void makeSound() {
        System.out.println("Some generic animal sound");
    }
}

class Dog extends Animal {
    private String breed;
    
    public Dog(String name, String breed) {
        this.breed = breed;
        super(name);
    }
    
    @Override
    public void makeSound() {
        System.out.println("Woof!");
    }
}
```

### Question 14: Abstract Class Implementation Error
Find and explain the error(s) in the following code:

```java
abstract class Database {
    protected String connectionString;
    
    public Database(String connectionString) {
        this.connectionString = connectionString;
    }
    
    public abstract void connect();
    public abstract void disconnect();
    
    public void printConnectionInfo() {
        System.out.println("Connection: " + connectionString);
    }
}

class MySQLDatabase extends Database {
    public MySQLDatabase(String connectionString) {
        super(connectionString);
    }
    
    public void connect() {
        System.out.println("Connecting to MySQL database...");
    }
    
    // Missing disconnect method implementation
}

public class DatabaseTest {
    public static void main(String[] args) {
        Database db = new Database("mysql://localhost:3306");
        db.connect();
    }
}
```

### Question 15: File I/O and Exception Handling Error
Find and explain the error(s) in the following code:

```java
import java.io.*;

public class FileWriter {
    public void writeToFile(String filename, String content) {
        FileWriter writer = new FileWriter(filename);
        writer.write(content);
        writer.close();
        System.out.println("File written successfully");
    }
    
    public String readFromFile(String filename) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader(filename));
            String line = reader.readLine();
            return line;
        } catch (IOException e) {
            return null;
        }
    }
}
```

---

# Advanced Java Programming Exam Questions

## CODE COMPLETION QUESTIONS (5 questions)

### Question 1: Constructor Chaining
Complete the following class that demonstrates constructor chaining:

```java
public class Student {
    private String name;
    private int age;
    private String major;
    
    public Student(String name) {
        // Complete this constructor to call the two-parameter constructor
        // with default age of 18
        ________________________________
    }
    
    public Student(String name, int age) {
        // Complete this constructor to call the three-parameter constructor
        // with default major "Undeclared"
        ________________________________
    }
    
    public Student(String name, int age, String major) {
        this.name = name;
        this.age = age;
        this.major = major;
    }
}
```

### Question 2: Composition Implementation
Complete the Engine class and Car class to demonstrate composition:

```java
class Engine {
    private String type;
    private int horsepower;
    
    public Engine(String type, int horsepower) {
        this.type = type;
        this.horsepower = horsepower;
    }
    
    // Complete the method to start the engine
    public void start() {
        ________________________________
    }
}

class Car {
    private Engine engine;
    private String model;
    
    public Car(String model, String engineType, int horsepower) {
        this.model = model;
        // Complete the composition relationship
        ________________________________
    }
    
    // Complete the method that delegates to engine
    public void startCar() {
        ________________________________
    }
}
```

### Question 3: Abstract Class and Polymorphism
Complete the abstract class and its implementation:

```java
abstract class Shape {
    protected String color;
    
    public Shape(String color) {
        this.color = color;
    }
    
    // Complete the abstract method declaration
    ________________________________
    
    public void displayColor() {
        System.out.println("Color: " + color);
    }
}

class Circle extends Shape {
    private double radius;
    
    public Circle(String color, double radius) {
        // Complete the constructor
        ________________________________
        this.radius = radius;
    }
    
    // Complete the implementation of the abstract method
    ________________________________
    {
        return Math.PI * radius * radius;
    }
}
```

### Question 4: File I/O Exception Handling
Complete the method that reads from a file and handles exceptions:

```java
import java.io.*;
import java.util.*;

public class FileProcessor {
    public List<String> readFileLines(String filename) {
        List<String> lines = new ArrayList<>();
        // Complete the try-with-resources block
        ________________________________ (BufferedReader br = new BufferedReader(new FileReader(filename))) {
            String line;
            while ((line = br.readLine()) != null) {
                lines.add(line);
            }
        } ________________________________ (IOException e) {
            System.err.println("Error reading file: " + e.getMessage());
            return new ArrayList<>(); // Return empty list on error
        }
        return lines;
    }
}
```

### Question 5: Inheritance and Method Overriding
Complete the subclass that overrides methods properly:

```java
class Vehicle {
    protected String brand;
    protected int year;
    
    public Vehicle(String brand, int year) {
        this.brand = brand;
        this.year = year;
    }
    
    public void displayInfo() {
        System.out.println("Brand: " + brand + ", Year: " + year);
    }
}

class Motorcycle extends Vehicle {
    private boolean hasSidecar;
    
    public Motorcycle(String brand, int year, boolean hasSidecar) {
        // Complete the constructor
        ________________________________
        this.hasSidecar = hasSidecar;
    }
    
    // Complete the method override with proper annotation
    ________________________________
    public void displayInfo() {
        // Complete to call parent method and add motorcycle-specific info
        ________________________________
        System.out.println("Has Sidecar: " + hasSidecar);
    }
}
```

## TRUE/FALSE QUESTIONS (4 questions)

### Question 6: Classes and Objects
**True or False**: In Java, if a class doesn't explicitly define any constructor, the compiler automatically provides a default no-argument constructor that initializes all instance variables to their default values.

### Question 7: Inheritance and Polymorphism
**True or False**: When using polymorphism in Java, the method that gets called is determined at compile time based on the reference type, not the actual object type.

### Question 8: Abstraction
**True or False**: An abstract class in Java can have both abstract methods and concrete methods, and it can also have constructors, but it cannot be instantiated directly.

### Question 9: File I/O
**True or False**: When using try-with-resources in Java, the resources declared in the try statement are automatically closed even if an exception occurs, and you don't need to explicitly call the close() method.

## SHORT ANSWER QUESTIONS (3 questions)

### Question 10: Constructor vs Method
Explain the key differences between constructors and regular methods in Java. Provide at least three differences and briefly explain why each difference exists.

### Question 11: Composition vs Inheritance
When would you choose composition over inheritance in object-oriented design? Provide a specific example scenario and explain your reasoning using the "is-a" vs "has-a" relationship concept.

### Question 12: Polymorphism Benefits
Explain how polymorphism contributes to code maintainability and extensibility. Provide a brief code example that demonstrates how adding a new class type can be done without modifying existing client code.

## FIND THE ERROR QUESTIONS (3 questions)

### Question 13: Constructor and Inheritance Error
Find and explain the error(s) in the following code:

```java
class Animal {
    private String name;
    
    public Animal(String name) {
        this.name = name;
    }
    
    public void makeSound() {
        System.out.println("Some generic animal sound");
    }
}

class Dog extends Animal {
    private String breed;
    
    public Dog(String name, String breed) {
        this.breed = breed;
        super(name);
    }
    
    @Override
    public void makeSound() {
        System.out.println("Woof!");
    }
}
```

### Question 14: Abstract Class Implementation Error
Find and explain the error(s) in the following code:

```java
abstract class Database {
    protected String connectionString;
    
    public Database(String connectionString) {
        this.connectionString = connectionString;
    }
    
    public abstract void connect();
    public abstract void disconnect();
    
    public void printConnectionInfo() {
        System.out.println("Connection: " + connectionString);
    }
}

class MySQLDatabase extends Database {
    public MySQLDatabase(String connectionString) {
        super(connectionString);
    }
    
    public void connect() {
        System.out.println("Connecting to MySQL database...");
    }
    
    // Missing disconnect method implementation
}

public class DatabaseTest {
    public static void main(String[] args) {
        Database db = new Database("mysql://localhost:3306");
        db.connect();
    }
}
```

### Question 15: File I/O and Exception Handling Error
Find and explain the error(s) in the following code:

```java
import java.io.*;

public class FileWriter {
    public void writeToFile(String filename, String content) {
        FileWriter writer = new FileWriter(filename);
        writer.write(content);
        writer.close();
        System.out.println("File written successfully");
    }
    
    public String readFromFile(String filename) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader(filename));
            String line = reader.readLine();
            return line;
        } catch (IOException e) {
            return null;
        }
    }
}
```

---

## ANSWER KEY

### Code Completion Answers:

**Question 1 Sample Solution:**
```java
public Student() {
    this("Unknown", 18, "Undeclared", 0.0);
    System.out.println("Student created with default values");
}

public Student(String name, int age) {
    this(name, (age >= 16 && age <= 65) ? age : 18, "Undeclared", 0.0);
}

public Student(String name, int age, String major, double gpa) {
    this.name = (name != null && !name.trim().isEmpty()) ? name : "Unknown";
    this.age = (age >= 16 && age <= 65) ? age : 18;
    this.major = major;
    this.gpa = (gpa >= 0.0 && gpa <= 4.0) ? gpa : 0.0;
    studentCount++;
    System.out.println("Student created: " + this.name + ", Age: " + this.age + 
                      ", Major: " + this.major + ", GPA: " + this.gpa);
}
```

**Question 2 Sample Solution:**
```java
public String getBookInfo() {
    String availability = isAvailable ? "Available" : "Checked out";
    return "Title: " + title + "\nAuthor: " + author.getName() + 
           " (" + author.getNationality() + ")\nISBN: " + isbn + 
           "\nStatus: " + availability;
}

public boolean addBook(Book book) {
    if (isbnIndex.containsKey(book.getIsbn())) {
        return false; // Duplicate ISBN
    }
    books.add(book);
    isbnIndex.put(book.getIsbn(), book);
    return true;
}

public boolean checkoutBook(String isbn) {
    Book book = isbnIndex.get(isbn);
    if (book != null && book.isAvailable()) {
        book.setAvailable(false);
        return true;
    }
    return false;
}
```

**Question 3 Sample Solution:**
```java
public String getWeightCategory() {
    if (weight < 5) {
        return "Lightweight";
    } else if (weight >= 5 && weight <= 20) {
        return "Medium";
    } else if (weight > 20 && weight <= 100) {
        return "Heavy";
    } else {
        return "Very Heavy";
    }
}

// Dog class implementations:
@Override
public void makeSound() {
    System.out.println(breed + " says: Woof! Woof!");
}

@Override
public String getHabitat() {
    return "Domestic";
}

@Override
public double getDailyFoodRequirement() {
    return weight * 0.03;
}

// Zoo method:
public void dailyZooReport() {
    double totalFood = 0.0;
    System.out.println("=== Daily Zoo Report ===");
    for (Animal animal : animals) {
        animal.displayBasicInfo();
        animal.makeSound();
        double foodReq = animal.getDailyFoodRequirement();
        totalFood += foodReq;
        System.out.println("Habitat: " + animal.getHabitat() + 
                          ", Weight Category: " + animal.getWeightCategory());
    }
    System.out.println("Total daily food requirement: " + totalFood + " kg");
}
```
1.answer:
```
public Student() {
    this("Unknown", 18, "Undeclared", 0.0);
    System.out.println("Student created with default values");
}

public Student(String name, int age) {
    this(name, (age >= 16 && age <= 65) ? age : 18, "Undeclared", 0.0);
}

public Student(String name, int age, String major, double gpa) {
    this.name = (name != null && !name.trim().isEmpty()) ? name : "Unknown";
    this.age = (age >= 16 && age <= 65) ? age : 18;
    this.major = major;
    this.gpa = (gpa >= 0.0 && gpa <= 4.0) ? gpa : 0.0;
    studentCount++;
    System.out.println("Student created: " + this.name + ", Age: " + this.age + 
                      ", Major: " + this.major + ", GPA: " + this.gpa);
}
```

2.answer:
```
public String getBookInfo() {
    String availability = isAvailable ? "Available" : "Checked out";
    return "Title: " + title + "\nAuthor: " + author.getName() + 
           " (" + author.getNationality() + ")\nISBN: " + isbn + 
           "\nStatus: " + availability;
}

public boolean addBook(Book book) {
    if (isbnIndex.containsKey(book.getIsbn())) {
        return false; // Duplicate ISBN
    }
    books.add(book);
    isbnIndex.put(book.getIsbn(), book);
    return true;
}

public boolean checkoutBook(String isbn) {
    Book book = isbnIndex.get(isbn);
    if (book != null && book.isAvailable()) {
        book.setAvailable(false);
        return true;
    }
    return false;
}
```
3.answer:
```
public String getWeightCategory() {
    if (weight < 5) {
        return "Lightweight";
    } else if (weight >= 5 && weight <= 20) {
        return "Medium";
    } else if (weight > 20 && weight <= 100) {
        return "Heavy";
    } else {
        return "Very Heavy";
    }
}

// Dog class implementations:
@Override
public void makeSound() {
    System.out.println(breed + " says: Woof! Woof!");
}

@Override
public String getHabitat() {
    return "Domestic";
}

@Override
public double getDailyFoodRequirement() {
    return weight * 0.03;
}

// Zoo method:
public void dailyZooReport() {
    double totalFood = 0.0;
    System.out.println("=== Daily Zoo Report ===");
    for (Animal animal : animals) {
        animal.displayBasicInfo();
        animal.makeSound();
        double foodReq = animal.getDailyFoodRequirement();
        totalFood += foodReq;
        System.out.println("Habitat: " + animal.getHabitat() + 
                          ", Weight Category: " + animal.getWeightCategory());
    }
    System.out.println("Total daily food requirement: " + totalFood + " kg");
}
```

### True/False Answers:
6. **True**
7. **False** (Dynamic binding - determined at runtime)
8. **True**
9. **True**

### Error Identification Answers:
13. `super(name);` must be the first statement in constructor
14. Missing `disconnect()` implementation in MySQLDatabase; Cannot instantiate abstract class Database
15. Missing exception handling in writeToFile method; Resource leak in readFromFile (reader not closed)
