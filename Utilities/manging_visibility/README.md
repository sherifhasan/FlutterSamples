# manging_visibility

For Visible: we don’t do anything special.
For Invisible: we wrap the widget in an IgnorePointer widget and an Opacity widget with the value zero. This limits your ability to interact with the widget and hides it but will keep it in place. So, you will see empty space wherever the widget is inserted.
For Offscreen: we wrap the widget in an Offstage widget which will render the widget off screen so that it won’t be visible and it won’t take up any screen real estate. However, it is still being rendered so it won’t be zero cost. Beware.
For Gone: we provide a way for you to render a different widget (defaulting to a Container with no size). If you want to render a placeholder, an icon or something else, this is your place to do it. It still isn’t zero cost, but it shouldn’t be too awful for most cases. For true Gone, use the strategies described above.