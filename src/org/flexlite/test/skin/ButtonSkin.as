package org.flexlite.test.skin
{
	import flash.filters.DropShadowFilter;
	import org.flexlite.domUI.components.Label;
	import org.flexlite.domUI.components.StateSkin;
	import org.flexlite.domUI.components.UIAsset;
	import org.flexlite.domUI.states.AddItems;
	import org.flexlite.domUI.states.State;

	/**
	 * @private
	 * 此类由编译器自动生成，您应修改对应的DXML文件内容，然后重新编译，而不应直接修改其代码。
	 * @author DXMLCompiler
	 */
	public class ButtonSkin extends org.flexlite.domUI.components.StateSkin
	{
		//==========================================================================
		//                                定义成员变量
		//==========================================================================
		public var __ButtonSkin_UIAsset1:org.flexlite.domUI.components.UIAsset;

		public var __ButtonSkin_UIAsset2:org.flexlite.domUI.components.UIAsset;

		public var __ButtonSkin_UIAsset3:org.flexlite.domUI.components.UIAsset;

		public var __ButtonSkin_UIAsset4:org.flexlite.domUI.components.UIAsset;

		public var __DropShadowFilter0:flash.filters.DropShadowFilter;

		public var labelDisplay:org.flexlite.domUI.components.Label;


		//==========================================================================
		//                                定义构造函数
		//==========================================================================
		public function ButtonSkin()
		{
			super();
			
			this.currentState = "up";
			__DropShadowFilter0_i();
			this.elementsContent = [labelDisplay_i()];
			__ButtonSkin_UIAsset1_i();
			__ButtonSkin_UIAsset2_i();
			__ButtonSkin_UIAsset3_i();
			__ButtonSkin_UIAsset4_i();
			
			
			states = [
				new org.flexlite.domUI.states.State ({name: "up",
					overrides: [
						new org.flexlite.domUI.states.AddItems().initializeFromObject({
							target:"__ButtonSkin_UIAsset2",
							propertyName:"",
							position:"before",
							relativeTo:"labelDisplay"
						})
					]
				})
				,
				new org.flexlite.domUI.states.State ({name: "over",
					overrides: [
						new org.flexlite.domUI.states.AddItems().initializeFromObject({
							target:"__ButtonSkin_UIAsset4",
							propertyName:"",
							position:"before",
							relativeTo:"labelDisplay"
						})
					]
				})
				,
				new org.flexlite.domUI.states.State ({name: "down",
					overrides: [
						new org.flexlite.domUI.states.AddItems().initializeFromObject({
							target:"__ButtonSkin_UIAsset3",
							propertyName:"",
							position:"before",
							relativeTo:"labelDisplay"
						})
					]
				})
				,
				new org.flexlite.domUI.states.State ({name: "disabled",
					overrides: [
						new org.flexlite.domUI.states.AddItems().initializeFromObject({
							target:"__ButtonSkin_UIAsset1",
							propertyName:"",
							position:"before",
							relativeTo:"labelDisplay"
						})
					]
				})
			];
		}


		//==========================================================================
		//                                定义成员方法
		//==========================================================================
		private function __ButtonSkin_UIAsset1_i():org.flexlite.domUI.components.UIAsset
		{
			var temp:org.flexlite.domUI.components.UIAsset = new org.flexlite.domUI.components.UIAsset();
			__ButtonSkin_UIAsset1 = temp;
			temp.bottom = 0;
			temp.left = 0;
			temp.right = 0;
			temp.skinName = "DXR__1C5D2D62";
			temp.top = 0;
			temp.x = 0;
			temp.y = 0;
			return temp;
		}

		private function __ButtonSkin_UIAsset2_i():org.flexlite.domUI.components.UIAsset
		{
			var temp:org.flexlite.domUI.components.UIAsset = new org.flexlite.domUI.components.UIAsset();
			__ButtonSkin_UIAsset2 = temp;
			temp.bottom = 0;
			temp.left = 0;
			temp.right = 0;
			temp.skinName = "DXR__276F2CB5";
			temp.top = 0;
			return temp;
		}

		private function __ButtonSkin_UIAsset3_i():org.flexlite.domUI.components.UIAsset
		{
			var temp:org.flexlite.domUI.components.UIAsset = new org.flexlite.domUI.components.UIAsset();
			__ButtonSkin_UIAsset3 = temp;
			temp.bottom = 0;
			temp.left = 0;
			temp.right = 0;
			temp.skinName = "DXR__7905FD81";
			temp.top = 0;
			return temp;
		}

		private function __ButtonSkin_UIAsset4_i():org.flexlite.domUI.components.UIAsset
		{
			var temp:org.flexlite.domUI.components.UIAsset = new org.flexlite.domUI.components.UIAsset();
			__ButtonSkin_UIAsset4 = temp;
			temp.bottom = 0;
			temp.left = 0;
			temp.right = 0;
			temp.skinName = "DXR__F2888F03";
			temp.top = 0;
			return temp;
		}

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

		private function labelDisplay_i():org.flexlite.domUI.components.Label
		{
			var temp:org.flexlite.domUI.components.Label = new org.flexlite.domUI.components.Label();
			labelDisplay = temp;
			temp.bold = false;
			temp.filters = [__DropShadowFilter0];
			temp.fontFamily = "FZShaoEr-M11S";
			temp.horizontalCenter = 0;
			temp.paddingBottom = 4;
			temp.paddingLeft = 10;
			temp.paddingRight = 10;
			temp.paddingTop = 4;
			temp.size = 14;
			temp.text = "按钮";
			temp.textAlign = "center";
			temp.textColor = 0xFFFFCD;
			temp.verticalCenter = 0;
			return temp;
		}

	}
}