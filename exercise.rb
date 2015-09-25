class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    words = str.split(" ")
    words.each do |word|
      if word.length > 4
        if /[A-Z]/.match(word[0])
          word.sub!(/\w+/, "Marklar")
        else
          word.sub!(/\w+/, "marklar")
        end
      end
    end
    words.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    fibs = []
    f1, f2 = 0, 1
    fibs << f1
    nth.times do
      fibs << f2
      f1, f2 = f2, f1 + (f2)
    end

    sum = 0
    fibs.each do |n|
      if n % 2 == 0
        sum = sum + n
      end
    end
    return sum
  end

end
