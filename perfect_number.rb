class PerfectNumber
  def self.classify(num)
    raise RuntimeError if num < 0
    answer = factors(num)
    if answer > num
      "abundant"
    elsif answer == num
      "perfect"
    else
      "deficient"
    end
  end

  def self.factors(number)
    factors_list = []
    (1..number).each do |num|
      factors_list << num if number%num == 0 && num != number
    end
    factors_list.sum
  end
end

# exercise complete
