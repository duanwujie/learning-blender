
# 用户接口
	
## 启动画面

	启动Blender时，启动画面会出现在窗口的中央。 它包含帮助链接和最近打开的Blender文件。 下面可以看到更详细的描述。

	![Blender启动画面](images/interface_splash_current.png)
## Window System
	
### 介绍
	


		启动Blender并关闭Splash Screen之后，Blender窗口应该与下面的图像类似。 Blender的用户界面在所有平台上都是一致的。


		![Blender默认窗口画面](images/interface_default_startup.png)


#### 接口元素(Interface Elements)

			Window -> Screen ->  Areas ->  Editors ->  Regions ->  (Tabs) ->  Panels ->  Controls

			窗口->屏幕->地域->编辑器->地带->标签->面板->Controls


			该界面可以自定义，以使用屏幕布局来匹配特定任务，然后可以将其命名并保存供以后使用。 默认屏幕如下所述。

			屏幕被组织成一个或多个区域，每个区域都包含一个编辑器。

#### 默认屏幕(The Default Screen)

			默认情况下Blender启动后显示默认屏幕，该屏幕分为五个地域，其中包含下列编辑器：

			* 顶端的消息编辑器(Info)
			* 一个大的3D视图.(3D View)
			* 在底部的一个时间轴。(Timeline)
			* 右上角的大纲视图。(Outliner)
			* 右下角的属性编辑器 (Properties)。

			![Info (1), 3D View (2), Outliner (3), Properties (4) , Timeline (5)](images/interface_introduction_default_screen.png)

#### 编辑器的组件(Components of an Editor)


			一般来说，编辑器提供了查看和修改Blender作品的特定部分的方法。 编辑分为区域(Regions)。 
			区域可以具有更小的构造元素，如标签和面板，其中包含按钮，控件和小部件。

			![The 3D View editor.](images/interface_introduction_editor.png)


#### 用户接口原则(User Interface Principles)

			不重叠

				* UI旨在使您能够一目了然地查看所有相关选项和工具，而不必推动或拖动编辑器。

			非阻塞

				* 工具和界面选项不会阻塞Blender的任何其他部分。Blender通常不使用弹出框（要求用户在运行操作之前填写数据）。

			Non Modal Tools

				* 可以有效地访问工具，而不用花时间在不同的工具之间选择。许多工具使用一致和可预测的鼠标和键盘操作进行交互。


#### 定制

			Blender也大量使用键盘快捷键来加快工作。 这些也可以在键盘映射编辑器中进行自定义。

#### 主题颜色 

			Blender允许更改大部分界面颜色设置以适应用户的需要。 
			如果您发现屏幕上显示的颜色与“手册”中提到的颜色不符，
			那么可能是您的默认主题已被更改。 创建新主题或选择/更改预先存在的主题
			通过选择 文件->用户首选项->并单击主题选项卡来完成。

			`File->User Preference->Theme`
		
	
### 屏幕(Screens)
	

		屏幕基本上是预定义的窗口布局。
		Blender与地域(Areas)的灵活性使您可以为不同的任务创建自定义的工作环境，如建模，
		动画和脚本。 快速切换同一文件中的不同环境通常很有用。
		有关如何移动框架边框，拆分和合并地域(Areas)，请参阅地域(Areas)控件。

		The Screen data-block menu, that lets you select the layouts, is located in the Info Editors header.

		![The Screen data-block menu with pop-up.](images/interface_screen_data-block.png)
		
		
