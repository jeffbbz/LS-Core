class Person
  attr_writer :secret

  def share_secret
    puts secret
  end

  private

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.share_secret

# To make a method private we invoke `private` and then define
# the method beneath that in the class. In this way we can only
# invoke the private method from within the class itself, not
# from outside.