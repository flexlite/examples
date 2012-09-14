package org.flexlite.test.skin
{
	import org.flexlite.domUI.skins.halo.ButtonSkin;
	import org.flexlite.domUI.skins.spark.ButtonSkin;
	
	import flash.display.Sprite;
	
	
	/**
	 * 
	 * @author DOM
	 */
	public class DxrButtonSkin extends org.flexlite.domUI.skins.halo.ButtonSkin
	{
		public function DxrButtonSkin()
		{
			super();
			var upSkin:org.flexlite.test.skin.ButtonSkin = new org.flexlite.test.skin.ButtonSkin();
			upSkin.currentState = "up";
			upSkin.width = 100;
			upSkin.height = 24;
			var overSkin:org.flexlite.domUI.skins.spark.ButtonSkin = new org.flexlite.domUI.skins.spark.ButtonSkin();
			overSkin.currentState = "over";
			overSkin.width = 100;
			overSkin.height = 24;
			var downSkin:org.flexlite.domUI.skins.spark.ButtonSkin = new org.flexlite.domUI.skins.spark.ButtonSkin();
			downSkin.currentState = "down";
			downSkin.height = 24;
			downSkin.width = 100;
			
			this.upSkin = upSkin;
			this.overSkin = overSkin;
			this.downSkin = downSkin;
		}
	}
}