#### 控制

			* 屏幕布局

				可用的屏幕布局列表. 请看 [默认屏幕](#default_screens)

			* Add +

				单击添加按钮，将根据您当前的布局创建一个新的布局。

			* Delete X

				您可以使用删除按钮删除所选屏幕。
			
#### 快捷键

			屏幕之间切换使用Ctrl-Right和Ctrl-Left。
		
#### 默认屏幕

			<span id="default_screens"></span>
			* 3D View Full:	A full screen 3D View, used to preview your scene.
			* Animation:	Making actors and other objects move about, change shape or color, etc.
			* Compositing:	Combining different parts of a scene (e.g. background, actors, special effects) and filter them (e.g. color correction).
			* Default:	The default layout used by Blender for new files. Useful for modeling new objects.
			* Game Logic:	Planning and programming of games within Blender.
			* Motion Tracking:
				Used for motion tracking with the movie clip editor.
			* Scripting:	Documenting your work and/or writing custom scripts to automate Blender.
			* UV Editing:	Flattening a projection of an object mesh in 2D to control how a texture maps to the surface.
			* 视频编辑:	切割和编辑动画序列。
#### Save and Override
			The screen layouts are saved in the blend-file. When you open a file, 
			enabling the Load UI in the file browser indicates that Blender should use the file’s screen layouts and overriding the current layout. See Load UI.

			A custom set of screen layouts can be saved as a part of the Startup File.

#### 附加布局
			您对Blender有更多经验时，请考虑添加一些其他屏幕布局，以适应您的工作流程，因为这将有助于提高您的生产力。 一些例子可能包括：

			* Modeling:	四个3D视图（顶，前，侧和透视），属性编辑器。
			* Lighting:	3D Views for moving lights, UV/Image editor for displaying Render Result, Properties editor for rendering and lamp properties and controls.
			* Materials: Properties editor for Material settings, 3D View for selecting objects, Outliner, Library script (if used), Node Editor (if using Node based materials).
			* Painting:	UV/Image Editor for texture painting image, 3D View for painting directly on object in UV Face Select mode, three mini-3D Views down the side that have background reference pictures set to full strength, Properties editor.

### Areas

		The application window is always a rectangle on your desktop. 
		It is divided up into a number of re-sizable areas. 
		An area contains the workspace for a particular type of editor, like a 3D View Editor, or an Outliner.

#### Arranging

			Blender uses a novel screen-splitting approach to arrange areas. 
			The idea is that you split up that big application window into any number of smaller (but still rectangular) non-overlapping areas. That way, 
			each area is always fully visible, and it is very easy to work in one area and hop over to work in another.
			
#### Changing the Size

			You can resize areas by dragging their borders with LMB. 
			Simply move your mouse cursor over the border between two areas, 
			until it changes to a double-headed arrow, and then click and drag

#### Splitting and Joining

			Area Split Widget


			![Area Split Widget](images/interface-window_system-arranging_areas-split_widget.jpg)


			一个区域的右上角和左下角是区域分割的小部件，它们看起来像一个有点脊椎拇指的握柄。
			 它用于分开和组合区域(Areas)。 当您将鼠标悬停在其上时，将变为十字光标。

			按住鼠标左键(LMB)并将其向内拖动拆分该区域(Areas)。 您可以通过水平或垂直拖动来定义该边框的方向。

			In order to join two areas LMB(鼠标左键) click and drag the area splitter outward. They must be the same dimension (width or height) 
			in the direction you wish to join. This is so that the combined area space results in a rectangle.
			
			![The Properties Editor is being merged “over” the Outliner.](images/interface-window_system-arranging_areas-join_areas.png)
			
			The area that will be closed gets a dark overlaid with an arrow. Now you can select the area to be closed by moving the mouse over it.

			Release the LMB to complete the join. If you press Esc or RMB before releasing the mouse, the operation will be aborted.
			
#### Area Options

			RMB on the border opens the Area Options.

			* Split Area
					Shows an indicator line that lets you select the area and position where to split. Tab switches between vertical/horizontal.
			* Join Areas
					Shows the join direction overlay.Confirm or cancel works as described above.

#### Swapping Contents
			You can swap the contents between two areas with Ctrl-LMB on one of the splitters of the initial area, dragging towards the target area, and releasing the mouse there. 
			The two areas do not need to be side by side, though they must be inside the same window.

#### Duplicate Area into new Window
		
			`
			Reference

				Menu: View->Duplicate Area into new Window
			`
				
			The new window is a fully functional window, which is part of the same instance of Blender. This can be useful, e.g. if you have multiple monitors.

			A new window can be created from View ‣ Duplicate Area into new Window.

			You can also create a new window from an existing area by Shift-LMB on the area splitter widget, then drag slightly.

			The window can be closed with the OS Close Window button.

#### Toggle Maximize Area
			`
			Reference

			Menu: View ‣ Toggle Maximize Area
			Hotkey: Ctrl-Up, Shift-Spacebar
			`
			The maximized area fill the whole application window. It contains the Info Editor and the select area.

			You can maximize an area with the View ‣ Toggle Maximize Area menu entry. To return to normal size use again menu entry, 
			or RMB on the editors header and select Maximize Area and Tiled Area to return. In the Info Editor header the Back to Previous button on 
			the right of the menus also returns to tiled areas.

			A quicker way to achieve this is to use the shortcuts: Shift-Spacebar, Ctrl-Down or Ctrl-Up to toggle between maximized and normal areas.

			`
			Note

			The area your mouse is currently hovering over is the one that will be maximized using the keyboard shortcuts.
			`
			
#### Toggle Fullscreen Area
			`
			Reference
			
			Menu: View ‣ Toggle Fullscreen Area
			Hotkey: Alt-F10
			`
			The fullscreen area contains only the main region. 
			The headers visibility can still be toggled with the shortcut. 
			To exit the fullscreen move the mouse to the top right corner of the area to reveal the return icon or use the shortcut Alt-F10.
			
			
### Regions
### Tabs & Panels
## Interface Controls
## Buttons and Controls
### Buttons
### Menus
### Toggle & Radio Buttons
### Number Buttons
### Eyedropper
## Extended Controls
### Data-Block Menu
### List Views & Presets
### Color Picker
### Color Ramp Widget
### Curve Widget
### Operator Search
### Common Shortcuts
## Tools
### Undo and Redo
### Ruler and Protractor
### Grease Pencil