package
{
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.DataGroup;
	import org.flexlite.domUI.layouts.TileLayout;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * DataGroup测试
	 * @author DOM
	 */
	public class DataGroupTest extends AppContainer
	{
		public function DataGroupTest()
		{
			super();
		}
		
		private var dp:ArrayCollection = new ArrayCollection;
		
		private var dataGroup:DataGroup;
		/**
		 * 执行测试
		 */		
		override protected function createChildren():void
		{
			super.createChildren();
			dataGroup = new DataGroup;
			dataGroup.horizontalCenter = 0;
			dataGroup.verticalCenter = 0;
			dataGroup.dataProvider = dp;
			var layout:TileLayout = new TileLayout;
			layout.useVirtualLayout = true;
			layout.requestedRowCount = 3;
			layout.requestedColumnCount = 2;
			dataGroup.layout = layout;
			dataGroup.clipAndEnableScrolling = true;
			addElement(dataGroup);
			
			for(var i:int=0;i<10;i++)
			{
				dp.addItem("添加了元素："+i);
			}
		}
	}
}