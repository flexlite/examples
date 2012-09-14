package
{
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.events.CollectionEvent;
	
	import flash.display.Sprite;
	
	/**
	 * ArrayCollection测试
	 * @author DOM
	 */
	public class ArrayCollectionTest extends Sprite
	{
		public function ArrayCollectionTest()
		{
			super();
			runTest();
		}
		
		private function runTest():void
		{
			var ac:ArrayCollection = new ArrayCollection;
			ac.addEventListener(CollectionEvent.COLLECTION_CHANGE,onAcChanged);
			for(var i:int=0;i<10;i++)
			{
				ac.addItem("添加了:"+i);
			}
			for each(var num:String in ac)
			{
				trace(num);
			}
			for(var index:String in ac)
			{
				trace(index);
			}
			for(var j:int=0;j<ac.length;j++)
			{
				trace("ac[j]："+ac[j]);
				ac[j] = "替换为："+j;
			}
		
			ac.removeItemAt(0);
			ac.refresh();
			ac.source = ac.source;
			ac.moveItemAt(3,8);
			ac.replaceItemAt("替换了一个元素",2);
			ac.itemUpdated("添加了:1");
			
			trace("操作后的数据列表：");
			for each(var data:String in ac)
			{
				trace(data);
			}
			var contains:Boolean = ac.contains("替换了一个元素");
			trace("ac.contains(\"替换了一个元素\"):"+contains);
			var itemIndex:int = ac.getItemIndex("替换了一个元素");
			trace("ac.getItemIndex(\"替换了一个元素\")："+itemIndex);
			trace("ac.getItemAt(2):"+ac.getItemAt(2));
			ac.removeAll();
			trace("全部移除后length:"+ac.length);
		}
		
		protected function onAcChanged(event:CollectionEvent):void
		{
			trace(event.toString());
		}
	}
}