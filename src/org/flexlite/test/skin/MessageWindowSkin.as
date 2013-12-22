package org.flexlite.test.skin
{
	import flash.filters.DropShadowFilter;
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.components.Group;
	import org.flexlite.domUI.components.Label;
	import org.flexlite.domUI.components.StateSkin;
	import org.flexlite.domUI.components.UIAsset;
	import org.flexlite.domUI.states.State;
	import org.flexlite.test.skin.ButtonSkin;
	import org.flexlite.test.skin.CloseButtonSkin;

	/**
	 * @private
	 * 此类由编译器自动生成，您应修改对应的DXML文件内容，然后重新编译，而不应直接修改其代码。
	 * @author DXMLCompiler
	 */
	public class MessageWindowSkin extends org.flexlite.domUI.components.StateSkin
	{
		//==========================================================================
		//                                定义成员变量
		//==========================================================================
		public var __DropShadowFilter0:flash.filters.DropShadowFilter;

		public var closeButton:org.flexlite.domUI.components.Button;

		public var confirmButton:org.flexlite.domUI.components.Button;

		public var contentGroup:org.flexlite.domUI.components.Group;

		public var labelDisplay:org.flexlite.domUI.components.Label;

		public var moveArea:org.flexlite.domUI.components.Group;

		public var titleDisplay:org.flexlite.domUI.components.Label;


		//==========================================================================
		//                                定义构造函数
		//==========================================================================
		public function MessageWindowSkin()
		{
			super();
			
			this.currentState = "normal";
			this.height = 218;
			this.width = 325;
			__DropShadowFilter0_i();
			this.elementsContent = [__MessageWindowSkin_UIAsset1_i(),__MessageWindowSkin_UIAsset2_i(),closeButton_i(),confirmButton_i(),contentGroup_i(),titleDisplay_i(),moveArea_i()];
			
			states = [
				new org.flexlite.domUI.states.State ({name: "normal",
					overrides: [
					]
				})
				,
				new org.flexlite.domUI.states.State ({name: "disabled",
					overrides: [
					]
				})
			];
		}


		//==========================================================================
		//                                定义成员方法
		//==========================================================================
		private function __DropShadowFilter0_i():flash.filters.DropShadowFilter
		{
			var temp:flash.filters.DropShadowFilter = new flash.filters.DropShadowFilter();
			__DropShadowFilter0 = temp;
			temp.alpha = 1.00;
			temp.angle = 0.00;
			temp.blurX = 4;
			temp.blurY = 4;
			temp.color = 0x000000;
			temp.distance = 0;
			temp.hideObject = false;
			temp.inner = false;
			temp.knockout = false;
			temp.quality = 1;
			temp.strength = 10;
			return temp;
		}

		private function __MessageWindowSkin_UIAsset1_i():org.flexlite.domUI.components.UIAsset
		{
			var temp:org.flexlite.domUI.components.UIAsset = new org.flexlite.domUI.components.UIAsset();
			temp.bottom = 0.5;
			temp.left = 0;
			temp.right = 0;
			temp.skinName = "DXR__BBE7AE29";
			temp.top = -0.5;
			return temp;
		}

		private function __MessageWindowSkin_UIAsset2_i():org.flexlite.domUI.components.UIAsset
		{
			var temp:org.flexlite.domUI.components.UIAsset = new org.flexlite.domUI.components.UIAsset();
			temp.bottom = 35;
			temp.left = 11;
			temp.right = 11;
			temp.skinName = "DXR__2E87D19D";
			temp.top = 36;
			return temp;
		}

		private function closeButton_i():org.flexlite.domUI.components.Button
		{
			var temp:org.flexlite.domUI.components.Button = new org.flexlite.domUI.components.Button();
			closeButton = temp;
			temp.height = 29;
			temp.label = "按钮";
			temp.right = 8;
			temp.skinName = org.flexlite.test.skin.CloseButtonSkin;
			temp.top = 2;
			temp.width = 30;
			temp.x = 265;
			return temp;
		}

		private function confirmButton_i():org.flexlite.domUI.components.Button
		{
			var temp:org.flexlite.domUI.components.Button = new org.flexlite.domUI.components.Button();
			confirmButton = temp;
			temp.height = 26;
			temp.horizontalCenter = 0;
			temp.label = "确定";
			temp.skinName = org.flexlite.test.skin.ButtonSkin;
			temp.width = 70;
			temp.y = 185;
			return temp;
		}

		private function contentGroup_i():org.flexlite.domUI.components.Group
		{
			var temp:org.flexlite.domUI.components.Group = new org.flexlite.domUI.components.Group();
			contentGroup = temp;
			temp.bottom = 42;
			temp.left = 16;
			temp.right = 16;
			temp.top = 41;
			temp.elementsContent = [labelDisplay_i()];
			return temp;
		}

		private function labelDisplay_i():org.flexlite.domUI.components.Label
		{
			var temp:org.flexlite.domUI.components.Label = new org.flexlite.domUI.components.Label();
			labelDisplay = temp;
			temp.bold = true;
			temp.bottom = 4;
			temp.filters = [__DropShadowFilter0];
			temp.left = 8;
			temp.maxWidth = 310;
			temp.right = 7;
			temp.size = 14;
			temp.text = "这是一个弹出的窗口面板";
			temp.textAlign = "center";
			temp.textColor = 0xFFFFFF;
			temp.top = 5;
			temp.verticalAlign = "middle";
			return temp;
		}

		private function moveArea_i():org.flexlite.domUI.components.Group
		{
			var temp:org.flexlite.domUI.components.Group = new org.flexlite.domUI.components.Group();
			moveArea = temp;
			temp.height = 34;
			temp.left = 2;
			temp.right = 42;
			temp.y = 0;
			return temp;
		}

		private function titleDisplay_i():org.flexlite.domUI.components.Label
		{
			var temp:org.flexlite.domUI.components.Label = new org.flexlite.domUI.components.Label();
			titleDisplay = temp;
			temp.bold = true;
			temp.filters = [__DropShadowFilter0];
			temp.horizontalCenter = -3.5;
			temp.size = 18;
			temp.text = "窗口标题";
			temp.textAlign = "center";
			temp.textColor = 0xFFFFFF;
			temp.width = 244;
			temp.y = 9;
			return temp;
		}

	}
}