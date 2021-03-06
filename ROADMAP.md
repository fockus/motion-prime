=== 1.1.0
* Model.fetch should always return status of main model fetch response
* grid item width should be calculated based on uicollectionview with.
* ability to change access token param name.
* bug: if mp label do not have text and was set as hidden, it should unhide after setting text.
* bug: size_to_fit works incorrect with relative width.
* bug: bind_keyboard_close breaks bind_guesture.
* bug: dealloc of Prime::Section will not be called for cell created in collection_data using #map.
* bug: images does not render after reload table if using draw_with_layer (prerender not enabled).
* bug: incorrect height (cropped) for draw label with lineSpacing in cases when there is just one line.
* use one style to set rounded corners for view/draw elements (remove :rounded_corners option)
* add :sides option to BaseElement border (like in draw)
* add dsl for push notifications.
* add some extensions/middleware system, at least for networking.
* create "display_network_error" extension.
* add different templates. some templates should be more like final app.
* add size_to_fit support for images.
* simplify border radius for common case

=== 1.2.0
* Move api_client and model sync mixin to prime_model_sync gem.
* Move models to prime_model gem.
* Move bind keyboard events to forms.

=== 1.3.0
* add cell preload for reverse scrolling table.
* add computed_options.get(), this will allow to make sure that options is computed.
* add testing framework.
* add DSL for ViewStyles#setValue conditions.
* add embed/regular has many types. embedded by default.
