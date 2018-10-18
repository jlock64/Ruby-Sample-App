class User
  # Creates attribute accessors corresponding to a user’s name, first and last name and email address. 
  # This creates “getter” and “setter” methods that allow us to retrieve (get) and assign (set) @name, @first_name, @last_name and @email instance variables. 
  # In Rails, the principal importance of instance variables is that they are automatically available in the views, but in general they are used for variables that need to be available throughout a Ruby class.
    attr_accessor :name, :first_name, :last_name, :email
  
    # The first method, initialize, is special in Ruby: it’s the method called when we execute User.new. This particular initialize takes one argument, attributes:
    # Here the attributes variable has a default value equal to the empty hash, so that we can define a user with no name or email address.
    def initialize(attributes = {})
      @name  = attributes[:name]
      @first_name  = attributes[:first_name]
      @last_name  = attributes[:last_name]
      @email = attributes[:email]
    end
  
    # Finally, our class defines a method called formatted_email that uses the values of the assigned @name and @email variables to build up a nicely formatted version of the user’s email address using string interpolation
    # Because @name and @email are both instance variables (as indicated with the @ sign), they are automatically available in the formatted_email method.
    def formatted_email
      "#{@name} <#{@email}>"
    end

    def full_name
      "#{@first_name} #{@last_name}"
    end

    def alphabetical_name
      "#{@last_name}, #{@first_name}"
    end
  end

#  You can require any file to use inside the console
>> require './example_user'
=> true
>> example = User.new
=> <User:0x00007f81f86b7278 @name=nil, @email=nil>
>> example.name
=> nil
>> example.name = "example user"
=> "example user"
>> example.email = "user@example.com"
=> "user@example.com"
>> example.formatted_email
=> "example user <user@example.com>"

>> user2 = User.new(name: "Justin Lock", first_name: "Justin", last_name: "Lock", email: "jlock@gmail.com")
=> <User:0x00007f81f84d57e8 @name="Justin Lock", @first_name="Justin", @last_name="Lock", @email="jlock@gmail.com">
>> user2.full_name
=> "Justin Lock"