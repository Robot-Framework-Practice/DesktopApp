# Desktop App Automation Test Instruction
# Robot Framework
## Cấu trúc thư mục
Sử dụng cấu trúc POM cho các folder để dễ quản lý source code
```
    main
    |________ page
    |________ testcase
    |________ report
```

## Lệnh để chạy code automation test
```
    robot --outputdir ../report/Module2 Module2.robot
```
- Trong đó ta có thể lưu report vào đường dẫn ta mong muốn và chạy file code nào
- Ngoài ra còn có thể sử dụng lệnh sau để chạy tất cả các file có trong folder
```
    robot --outputdir ../report/Module2 *
```
> **Lưu ý:**  Cần vào đúng đường dẫn chứa file cần chạy mới có thể dùng lệnh và để chạy trong VS Code thì chỉ cần bật terminal
## Module8
Đối với có sử dụng OTP của Gmail thì phải mở trước browser với port khác dành cho debugging
- Vào cmd trên windows
- Gõ lệnh 
``` 
    start chrome.exe --remote-debugging-port=9222
```
- Sau đó chạy file source code như bình thường