package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.components.Group;
	import org.flexlite.domUI.components.Label;
	import org.flexlite.domUI.components.Rect;
	import org.flexlite.domUI.core.DragSource;
	import org.flexlite.domUI.events.DragEvent;
	import org.flexlite.domUI.layouts.TileLayout;
	import org.flexlite.domUI.managers.DragManager;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * 
	 * @author DOM
	 */
	public class DragManagerTest extends AppContainer
	{
		/**
		 * 构造函数
		 */		
		public function DragManagerTest()
		{
			super();
		}
		
		private var button:Button = new Button();
		
		private var group:Group = new Group();
		
		private var rect:Rect = new Rect();
		
		override protected function createChildren():void
		{
			super.createChildren();
			button.label = "点击开始拖拽";
			button.verticalCenter = 0;
			button.x = 10;
			button.addEventListener(MouseEvent.MOUSE_DOWN,onStartDrag);
			
			var g:Group = new Group();
			g.width = g.height = 200;
			g.horizontalCenter = 10;
			g.verticalCenter = 0;
			addElement(g);
			addElement(button);
			
			rect.strokeAlpha = 1;
			rect.strokeColor = 0x000000;
			rect.percentHeight = rect.percentWidth = 100;
			rect.fillAlpha = 1;
			rect.fillColor = 0x009aff;
			g.addElement(rect);
			
			var label:Label = new Label();
			label.text = "拖拽到此处";
			label.horizontalCenter = label.verticalCenter = 0;
			g.addElement(label);
			
			group.layout = new TileLayout();
			group.percentHeight = group.percentWidth = 100;
			g.addElement(group);
			
			group.addEventListener(DragEvent.DRAG_ENTER,onDragEnter);
			group.addEventListener(DragEvent.DRAG_DROP,onDragDrop);
			group.addEventListener(DragEvent.DRAG_EXIT,onDragExit);
		}
		
		
		private var count:int = 0;
		/**
		 * 发起一次拖拽操作
		 */		
		private function onStartDrag(event:MouseEvent):void
		{
			count++;
			var dragSource:DragSource = new DragSource();
			dragSource.addData("按钮"+count,"ButtonData");
			var bitmapData:BitmapData = new BitmapData(button.width,button.height);
			bitmapData.draw(button);
			var dragImage:Bitmap = new Bitmap();
			dragImage.bitmapData = bitmapData;
			
			DragManager.doDrag(button,dragSource,dragImage);
		}
		/**
		 * group监听拖拽进入事件
		 */		
		private function onDragEnter(event:DragEvent):void
		{
			rect.strokeColor = 0xFF0000;
			if(event.dragSource.hasFormat("ButtonData"))
			{
				DragManager.acceptDragDrop(group);
			}
		}
		/**
		 * 拖拽移出group
		 */		
		private function onDragExit(event:DragEvent):void
		{
			rect.strokeColor = 0x000000;
		}
		/**
		 * 在group上放下拖拽的数据
		 */		
		private function onDragDrop(event:DragEvent):void
		{
			var data:String = event.dragSource.dataForFormat("ButtonData") as String;
			var btn:Button = new Button();
			btn.label = data;
			group.addElement(btn);
		}

	}
}