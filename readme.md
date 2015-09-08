## Username Generator

Your goal is to write a ruby function that generates a username. It should behave in the following way:

| inputs | output |
|:------|:-------|
| James Bond 2007 | jbond07 |
| John Doe 1978 | jdoe78 |
| John Doe 1978 | jdoe78_1 |
| John Doe 1978 | jdoe78_2 |
| Chico Marx 1887 1 | seller-cmarx87 |
| Harpo Marx 1888 2 | manager-hmarx88 |
| Groucho Marx 1890 3 | admin-gmarx90 |


### Setup
``` bash
git clone THIS_REPO
cd username_generator
```


### Testing

We'll use a tool called `rspec`  to outline our objectives AND test our code as we go... hooray for Test Driven Development (TDD)!

`rspec` is available as a Ruby gem, so start in your terminal by running the command:

``` bash
gem install rspec
```

You might get an error here, but we believe in you. Fix it.

### Test Driven Development -- Red, Green, Refactor.
Take a look inside the `/spec` folder, and you'll see our test suite broken up into 5 files.
- /spec/username_spec_level_1.rb
- /spec/username_spec_level_2.rb
- /spec/username_spec_level_3.rb
- /spec/username_spec_level_4.rb
- /spec/username_spec_level_5.rb

For each level: Make sure the tests are failing (red). Pass the tests (green). Then, refactor your code.

To run the tests for each level, type the following in the command line:

```bash
rspec spec/username_spec_level_1.rb
# or
rspec spec/username_spec_level_1.rb --format documentation
```

You should see the following output:

    FF --> 2 tests failed
    Failures:
      1) #generate_username, level 1 returns the first letter of first_name
         Failure/Error: expect( generate_username("ilias") ).to eq "i"
         ArgumentError:
           wrong number of arguments (1 for 0)
         # ./username.rb:1:in `generate_username'
         # ./spec/username_spec_level_1.rb:8:in `block (2 levels) in <top (required)>'
      2) #generate_username, level 1 lowercases the first letter of first_name
         Failure/Error: expect( generate_username("Ilias") ).to eq "i"
         ArgumentError:
           wrong number of arguments (1 for 0)
         # ./username.rb:1:in `generate_username'
         # ./spec/username_spec_level_1.rb:14:in `block (2 levels) in <top (required)>'

####Hooray!
* The first tests are failing. _We're seeing **RED**._
* Now we need to write code to pass the tests and _turn them **GREEN**_. 
* When all the tests are green, we're ready to _stop and **REFACTOR**_!

**Tips:**

* Run rspec frequently, and test your work.
* BE *VERY CAREFUL* to use the correct function name.


##Challenges

#### Level 1
Run: `rspec spec/username_spec_level_1.rb`

Create a function `generate_username` that accepts a users's first name  
* return only the first character
* make it lowercase

#### Level 2
Run: `rspec spec/username_spec_level_2.rb`

Modify `generate_username` to accept a user's first and last name  
* return the first char of the first name + the last name
* make it lowercase
* remove leading and trailing spaces
* reject invalid input: e.g. cases like ""
* STRETCH: ensure that only alphabet characters are allowed 

#### Level 3
Run: `rspec spec/username_spec_level_3.rb`

Modify `generate_username` to take three arguments (first_name, last_name and birth_year):  
* combine them into one string, e.g. "smith1980"
* but use only the last two digits of birth_year, e.g. "smith80"
* and reject invalid birth_year input: e.g. cases like 80, 198, 20111

#### Level 4
Run: `rspec spec/username_spec_level_4.rb`

Create a function called `check_privilege` that takes a level (integer) and returns a user type (string).  
* Allocate privilege using the following table:
    * 0 --> "user"
    * 1 --> "seller"
    * 2 --> "manager"
    * 3 --> "admin"
* return a string indicating the corresponding privilege level
* make the privilege level 0 by default
* STRETCH: modify `generate_username` so that it creates accounts that specify user privileges
    * Prefix usernames with "admin-", "seller-", "manager-" (e.g. "seller-jdoe78").
    * Do not add the "user-" prefix to any username.

#### Level 5
Run: `rspec spec/username_spec_level_5.rb`

Modify `generate_username` to ensure username uniqueness  
* come up with a simple way to "save" or "cache" your usernames as you create them
* if a username already exists, append "_1"
    * STRETCH: increment n: e.g.  jdoe78, jdoe78_1,  jdoe78_2, bbunny60, bbunny60_1

#### BONUS -- Command-line inputs
* OPTION 1 -- Interactively get user input from the command line and output a username to the console. I.e. when I run `ruby username.rb` I should be prompted (from the command line) for my name, birth year, etc.
* OPTION 2 -- Accept command line arguments (e.g. `ruby username.rb john doe 1980`) and output a username to the console.

