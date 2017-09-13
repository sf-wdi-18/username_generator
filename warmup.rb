# Run `rspec spec/the_warmup_spec.rb` to get started.

def say_hello
  p "hello"
  # => 'hi'
end
p say_hello

def scream(message)
  p message.upcase + '!'
    # => 'Message'
end
p scream('hello world')

def first_char(word)
  p word[0].downcase
  # => 'w' for word
end
p first_char('Anthony')

def polly_wanna(str)
  p str * 3
 # => 'crackercrackercracker'
end
p polly_wanna('cracker')

def after_you
  p 'no, after you'
  # => 'no, after you'
end
p after_you
