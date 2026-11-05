---
title: 'From variables to controlling a LED'
teaching: 35
exercises: 25
---

:::::::::::::::::::::::::::::::::::::: questions 

- What is 'serial communication'?
- What are variables in programming?
- How do I write simple instructions in computer code?
- How do I connect an Arduino to real-life devices such as LEDs?

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: objectives

- Explain the basics of programming
- Explain basics of setting up an Arduino circuit including an LED
- Apply basic programming to control a LED

::::::::::::::::::::::::::::::::::::::::::::::::

## Arduino

Let's start with taking a closer look at this small computer, the arduino. 'Arduino' today is used to describe the arduino company, any of it's small computing devices and, most specifically, the microcontroller development board (MDB) you have on your desk right now. The microcontroller is actually just the long black processor you find above the POWER and ANALOG IN pins. What makes it a development board is the form factor and the clear labeling and accessibility of the pins. MDBs are designed to develop programs and tools for microcontrollers; in production systems you'll mostly find very small microcontrollers that simply run these developed programs.

The connectivity of the board consists of:
 - the USB port used to connect the MDB with your PC, to upload and test programs
 - the power supply (often a barrel jack) to simply deliver power to a programmed MDB so it can run independently of another PC
 - 5 analog input pins. Analog means they can process continuous voltage input between 0 and 5V, which the processor can work with
 - 13 digital pins. Digital means they register anything above a threshold voltage (~3.5V) as 'ON' and everything as 'OFF'
 - the power pins: one delivering 3.3V output, one delivering 5V output
 - ground pins: for working electrical circuits the - pole of the circuit needs to be connected to ground
 - some built-in LEDs for status indication and testing purposes
 - a reset button

## Arduino IDE: Programming the MDB

Following the setup instructions, you should be able to start the program, connect your MDB and select it in the menu. To check that everything works, we can write a small program and upload it to the MDB. Programs are also called 'sketches' in the arduino context: they are the text files containing your instructions written in a programming language. Arduino and its integrated development environment (IDE) use a variant of the popular language 'C'. You'll notice that sketches generally consist of at least the two elements ```setup``` and ```loop```. To test correct setup and connectivity write the sketch in the first challenge below.

Once you're done you'll need to compile and upload your program. Compilation is the process of translating the instructions written in the C language to the binary code that the microprocessor can work with. You trigger it by clicking the checkmark button on the upper left side of the IDE window. To send the compiled program to the board you will then click the arrow button right next to it. To verify that the MDB received the program and is executing it correctly, click on the 'Serial port' button in the upper right corner of the IDE to open the Serial port tab. There you should see the output of the ```Serial.print``` statemens in the setup and loop of your first sketch.

::::::::::::::::::::::::::::::::::::: challenge 

## Challenge 1: The first sketch

What is the output of this program?

```C
void setup() {

    Serial.begin(9600);

    delay(2000);

    Serial.print("Is there anybody... ");

}

void loop () {

    Serial.print(" ...out there?");

    delay(1000);
}
```
::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::::::::::::::: solution 

## Output
 
```output
"Is there anybody...  ...out there? ...out there? ...out there? ...out there?
```

:::::::::::::::::::::::::::::::::

Great job! Now try to experiment with the code a bit:

::::::::::::::::::::::::::::::::::::: challenge 

## Challenge 2: Changing the code

1. Try to alter the ```print``` statement to a ```println``` statement.
2. Change the value of the ```delay``` statements in your sketch.
::::::::::::::::::::::::::::::::::::::::::::::::


:::::::::::::::::::::::: solution 

1. ```println``` will print every new output on a new line.
2. ```delay``` is measured in milliseconds. Smaller values will accelerate the loop.

:::::::::::::::::::::::::::::::::

## Serial communication

So what is this ```Serial``` statement in your sketch? Serial communication describes the process of digital communication, meaning information is sent one electric pulse at a time, resulting in a binary code being transmitted over a wire. In our case this wire is the USB cable between our computer and the MDB. The ```Serial``` statment instructs the MDB to send the ```print``` output as a digital signal over the connecting USB cable back to your computer. The arduino IDE's serial monitor allows your computer to decode and display that message on your screen.

## Variables

So far so good: We can send instructions in the form of compiled sketches to the MDB and we now know how to send messages back to our computer. But programs would not be very interesting if everything in them would be as static as the initial sketch we just tried. In fact, ##variables## are the backbone of programming: Stored values that can, as the name suggests, vary during the course of a program. The C language requires you to declare variables explicitly before they can be used. This is so sufficient memory can be allocated to store the variable during program execution.

An important concept here are ##types##: The type of a variable indicates what values it can take. C requires you to also provide an explicit type for each variable. Let's start with an example:

```C
void() {
    // Lines starting with '//' or wrapped in between '/*' and '*/' are comments:
    /* They simply exist for annotation of the code and 
       will be ignored by the compiler and microprocessor */

    /* To declare a variable:
    1: mandatory: indicate its type (integer, float, bool, char, String, etc, ...)
    2: mandatory: choose a unique name
    3: optional: initialize its value

    the pattern is
    <type> <unique name> = <initialization value>;
    */

    //NB: assiging a value to the wrong type may lead to unexpected behavior
    //and the compiler may refuse and flag the error

    int my_variable // declaration without initialization
    my_variable = 100; // I can assign a value later, in another statement

    int my_variable_2 = -273; // declaration and value in the same statement

    unsigned int my_variable_3 = 1023; //an unsigned integer can only assume positive values
}

```

In this example we used the integer type, but what if we need to work with decimal number, e.g. to store a temperature value?
What if we only need to store a truth value (e.g. temperature too high)? And how about text?

```C
// Example of declaration of a floating point variable
float my_float_variable = 3.13;

// Bool types hold true or false only
bool my_bool = true;
bool my_second_bool = 1; // true and 1 are the same for bool, as are 0 and false

// Char types hold single characters
char my_char = 'a';

// String can store a longer sequence of text, useful for messages
String one_string = "to be or not to be... this is the question!";
```

Now that we know what variables are and after learning how to use some of them, let's make use of them in a sketch.
