!> @file
!> This is a Fortran file.
!>
!> @author Ed Hartnett, @date 6/2/23

!> This is a Fortran program.
!>
!> @author Ed Hartnett, @date 6/2/23
program hello
  implicit none
  integer :: i
  integer :: MAX_COUNT
  parameter(MAX_COUNT = 15)

  print *, 'Hello world!'
  do i = 1, MAX_COUNT
     print *, i
     if (mod(i, 3) .eq. 0) print *, 'Fizz'
     if (mod(i, 5) .eq. 0) print *, 'Buzz'
  end do
end program hello
