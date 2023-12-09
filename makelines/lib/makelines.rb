class Generatelines
    def generate
        pot = (1..47).to_a
        line = Array.new
            puts ("Enter your lucky number from 1-47")
            luckyNum = gets.chomp().to_i
            if pot.include? luckyNum
                line.push(luckyNum)
                pot.delete(luckyNum)
            else
                puts ("Invalid input; not from 1-47")
            end
        puts ("Enter your unlucky number from 1-47")
        unluckyNum = gets.chomp().to_i
        if pot.include? unluckyNum
            pot.delete(unluckyNum)
        else
            puts ("Invalid input; not from 1-47 or your lucky number")
        end
        index = line.length
        while index < 6
            ball = pot[rand(0...pot.length)]
            line.push(ball)
            pot.delete(ball)
            index += 1
        end
        return line
    end
end

    