def print_grid(board)
  board.each_with_index do |row, row_index|
    row.each_with_index do |a, index|
      if a == nil
        row[index] = " "
      end
    end
  line = row.join(" | ")
  puts "#{line}"
  if row_index + 1 < board.length
    line.length.times do
      print "-"
    end
  end
  puts
  end
end

board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]
print_grid(board_a)
# x | o | x
# -----------
# x |   | o
# -----------
# x | o |
