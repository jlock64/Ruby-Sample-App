# 4.3.3
# 1) Define a hash with the keys 'one', 'two', and 'three', and the values 'uno', 'dos', and 'tres'. Iterate over the hash, and for each key/value pair print out "'#{key}' in Spanish is '#{value}'".
my_hash = {one: 'uno', two: 'dos', three: 'tres'}
my_hash.each do |key, value|
  puts "'#{key}' in spanish is '#{value}'"
end

# 2) Create three hashes called person1, person2, and person3, with first and last names under the keys :first and :last. Then create a params hash so that params[:father] is person1, params[:mother] is person2, and params[:child] is person3. Verify that, for example, params[:father][:first] has the right value.
person1 = {first: 'Justin', last: 'lock'}
person2 = {first: "Christina", last: "lock"}
person3 = {first: "Connor", "lock"}
params[:father] = person1
params[:father][:first] # should equal "Justin"
>> params
=> {:father=>{:first=>"Justin", :last=>"lock"}, :mother=>{:first=>"Christina", :last=>"lock"}, :child=>{:first=>"Connor", :last=>"lock"}}
# 3) Define a hash with symbol keys corresponding to name, email, and a “password digest”, and values equal to your name, your email address, and a random string of 16 lower-case letters.
me_hash = {name: "Justin Lock", email: "jlock@gmail.com", password: ('a'..'z').to_a.shuffle[0..15].join }

# 4) Find an online version of the Ruby API and read about the Hash method merge. What is the value of the following expression?
{ "a" => 100, "b" => 200 }.merge({ "b" => 300 })
# answer {"a"=>100, "b"=>300}

-------------------------------------------------

# 4.4 Ruby Classes
# 4.4.1 Constructors

# 1) What is the literal constructor for the range of integers from 1 to 10? 
a = (1..10)
>> (1..10).class
=> Range

# 2) What is the constructor using the Range class and the new method? Hint: new takes two arguments in this context.
>> a = Range.new(1,10)
=> 1..10

# 3) Confirm using the == operator that the literal and named constructors from the previous two exercises are identical.
>> a = (1..10)
=> 1..10
>> b = Range.new(1, 10)                                              => 1..10
>> puts "yes" if a == b
yes

# 4.4.2
# What is the class hierarchy for a range? For a hash? For a symbol?
>> a.class
=> Range
>> a.class.superclass
=> Object
>> a.class.superclass.superclass
=> BasicObject

>> b.class
=> Hash
>> b.class.superclass
=> Object
>> b.class.superclass.superclass
=> BasicObject

>> :a.class
=> Symbol
>> :a.class.superclass
=> Object
>> :a.class.superclass.superclass
=> BasicObject

#4.4.3
# 1) Verify that “racecar” is a palindrome and “onomatopoeia” is not. What about the name of the South Indian language “Malayalam”? Hint: Downcase it first.
>> class String
>>   # Returns true if the string is its own reverse.
>>   def palindrome?
>>     self == self.reverse
>>   end
>> end
>> "racecar".palindrome?
=> true
>> "onomatopeia".palindrome?
=> false
>> "Malayalam".downcase.palindrome?
=> true

# Using Listing 4.16 as a guide, add a shuffle method to the String class. Hint: Refer to Listing 4.12.
>> class String
>>    def shuffle
>>      self.split('').shuffle.join
>>    end
>>  end
=> :shuffle
>> "ayylmao".shuffle
=> "myolaya"

# Verify that Listing 4.16 works even if you remove self..
>> class String
>>   def shuffle
>>     split('').shuffle.join
>>   end
>> end
=> :shuffle
>> "justin".shuffle
=> "juinst"

