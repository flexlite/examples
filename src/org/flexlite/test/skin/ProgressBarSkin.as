package org.flexlite.test.skin
{
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.components.Group;
	import org.flexlite.domUI.components.Label;
	import org.flexlite.domUI.components.supportClasses.Skin;
	import org.flexlite.domUI.primitives.Rect;
	import org.flexlite.domUI.primitives.graphic.SolidColor;
	
	
	/**
	 * 
	 * @author DOM
	 */
	public class ProgressBarSkin extends Skin
	{
		public function ProgressBarSkin()
		{
			super();
		}
		
		public var thumb:Group;
		public var track:Group = new Group;
		public var labelDisplay:Label = new Label;
		override protected function createChildren():void
		{
			super.createChildren();
			thumb = new Group();
			var rect:Rect = new Rect;
			rect.percentHeight = rect.percentWidth = 100;
			rect.fill = new SolidColor(0x009aff,1);
			thumb.addElement(rect);
			thumb.height = 10;
			thumb.verticalCenter = 0;
			
			rect = new Rect;
			rect.fill = new SolidColor(0x444444,1);
			rect.width = 200;
			rect.height = 10;
			track.verticalCenter = 0;
			track.addElement(rect);
			addElement(track);
			addElement(thumb);
			
			labelDisplay.x = 205;
			labelDisplay.verticalCenter = 0;
			addElement(labelDisplay);
		}
	}
}