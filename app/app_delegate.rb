class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    @table_view_controller = HogeTableViewController.new

    root_view_controller = UINavigationController.alloc.initWithRootViewController(@table_view_controller)
    @window.rootViewController = root_view_controller
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
   true
  end
end
