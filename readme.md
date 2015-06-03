# username generator challenge

Goal:
    
    * John Doe 1978 --> jdoe78
    * John Doe 1978 --> jdoe78_1
    * John Doe 1978 --> jdoe78_2
    * John Doe 1978 1 --> seller-jdoe78
    * John Doe 1978 2 --> manager-jdoe78
    * John Doe 1978 3 --> admin-jdoe78
    * John Doe 1978 3 --> admin-jdoe78_1


## Workflow and Submission

* Fork this repo to create a `username_generator_ruby` repo on your github account (or use the alternate workflow). 
* Clone the repo from your github account onto your computer.
* Work locally. Remember to commit your changes often, with commit messages that remind you what you did.
* When finished, push your final version to your github account.
* Submit the link to the `username_generator_ruby` repo on your github account.



## Testing

We'll use a tool called `rspec`  to outline our objectives AND test our code as we go... hooray for Test Driven Development (TDD)!

`rspec` is available as a Ruby gem, so start in your terminal by running the command:

```bash
gem install rspec
```

You might get an error here, but we believe in you. Fix it.

As you tackle each numbered problem below, and each bullet point, run the following from the command line (make sure you're in correct folder):

```bash
rspec
```
or for a nicer viewing experience
```bash
rspec --format documentation
```
(consider making an alias for `rspec` that is actually `rspec --format documentation`)

Take a look inside `username_spec.rb` and you'll see our test suite. For each function, it test that if we give that function a specific input, we get specific output. As you code, run rspec regularly, and pay close attention to the error messages!

Take a look at your rspec output right now.

Note the following:

* FFFFFF --> 6 tests failed
* Note the output for each failed test:

    ``` 
    1) #generate_username1 returns the first letter of first_name
    Failure/Error: expect( generate_username1("nathan") ).to eq "nathan"
    ArgumentError:
    wrong number of arguments (1 for 0)
    # ./username.rb:1:in `generate_username1'
    # ./username_spec.rb:8:in `block (2 levels) in <top (required)>'
    ```

**Tips:**

* Run rspec frequently, and test your work.
* BE *VERY CAREFUL* to use the correct function name.


##Challenge

1. create a unary function `generate_username1` that accepts a users's first name
    * return only the first character
    * make it lowercase

2. create a binary function `generate_username2` that accepts a user's first and last name
    * return the first char of the first name + the last name
    * make it lowercase
    * remove leading and trailing spaces
    * reject invalid input: e.g. cases like ""
    * STRETCH: ensure that only alphabet characters are allowed 
    
3. create a function `generate_username3` that takes three arguments: first_name, last_name and birth_year
    * combine them into one string, e.g. "smith1980"
    * but use only the last two digits of birth_year, e.g. "smith80"
    * and reject invalid birth_year input: e.g. cases like 80, 198, 20111


4. create a function `check_privilege` that allocates privileges according to the following table:

        * 0 --> "user"
        * 1 --> "seller"
        * 2 --> "manager"
        * 3 --> "admin"
        
    * return a string indicating the corresponding privilege level
    * make the privilege level 0 by default
    * STRETCH: modify your function to `generate_username4` and have it create accounts that specify user privileges
        * prefix usernames with e.g. "admin-", "seller-"
            * GOAL: "seller-jdoe78", "admin-xkcd78"
        * However do not add any prefix for normal users.
    

5. ensure username uniqueness `generate_username5`
    * save your usernames as you create them --> (think about how you want to store them)
    * if a username already exists, append "_1"
        * STRETCH: increment n: e.g.  jdoe78, jdoe78_1,  jdoe78_2, bbunny60, bbunny60_1

6. Playing with inputs:
    
* OPTION 1 -- Interactively get user input from the command line and output a username to the console. I.e. when I run `ruby username.rb` I should be prompted (from the command line) for my name, birth year, etc.
* OPTION 2 -- Accept command line arguments (e.g. `ruby username.rb john doe 1980`) and output a username to the console.

