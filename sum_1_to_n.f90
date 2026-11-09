  ! 宣告主程式，計算從 1 累加至 N
program sum_1_to_n
  ! 匯入 64 位元整數型別，避免一般整數溢位
  use iso_fortran_env, only: int64
  ! 要求變數必須明確宣告
  implicit none
  ! 宣告輸入 N、迴圈變數 i 與總和 total
  integer(int64) :: n, i, total
  ! 宣告輸入狀態碼 ios
  integer :: ios
  ! 顯示可接受的 N 範圍
  print '(A)', 'Enter N (0 to 4294967295):'
  ! 讀取 N 並記錄輸入是否成功
  read(*, *, iostat=ios) n
  ! 檢查輸入是否為合法整數
  if (ios /= 0) then
  ! 顯示無效輸入的錯誤訊息
    print '(A)', 'ERROR: Invalid integer input.'
  ! 以非零結束碼終止程式
    stop 1
  ! 結束輸入錯誤判斷
  end if
  ! 檢查 N 是否超出支援範圍
  if (n < 0_int64 .or. n > 4294967295_int64) then
  ! 顯示超出範圍的錯誤訊息
    print '(A)', 'ERROR: N out of supported range.'
  ! 以非零結束碼終止程式
    stop 1
  ! 結束範圍檢查
  end if
  ! 將累加總和初始化為零
  total = 0_int64
  ! 由 1 到 N 逐一累加
  do i = 1_int64, n
  ! 把目前的 i 加入總和
    total = total + i
  ! 結束迴圈
  end do
  ! 印出最終計算結果
  print '(A,I0)', 'SUM=', total
  ! 結束主程式
end program sum_1_to_n
