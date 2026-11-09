program sum_1_to_n
  use iso_fortran_env, only: int64
  implicit none
  integer(int64) :: n, i, total
  integer :: ios
  print '(A)', 'Enter N (0 to 4294967295):'
  read(*, *, iostat=ios) n
  if (ios /= 0) then
    print '(A)', 'ERROR: Invalid integer input.'
    stop 1
  end if
  if (n < 0_int64 .or. n > 4294967295_int64) then
    print '(A)', 'ERROR: N out of supported range.'
    stop 1
  end if
  total = 0_int64
  do i = 1_int64, n
    total = total + i
  end do
  print '(A,I0)', 'SUM=', total
end program sum_1_to_n
