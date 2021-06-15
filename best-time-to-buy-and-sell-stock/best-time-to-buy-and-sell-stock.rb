# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    highest = 0
    min_price = prices[0]
    prices.slice(1, prices.length).each_with_index do |price, i|
        min_price = price if price < min_price
        highest = price - min_price if price - min_price > highest

    end
    highest
            
end