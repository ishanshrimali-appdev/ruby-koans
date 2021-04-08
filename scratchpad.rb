  class Dog
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def bark
      "WOOF"
    end
  end

  class Chihuahua < Dog
    def wag
      :happy
    end

    def bark
      "yip"
    end

    def test_subclasses_add_new_behavior
    chico = Chihuahua.new("Chico")
    assert_equal :happy, chico.wag

    assert_raise(___) do
      fido = Dog.new("Fido")
      fido.wag
    end
  end