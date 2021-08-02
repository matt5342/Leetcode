# @param {Integer} n
# @return {Integer}
def total_money(n)
    day = 1
    amount = 1
    total = 0
    while n > 0
        total += amount
        amount += 1
        day += 1
        if day == 8
            day = 1
            amount -= 6
        end
        n -= 1
    end
    total
end