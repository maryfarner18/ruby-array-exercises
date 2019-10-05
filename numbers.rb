class Numbers

    attr_accessor :numbers

    def initialize
        @numbers = (0..100).to_a
    end


    # 1. return all odd numbers
    def odd
        numbers.select {|num| num.odd?}
    end

    # 2. return all even numbers
    def even
        numbers.select {|num| num.odd?}
    end

    # 3. return the square of all the numbers
    def squares
        numbers.map {|num| num ** 2}
    end

    # 4. return the first number whose square is > 350
    def first_square_350
        sqr = squares.find {|num| num > 350}
        sqr ** 0.5 
    end

    # 5. return all the numbers whose square is > 350
    def all_square_350
        sqrs = squares.select {|num| num > 350}
        sqrs.map {|sqr| sqr ** 0.5}
    end

    # 6. return all the numbers, cubed
    def all_cubed
        numbers.map {|num| num ** 3}
    end

    # 7. return the first number whose cube is > 500
    def first_cubed_500
        cube = all_cubed.find {|num| num > 500}
   
        (cube ** (1/3.0)).round
    end

    # 8. return all the numbers whose cube is < 500
    def all_cube_less_500
        cube = all_cubed.select {|num| num < 500}
        cube.map {|num| (num ** (1/3.0)).round}
    end

end