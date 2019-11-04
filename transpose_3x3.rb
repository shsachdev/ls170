def transpose(mtx)
  copy_mtx = mtx.clone
  new_mtx = [[],[],[]]
  copy_mtx.each do |sub_arr|
    sub_arr.each_with_index do |elem, index|
      new_mtx[index] << elem
    end
  end
  new_mtx
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]


# The transpose of a matrix is a new matrix whose rows are the columns of the original.


# Algorithm:

#
