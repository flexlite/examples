package org.flexlite.test.view
{
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.components.Label;
	import org.flexlite.domUI.components.TitleWindow;
	import org.flexlite.domUI.events.CloseEvent;
	import org.flexlite.domUI.managers.PopUpManager;
	import org.flexlite.domUI.utils.callLater;
	import org.flexlite.test.skin.MessageWindowSkin;
	
	
	/**
	 * 消息窗口(这只是一个示例，实际上消息窗口可以直接使用Alert组件更加方便。)
	 * @author dom
	 */
	public class MessageWindow extends TitleWindow
	{
		/**
		 * 构造函数
		 */		
		public function MessageWindow()
		{
			super();
			this.skinName = MessageWindowSkin;//赋值由FlexLite Studio生成的皮肤
			this.addEventListener(CloseEvent.CLOSE,onClose);
		}

		/**
		 * [SkinPart]确认按钮
		 */		
		public var confirmButton:Button;
		/**
		 * [SkinPart]消息内容显示文本
		 */		
		public var labelDisplay:Label;
		
		private var _message:String = "";
		/**
		 * 要显示的消息内容
		 */
		public function get message():String
		{
			return _message;
		}
		public function set message(value:String):void
		{
			if(_message==value)
				return;
			_message = value;
			if(labelDisplay)
				labelDisplay.text = _message;
		}

		/**
		 * @inheritDoc
		 */
		override protected function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName,instance);
			if(instance==confirmButton)
			{
				confirmButton.addEventListener(MouseEvent.CLICK,onConfirmButtonClick);
			}
			else if(instance==labelDisplay)
			{
				labelDisplay.text = _message;
			}
		}
		
		/**
		 * @private 如果组件只有一个皮肤，这个卸载方法也可以不复写。
		 */
		override protected function partRemoved(partName:String, instance:Object):void
		{
			super.partRemoved(partName,instance);
			if(instance==confirmButton)
			{
				confirmButton.removeEventListener(MouseEvent.CLICK,onConfirmButtonClick);
			}
		}
		
		/**
		 * 确认按钮被点击
		 */		
		private function onConfirmButtonClick(event:MouseEvent):void
		{
			PopUpManager.removePopUp(this);
		}
		
		/**
		 * 关闭按钮被点击
		 */		
		private function onClose(event:CloseEvent):void
		{
			PopUpManager.removePopUp(this);
		}
		
		
		/**
		 * @inheritDoc
		 */
		override protected function createChildren():void
		{
			super.createChildren();
			//由于使用了位图素材，而位图解码是异步的，会导致首次弹窗时，UI有可能不是同时呈现。
			//所以这里在面板首次初始化时，延迟5帧等待位图都解码完成后再统一显示,优化体验。
			//若使用的素材是来自SWF或其他非异步加载方式，则不需要这个步骤。
			this.visible = false;
			callLater(function():void{
				visible = true;
			},null,5);
		}
	}
}