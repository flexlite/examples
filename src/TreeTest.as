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
		
		override protected function init():void
		{
			tree = new Tree();
			var dp:XMLCollection = new XMLCollection();
			dp.source = <root>
					<item name="测试数据0" icon="resource/img/dir.gif">
						<item name="测试数据1" icon="resource/img/file.png"/>
					</item>
					<item name="测试数据2" icon="resource/img/dir.gif">
					</item>
					<item name="测试数据3" icon="resource/img/file.png"/>
				</root>;
			tree.labelField = "@name";
			tree.iconField = "@icon";
			tree.dataProvider = dp;
			addElement(tree);
		}
	}
}