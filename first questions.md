# Java Midterm Practice Questions: Constructors, Static Methods, and Composition

## Code Tracing Questions

### Question 1 (Medium)

```java
class Engine {
    int power;
    static int count;

    Engine(int power) {
        this.power = power;
        count++;
    }
}

class Car {
    Engine engine;
    static int totalCars;

    Car() {
        this(100);
    }

    Car(int power) {
        engine = new Engine(power);
        totalCars++;
    }

    static void printStats() {
        System.out.println("Cars: " + totalCars + ", Engines: " + Engine.count);
    }
}

public class Main {
    public static void main(String[] args) {
        Car car1 = new Car();
        Car car2 = new Car(200);
        Car car3 = new Car();
        Car.printStats();
    }
}
```

### Question 2 (Hard)

```java
class Device {
    static int count;
    int id;

    Device() {
        id = ++count;
    }
}

class Room {
    Device device;

    Room() {
        device = new Device();
    }
}

class House {
    static int totalRooms;
    Room[] rooms;

    House(int n) {
        totalRooms = n;
        rooms = new Room[n];
        for (int i = 0; i < n; i++) {
            rooms[i] = new Room();
        }
    }

    static void report(House h) {
        System.out.println("Rooms: " + totalRooms + ", Devices: " + Device.count);
    }
}

public class Main {
    public static void main(String[] args) {
        House h1 = new House(2);
        House.report(h1);
        House h2 = new House(3);
        House.report(h2);
    }
}
```

## Code Completion Questions

### Question 3 (Medium)

```java
class Rectangle {
    int width, height;

    Rectangle(int w, int h) {
        width = w;
        height = h;
    }

    Rectangle(int size) {
        // Fill in: create a square by calling the other constructor
    }

    int area() {
        return width * height;
    }
}

public class Main {
    public static void main(String[] args) {
        Rectangle r = new Rectangle(5);
        System.out.println(r.area());
    }
}
```

### Question 4 (Medium)

```java
class Circle {
    static double PI = 3.14;
    double radius;

    Circle(double r) {
        radius = r;
    }

    static double area(Circle c) {
        // Fill in: return the area of circle c
    }
}

public class Main {
    public static void main(String[] args) {
        Circle c = new Circle(2.0);
        System.out.println(Circle.area(c));
    }
}
```

## Error Identification Questions

### Question 5 (Medium)

```java
class Item {
    String name;
    static int count;

    Item(String name) {
        name = name;
        count++;
    }

    static void printName() {
        System.out.println("Name: " + name);
    }
}

public class Main {
    public static void main(String[] args) {
        Item item = new Item("Book");
        System.out.println(Item.count);
    }
}
```

### Question 6 (Medium)

```java
class Battery {
    int level;

    Battery(int level) {
        level = level;
    }
}

class Phone {
    Battery battery;

    Phone(int level) {
        battery = Battery(level);
    }

    void showLevel() {
        System.out.println("Battery level: " + battery.level);
    }
}