package
{
	import org.flexlite.domUI.collections.XMLCollection;
	import org.flexlite.domUI.components.Tree;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * Tree测试
	 * @author DOM
	 */
	public class TreeTest extends AppContainer
	{
		public function TreeTest()
		{
			super();
		}
		
		private var tree:Tree;
		
		override protected function createChildren():void
		{
			super.createChildren();
			tree = new Tree();
			var dp:XMLCollection = new XMLCollection();
			dp.source = <root>
					<dir name="测试数据0">
						<item name="测试数据00"/>
						<dir name="测试数据01">
							<item name="测试数据000"/>
						</dir>
					</dir>
					<dir name="测试数据1">
					</dir>
					<item name="测试数据2"/>
				</root>;
			tree.labelField = "@name";
			tree.iconFunction = iconFunc;
			tree.dataProvider = dp;
			addElement(tree);
		}
		
		[Embed(source="resource/img/dir.gif")]
		private var dir:Class;
		[Embed(source="resource/img/file.png")]
		private var file:Class;
		
		private function iconFunc(item:Object):Object
		{
			if(item.localName()=="dir")
				return dir;
			return file;
		}
	}
}