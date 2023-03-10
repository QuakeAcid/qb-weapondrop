# qb-weapondrop

A simple weapon drop script.

Preview: https://streamable.com/pjld8t

Requirements
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-target](https://github.com/qbcore-framework/qb-target)

Add the image from "images" to your inventory images

Add these lines to your items.lua

```
['emptydropphone'] 			 = {['name'] = 'emptydropphone', 				['label'] = 'Empty Phone', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'dropphone.png', 		['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false,	   ['combinable'] = nil,   ['description'] = 'An old phone'},
	['dropphone'] 			 		 = {['name'] = 'dropphone', 							['label'] = 'Drop Phone', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'dropphone.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'An old phone with one contact in it'},
```

The Empty Phone item has to be added to a shop or whichever way you prefer.
