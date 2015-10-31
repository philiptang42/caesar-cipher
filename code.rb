def caesar_cipher(string)
  shiftedArray = []
  charLine = string.chars.map(&:ord)
  alphabet = 26

  shift = 3
  shift.times do |shift|
    shiftedArray << charLine.map do |c|
      ((c + shift) < 123 ? (c + shift) : (c + shift) - 26).chr
    end.join
  end

  shiftedArray[2]
end

puts caesar_cipher("a")
puts caesar_cipher("z")
puts caesar_cipher("Caesar")
