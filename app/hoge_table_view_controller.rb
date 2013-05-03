class HogeTableViewController < UITableViewController
  def viewDidLoad
    super

    self.setTitle('Hoge View')
    @data = %w(One Two Three Four Five)
  end

  def numberOfSectionsInTableView tableView
    1
  end
  def tableView tableView, numberOfRowsInSection:section
    @data.length
  end
  def tableView tableView, cellForRowAtIndexPath:indexPath
    @@cellIdentifier = "Hoge"
    cell = tableView.dequeueReusableCellWithIdentifier(@@cellIdentifier)
    cell = UITableViewCell.alloc.initWithFrame(CGRectZero, reuseIdentifier:@@cellIdentifier) unless cell
    cell.textLabel.text = @data[indexPath.row]
    cell
  end
  def tableView tableView, didSelectRowAtIndexPath:indexPath
    @detail = UIViewController.new
    @detail.title = @data[indexPath.row]

    self.navigationController.pushViewController(@detail, animated:true)
  end
end
