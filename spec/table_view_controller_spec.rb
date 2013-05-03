describe HogeTableViewController do
  tests HogeTableViewController

  before do
    @table_view = controller.view
  end

  describe "1行目" do
    before do
      @cell = @table_view.cellForRowAtIndexPath(NSIndexPath.indexPathForRow 0,
                                            inSection: 0)
    end
    it "タップ" do
      controller.navigationController.mock!(:pushViewController)
      tap @cell
      controller.instance_variable_get('@detail').title.should == 'One'
    end
  end
end
