# Assessment Quiz 
 
 ## Test Automation

Why would you want to automate a test?
    If it requires monotinous/repetitive work. (Speeds up the process)
    
What tests are good canidates for automation? How do you decide what to automate?
    Tests that check each variable incrementally (do x for 11/20, do x for 11/21, do x for 11/22, etc)
    
What type of things are not good to automate?
    Simple/short tests, or tests that require an active human eye to witness something.
    
What criteria do you consider for automating a test?
    Number of independent variables?
    Am I only concerned with the end result?
    
What are some advantages to writing automated tests that drive the UI of an application? What are some of the disadvantages?
    Testing is more intuitive since it's based on the UI/Browser which is (usually) more recognizable than a million lines of code
    
What is the Test Data Lifecycle? What is destructive testing?
    Test Data Lifecycle is (i think) the life span of a test's relevancy. Things are constantly changing, which means new test will be necessary.
    Destructive testing (i think) is testing that aims to crash/break whatvever it's testing.
    
Can you automate everything 100%? If no, what are the disadvantages of trying to automate everything?
    Everything is too absolute of a word. But you can automate almost everything.
    The disadvantages of this would be that: 
        -Some time would be lost becasue sometimes manual testing is quicker.
        -Manual testing skills of the testers would diminish.

 ## OO Questions

Explain what Object Oriented Programming.
    An object in programming is a data structure that holds certain information/attributes.
    Therefore Object Oriented programming is programming that utilizes groups of objects as one 'object' to increase simplicity, efficiency, readability, etc.
    Think of an object as a set of parantheses with an expression in it. Or a car with parts in it, that each have their own parts, etc.
    
 What is the difference between module and a class in Ruby?
    A class in Ruby details how a certain object is structured and how it functions. (Class: car, has an engine, 4-5 seats, 4 tires, etc)
    A module is like a toolbox with various methods/functions in it that would be useful for performing certain tasks. (Box containing things for use on a Car object: Car jack, jumper cables, spare tire)
    
 Explain the mix-in behavior in Ruby.
    Implements the behavior of multiple inheritance, without using inheritance.
    'Include' whatever classes you need in your new class, instead of saying that your new class inherits from those classes (because that is not allowed)
    
 Explain inheritance in Ruby.
    Humans have certain general characteristics. Adult humans and child humans have more specific characteristics, but still share all the general human characteristics.
    The Adult class and the Child class would inhereit the Human class.
    Squares and trapezoids both share the properties of quadritlaterals, but are still their own shapes. They would inherit the Quadrilateral class.
    
    
 Why should you focus composition over inheritance?
    Composition allows you to better include all the functionality that you need, without including unnecessary functionality.
    
 What is the difference between a class and a instance method?
    An instance method is a method in a class that, when called, performs actions based on whatever instance of that class it is called upon.
    Classes contain instance methods and the general blueprint for how instances of that class (objects) behave.
    
 When would you use an instance method vs a class method?
    Class methods are not specific to an instance of the class.
    For example, There is a Human class with an instance method called say_Name(). It makes the object that called it to print it's name. (Bob.say_Name()  -->  "Bob")
    There is also a class method called human_Count(). It's prints the number of human objects that exist. It doesn't need an instance of the Human class to call it. (human_Count() --> 1  ##it's Bob)

 ## Watir / Page Object

What is the page object pattern?
    Treats pages like objects so that they have methods and attributes to make them more able to be manipulated.
    
What is Watir?@browser.text_field(:id, 'air-city-departure').set('DEN')
    An extension for RubyMine that has all sorts of browser navigation functionality
    
What are the advantages of using Page Object over using Watir?
    Page object takes the page that the browser is on and treats it like an object.
    This makes it much easier to navigate and manipulate.
    
Given a text box with an Id of "myTextBox", Show how you would enter text into the element using watir-webdriver. How would you do it with page object?
    Watir:
        @browser.text_field(:id, 'myTextBox').set('some words and stuff')
    Page Object:
        text_field(:text_box, id: 'myTextBox')
        text_box = "some words and stuff"
    

 ## Cucumber

What is Cucumber?
    A tool for executing specifications and collecting results.
    
 What is Gherkin? How does it relate to Acceptance Criteria?
    Format for defining acceptance tests
    Language that uses step definitions to allow scripts to be written in plain english (Or any language. Or gibrish) for extreme readability.
        Given *criteria*
        When *event*
        Then *expeccted result*
        
Define what is support, env.rb and hooks.rb ?
    The contents of the support folder are run before anything else. The env.rb (which should be saved in the support folder) is always the first to run.
    hooks.rb contains "before" and "after" blocks that run before/after every scenario.
        
 What are the 2 files required to execute a Cucumber test scenario?
    Step definitions and feature file.?
    
What is a feature file in Cucumber? What does feature file consist of?
    Contains scenarios explained in Gherkin so that they are easy to read and understand.
    
 What is the difference between imperative and Declaritive style Gherkin?
    Imperative style Gherkin says vague things like "When the user adds an item to the cart"
    Declarative style Gherkin says specific things like "When the user clicks the add-to-cart button"
    
    It is better to use Imperative style Gherkin because it is less brittle.
    
