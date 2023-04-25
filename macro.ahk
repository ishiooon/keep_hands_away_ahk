#D::
clipboard =
Send, ^c
ClipWait
Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe  https://www.google.com/search?q=%clipboard%&rlz=1C1CHBD_jaJP864JP864&oq=kennsaku+&aqs=chrome..69i57j69i59j0i4l2j69i60j69i61j69i60l2.1151j1j7&sourceid=chrome&ie=UTF-8  

#C::
Send, 2021/01/08

#F::
clipboard =
Send, ^c
ClipWait
Run, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe  %clipboard%

