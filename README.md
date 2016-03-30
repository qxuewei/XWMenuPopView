# XWMenuPopView
基于OC的弹出视图

初始化:
//将弹出菜单视图添加到主视图

    XWMenuPopView *myMenuPopView = [[XWMenuPopView alloc] initWithFrame:self.view.frame];
    [myMenuPopView setMenuPopDelegate:self];
    [self.view addSubview:myMenuPopView];
    
 //弹出菜单:

    [self.myMenuPopView showMenu];
    

备注:
如果弹出视图不是在顶端弹出,可尝试:

    [self.view bringSubviewToFront:_myMenuPopView];

如果Window的跟视图是对于UITabBarController的自定义封装,则需要将XWMenuPopView对象添加在(自定义)UITabBarController.view中
