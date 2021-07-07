class Person
    attr_reader :name, :hitpoint, :attack_damage

    def initialize(name, hitpoint, attack_damage)
        @name = name
        @hitpoint = hitpoint
        @attack_damage = attack_damage
    end

    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
    end

    def attack(other_person)
        puts "#{@name} attacks #{other_person.name} with #{attack_damage} damage \n"
        if other_person.name == 'Jin Sakai' && rand() <= 0.8
            @attack_damage = 0
            puts "But #{other_person.name} deflects it !!! #{other_person.name} receive 0 damage"
        else
            @attack_damage = 50
        end 
        other_person.take_damage(@attack_damage)
        @attack_damage = 50
    end

    def take_damage(damage)
        # if other_person.name == "Jin Sakai"
        #     @hitpoint -= 0
        # else
        #     @hitpoint -= damage
        # end
        @hitpoint -= damage
    end

    def die?
        if hitpoint <= 0 
            puts "#{@name} dies"
            true
        end
    end
end

