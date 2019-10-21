class Waiter
    attr_accessor :name, :yrs_expierience

    @@all = []

    def initialize(name, yrs_expierience)
        @yrs_expierience = yrs_expierience
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end

    def meals 
        Meal.all.select do |meal|
            meal.waiter == self
        end
    end
end

