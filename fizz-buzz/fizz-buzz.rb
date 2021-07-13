# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    result = []
    i = 1
    (1..n).each do 
        ans = ""
        if i % 3 == 0 && i % 5 == 0
            ans += "FizzBuzz"
        elsif i % 5 == 0
            ans += "Buzz"
        elsif i % 3 == 0
            ans += "Fizz"
        else
            ans += i.to_s
        end
        result.push(ans)
        i += 1
    end
    result
end