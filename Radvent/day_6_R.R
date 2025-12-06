lines = readLines("input_day6.txt")
grid = strsplit(lines, "\\s+")
grid_numbers =  t(do.call(rbind, lapply(grid[-length(grid)], as.numeric)))
operators = grid[[length(grid)]]
is_add = operators == '+'
is_mul = operators == '*'
total = sum((rowSums(grid_numbers) * is_add) + (apply(grid_numbers, 1, prod) * is_mul))
total

 