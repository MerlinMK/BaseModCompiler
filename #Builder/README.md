## Data to organise here
All data user inputs : added content selection, names, etc.
All required user created files : images for textures, models_X, sounds, tilesheets, .tiles,...


## Scripts to write here :
I'd love a simple UI to facilitate user inputs with boxes for used modules that reacts to dependencies,
but I know 0 in UI.
OF course, the main script : it simply take all data from Builder directory, and for each feature, it:  
- create a copy of the needed templates (lets say, NewItem.txt in CustomItem/media/scripts)  
- replace special characters in NewItem.txt by datas inputed  
- parse that in the final NewItemList.txt (of Output/MyModName/media/scripts/NewItemList.txt)  
- (or whatever behavior we need it to have)  
Will take time, don't even know what language to use even if lua seems... welcome
  (I know more python and it looks simpler for UI).

