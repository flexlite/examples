package
{
	import org.flexlite.domUI.collections.ObjectCollection;
	import org.flexlite.domUI.collections.XMLCollection;
	import org.flexlite.domUI.components.Tree;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * Tree测试
	 * @author dom
	 */
	public class TreeTest extends AppContainer
	{
		public function TreeTest()
		{
			super();
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			var tree:Tree = new Tree();
			var dp:XMLCollection = new XMLCollection();
			dp.source = <root>
					<item dir='true' name='XML数据源0'>
						<item name='XML数据源00'/>
						<item dir='true' name='XML数据源01'>
							<item name='XML数据源000'/>
						</item>
					</item>
					<item dir='true' name='XML数据源1'/>
					<item name="XML数据源2"/>
				</root>;
			tree.labelField = "@name";
			tree.iconFunction = iconFunc;
			tree.dataProvider = dp;
			addElement(tree);
			
			var tree2:Tree = new Tree();
			var dp2:ObjectCollection = new ObjectCollection();
			dp2.source = {children:[{dir:true,name:"Object数据源0",
				children:[{name:"Object数据源00"},
					{dir:true,name:"Object数据源01",
						children:[{name:"Object数据源000"}]}]},
				{dir:true,name:"Object数据源1",children:[]},
				{name:"Object数据源2"}]};
			ObjectCollection.assignParent(dp2.source);
			tree2.labelField = "name";
			tree2.iconFunction = iconFunc;
			tree2.dataProvider = dp2;
			tree2.x = 200;
			addElement(tree2);
		}
		
		[Embed(source="resource/img/dir.gif")]
		private var dir:Class;
		[Embed(source="resource/img/file.png")]
		private var file:Class;
		
		private function iconFunc(item:Object):Object
		{
			if(item is XML)
			{
				if(item.@dir=="true")
					return dir;
				return file;
			}
			else
			{
				if(item.dir)
					return dir;
				return file;
			}
		}
	}
}