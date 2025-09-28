#region JsDocs
/// @func    fs_grid_create()
/// @desc    With this function you can create a new DS grid data structure of the specified cell width and height. This function returns an id which must be used in all further functions that deal with this DS grid.
/// @param   {Real} w : The width of the grid to be created.
/// @param   {Real} h : The height of the grid to be created.
/// @return  {Id.DsGrid}
#endregion
function fs_grid_create(_w,_h) {
	return FS_Destructor(ds_grid_create(_w,_h), ds_grid_destroy);
}
#region JsDocs
/// @func    fs_grid_destroy()
/// @desc    This function will remove the given grid data-structure from memory, freeing up the resources it was using and removing all values that it contained. This function should always be used when you are finished using the DS grid to prevent memory leaks that can slow down and crash your game.
/// @param   {Id.DsGrid} index : This index of the grid to destroy.
/// @return  {Undefined}
#endregion
function fs_grid_destroy(_index) {
	_index = _index.value;
	return ds_grid_destroy(_index)
}
#region JsDocs
/// @func    fs_grid_copy()
/// @desc    With this function you can copy the contents of one grid into another one. Both grids must have been created previously using the ds_grid_create() function.
/// @param   {Id.DsGrid} destination : This index of the grid to copy to.
/// @param   {Id.DsGrid} source : This index of the grid to copy from.
/// @return  {Undefined}
#endregion
function fs_grid_copy(_destination, _source) {
	_destination = _destination.value;
	_source = _source.value;
	return ds_grid_copy(_destination, _source)
}
#region JsDocs
/// @func    fs_grid_resize()
/// @desc    With this function you can resize the given DS grid to have a different width and/or height. If the grid size is larger than the current grid, the new cells will have a base value of 0, and if the size is smaller then the values held in the cells that are no longer within the new size will be lost. All other cells will be left untouched.
/// @param   {Id.DsGrid} index : This index of the grid to resize.
/// @param   {Real} w : The new width of the grid.
/// @param   {Real} h : The new height of the grid.
/// @return  {Undefined}
#endregion
function fs_grid_resize(_index, _w, _h) {
	_index = _index.value;
	return ds_grid_resize(_index, _w, _h)
}
#region JsDocs
/// @func    fs_grid_width()
/// @desc    This function will return the width of the given grid. This value is the number of cells the grid has along the x-axis and is always an integer, as shown in the image below:
/// @param   {Id.DsGrid} index : This index of the grid to find the width of.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_grid_width(_index) {
	_index = _index.value;
	return ds_grid_width(_index)
}
#region JsDocs
/// @func    fs_grid_height()
/// @desc    This function will return the height of the given grid. This value is the number of cells the grid has along the y-axis and is always an integer, as shown in the image below:
/// @param   {Id.DsGrid} index : This index of the grid to find the height of.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_grid_height(_index) {
	_index = _index.value;
	return ds_grid_height(_index)
}
#region JsDocs
/// @func    fs_grid_clear()
/// @desc    This function can be used to clear a given DS grid to a specific value. All cells within the grid will then contain this value, which can be a real number or a string. The image below illustrates how this works:
/// @param   {Id.DsGrid} index : This index of the grid to clear.
/// @param   {ArgumentIdentity} val : The new value for all grid cells.
/// @return  {Undefined}
#endregion
function fs_grid_clear(_index, _val) {
	_index = _index.value;
	return ds_grid_clear(_index, _val)
}
#region JsDocs
/// @func    fs_grid_set()
/// @desc    This function can be used to set a given cell within the given DS grid to any value, which can be a real number or a string. The image below illustrates this:
/// @param   {Id.DsGrid} index : This index of the grid.
/// @param   {Real} x : The x position of the cell to set.
/// @param   {Real} y : The y position of the cell to set.
/// @param   {ArgumentIdentity} value : The value with which to set the cell.
/// @return  {Undefined}
#endregion
function fs_grid_set(_index, _x, _y, _value) {
	_index = _index.value;
	return ds_grid_set(_index, _x, _y, _value)
}
#region JsDocs
/// @func    fs_grid_add()
/// @desc    This function can be used to add a given value (real or string) to the value of the given cell within the grid. The value to be added must be the same type as that held within the grid cell, ie: you cannot add a string to a real or vice-versa, and for strings this corresponds to concatenation.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x : The x position of the cell in the grid.
/// @param   {Real} y : The y position of the cell in the grid.
/// @param   {ArgumentIdentity} val : The value to add to the cell.
/// @return  {Undefined}
#endregion
function fs_grid_add(_index, _x, _y, _val) {
	_index = _index.value;
	return ds_grid_add(_index, _x, _y, _val)
}
#region JsDocs
/// @func    fs_grid_multiply()
/// @desc    This function will multiply the value of a the given grid cell by the specified amount.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x : The x position of the cell in the grid.
/// @param   {Real} y : The y position of the cell in the grid.
/// @param   {Any} val : The value to multiply with the cell.
/// @return  {Undefined}
#endregion
function fs_grid_multiply(_index, _x, _y, _val) {
	_index = _index.value;
	return ds_grid_multiply(_index, _x, _y, _val)
}
#region JsDocs
/// @func    fs_grid_set_region()
/// @desc    This function can be used to set a rectangular region of a given grid to a specified value (which can be either a real or a string) as illustrated by the image shown below:
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x1 : The x position of the left of the region in the grid.
/// @param   {Real} y1 : The y position of the top of the region in the grid.
/// @param   {Real} x2 : The x position of the right of the region in the grid.
/// @param   {Real} y2 : The y position of the bottom of the region in the grid.
/// @param   {ArgumentIdentity} val : The value to set the region cells to.
/// @return  {Undefined}
#endregion
function fs_grid_set_region(_index, _x1, _y1, _x2, _y2, _val) {
	_index = _index.value;
	return ds_grid_set_region(_index, _x1, _y1, _x2, _y2, _val)
}
#region JsDocs
/// @func    fs_grid_add_region()
/// @desc    This function can be used to add a given value (real or string) to all the values of the cells found within the defined area of a grid. The value to be added must be of the same type as that held within the grid cells, ie: you cannot add a string to a real or vice-versa, and for strings this corresponds to concatenation.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x1 : The x position of the left of the region in the grid.
/// @param   {Real} y1 : The y position of the top of the region in the grid.
/// @param   {Real} x2 : The x position of the right of the region in the grid.
/// @param   {Real} y2 : The y position of the bottom of the region in the grid.
/// @param   {ArgumentIdentity} val : The value to add to the region cells.
/// @return  {Undefined}
#endregion
function fs_grid_add_region(_index, _x1, _y1, _x2, _y2, _val) {
	_index = _index.value;
	return ds_grid_add_region(_index, _x1, _y1, _x2, _y2, _val)
}
#region JsDocs
/// @func    fs_grid_multiply_region()
/// @desc    With this function you can specify a region of the grid in which to multiply each cell value by a given amount.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x1 : The x position of the left of the region in the grid.
/// @param   {Real} y1 : The y position of the top of the region in the grid.
/// @param   {Real} x2 : The x position of the right of the region in the grid.
/// @param   {Real} y2 : The y position of the bottom of the region in the grid.
/// @param   {Any} val : The value to multiply with the region cells.
/// @return  {Undefined}
#endregion
function fs_grid_multiply_region(_index, _x1, _y1, _x2, _y2, _val) {
	_index = _index.value;
	return ds_grid_multiply_region(_index, _x1, _y1, _x2, _y2, _val)
}
#region JsDocs
/// @func    fs_grid_set_disk()
/// @desc    With this function you can set a circular region of a grid to a certain value. You need to supply a starting grid cell (as an x and y axis coordinate) as well as the radius of the disk to set and the value that you wish to set the disk too, as shown by the illustration below:
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} xm : The x position of the disk on the grid.
/// @param   {Real} ym : The y position of the disk on the grid.
/// @param   {Real} r : The radius of the disk on the grid.
/// @param   {ArgumentIdentity} val : The value to set with the cells within the disk.
/// @return  {Undefined}
#endregion
function fs_grid_set_disk(_index, _xm, _ym, _r, _val) {
	_index = _index.value;
	return ds_grid_set_disk(_index, _xm, _ym, _r, _val)
}
#region JsDocs
/// @func    fs_grid_add_disk()
/// @desc    This function can be used to add a given value (real or string) to all the values of the cells found within the defined disk area of a grid. The value to be added must be of the same type as that held within the grid cells, ie: you cannot add a string to a real or vice-versa, and for strings this corresponds to concatenation.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} xm : The x position of the disk on the grid.
/// @param   {Real} ym : The y position of the disk on the grid.
/// @param   {Real} r : The radius of the disk on the grid.
/// @param   {ArgumentIdentity} val : The value to add to the cells within the disk.
/// @return  {Undefined}
#endregion
function fs_grid_add_disk(_index, _xm, _ym, _r, _val) {
	_index = _index.value;
	return ds_grid_add_disk(_index, _xm, _ym, _r, _val)
}
#region JsDocs
/// @func    fs_grid_multiply_disk()
/// @desc    This function will take all the values in a given disc-shaped region of the DS grid, and multiply each one by the given amount.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} xm : The x position of the disk on the grid.
/// @param   {Real} ym : The y position of the disk on the grid.
/// @param   {Real} r : The radius of the disk on the grid.
/// @param   {Any} val : The value to multiply the cells within the disk with.
/// @return  {Undefined}
#endregion
function fs_grid_multiply_disk(_index, _xm, _ym, _r, _val) {
	_index = _index.value;
	return ds_grid_multiply_disk(_index, _xm, _ym, _r, _val)
}
#region JsDocs
/// @func    fs_grid_set_grid_region()
/// @desc    This function can be used to copy the contents of a rectangular area of grid cells from one (previously defined) DS grid to another, or it can be used to copy a region from within the same grid. The following images illustrate both ways that this function can be used:
/// @param   {Id.DsGrid} index : The index of the destination grid.
/// @param   {Id.DsGrid} source : The index of the source grid.
/// @param   {Real} x1 : The left position of the region of cells to copy from the source grid.
/// @param   {Real} y1 : The top position of the region of cells to copy from the source grid.
/// @param   {Real} x2 : The right position of the region of cells to copy from the source grid.
/// @param   {Real} y2 : The bottom position of the region of cells to copy from the source grid.
/// @param   {Real} xpos : The x position on the destination grid to copy the source region to.
/// @param   {Real} ypos : The y position on the destination grid to copy the source region to.
/// @return  {Undefined}
#endregion
function fs_grid_set_grid_region(_index, _source, _x1, _y1, _x2, _y2, _xpos, _ypos) {
	_index = _index.value;
	_source = _source.value;
	return ds_grid_set_grid_region(_index, _source, _x1, _y1, _x2, _y2, _xpos, _ypos)
}
#region JsDocs
/// @func    fs_grid_add_grid_region()
/// @desc    This function can be used to add all the values of all the cells found within the source area of a grid to the values within the destination grid, as illustrated below:
/// @param   {Id.DsGrid} index : The index of the destination grid.
/// @param   {Id.DsGrid} source : The index of the source grid.
/// @param   {Real} x1 : The left position of the region of cells to copy from the source grid.
/// @param   {Real} y1 : The top position of the region of cells to copy from the source grid.
/// @param   {Real} x2 : The right position of the region of cells to copy from the source grid.
/// @param   {Real} y2 : The bottom position of the region of cells to copy from the source grid.
/// @param   {Real} xpos : The x position on the destination grid to add the source region to.
/// @param   {Real} ypos : The y position on the destination grid to add the source region to.
/// @return  {Undefined}
#endregion
function fs_grid_add_grid_region(_index, _source, _x1, _y1, _x2, _y2, _xpos, _ypos) {
	_index = _index.value;
	_source = _source.value;
	return ds_grid_add_grid_region(_index, _source, _x1, _y1, _x2, _y2, _xpos, _ypos)
}
#region JsDocs
/// @func    fs_grid_multiply_grid_region()
/// @desc    With this function you can define an area within a given DS grid, then take those values and multiply them with those found in a separate region of either the same DS grid, or another one (which has been previously created). The original region will remain unchanged, while the region that they have been multiplied with will now store the new values for each cell.
/// @param   {Id.DsGrid} index : The index of the destination grid.
/// @param   {Id.DsGrid} source : The index of the source grid.
/// @param   {Real} x1 : The left position of the region of cells to copy from the source grid.
/// @param   {Real} y1 : The top position of the region of cells to copy from the source grid.
/// @param   {Real} x2 : The right position of the region of cells to copy from the source grid.
/// @param   {Real} y2 : The bottom position of the region of cells to copy from the source grid.
/// @param   {Real} xpos : The x position on the destination grid to multiply the source region with.
/// @param   {Real} ypos : The y position on the destination grid to multiply the source region with.
/// @return  {Undefined}
#endregion
function fs_grid_multiply_grid_region(_index, _source, _x1, _y1, _x2, _y2, _xpos, _ypos) {
	_index = _index.value;
	_source = _source.value;
	return ds_grid_multiply_grid_region(_index, _source, _x1, _y1, _x2, _y2, _xpos, _ypos)
}
#region JsDocs
/// @func    fs_grid_get()
/// @desc    This function can be used to get the value (either a real number or a string) from any cell within the given DS grid. If you pass invalid grid coordinates to the function, then the value returned will be undefined and an error will be shown in the output window.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x : The x position of the cell you want to find the value of.
/// @param   {Real} y : The y position of the cell you want to find the value of.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_grid_get(_index, _x, _y) {
	_index = _index.value;
	return ds_grid_get(_index, _x, _y)
}
#region JsDocs
/// @func    fs_grid_get_sum()
/// @desc    This function can be used to add all the values all the cells found within the defined region of a grid together, as shown in the image below:
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x1 : The left cell column of the region.
/// @param   {Real} y1 : The top cell row of the region.
/// @param   {Real} x2 : The right cell column of the region.
/// @param   {Real} y2 : The bottom cell row of the region.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_grid_get_sum(_index, _x1, _y1, _x2, _y2) {
	_index = _index.value;
	return ds_grid_get_sum(_index, _x1, _y1, _x2, _y2)
}
#region JsDocs
/// @func    fs_grid_get_max()
/// @desc    This function can be used to find the maximum value for all the cells found within the defined region of a grid, as shown in the image below:
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x1 : The left cell column of the region.
/// @param   {Real} y1 : The top cell row of the region.
/// @param   {Real} x2 : The right cell column of the region.
/// @param   {Real} y2 : The bottom cell row of the region.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_grid_get_max(_index, _x1, _y1, _x2, _y2) {
	_index = _index.value;
	return ds_grid_get_max(_index, _x1, _y1, _x2, _y2)
}
#region JsDocs
/// @func    fs_grid_get_min()
/// @desc    This function can be used to find the minimum value for all the cells found within the defined region of a grid, as shown in the image below:
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x1 : The left cell column of the region.
/// @param   {Real} y1 : The top cell row of the region.
/// @param   {Real} x2 : The right cell column of the region.
/// @param   {Real} y2 : The bottom cell row of the region.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_grid_get_min(_index, _x1, _y1, _x2, _y2) {
	_index = _index.value;
	return ds_grid_get_min(_index, _x1, _y1, _x2, _y2)
}
#region JsDocs
/// @func    fs_grid_get_mean()
/// @desc    This function can be used to find the mean value for all the cells found within the defined region of a grid (all cell values are added together and then divided by the total number of cells that make the region), as shown in the image below:
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x1 : The left cell column of the region.
/// @param   {Real} y1 : The top cell row of the region.
/// @param   {Real} x2 : The right cell column of the region.
/// @param   {Real} y2 : The bottom cell row of the region.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_grid_get_mean(_index, _x1, _y1, _x2, _y2) {
	_index = _index.value;
	return ds_grid_get_mean(_index, _x1, _y1, _x2, _y2)
}
#region JsDocs
/// @func    fs_grid_get_disk_sum()
/// @desc    This function can be used to add all the values all the cells found within the defined disk area of a grid together, as shown in the image below:
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} xm : The x position of the disk on the grid.
/// @param   {Real} ym : The y position of the disk on the grid.
/// @param   {Real} r : The radius of the disk on the grid.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_grid_get_disk_sum(_index, _xm, _ym, _r) {
	_index = _index.value;
	return ds_grid_get_disk_sum(_index, _xm, _ym, _r)
}
#region JsDocs
/// @func    fs_grid_get_disk_max()
/// @desc    This function can be used to find the maximum value for all the cells found within the defined disk area of a grid, as shown in the image below:
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} xm : The x position of the disk center in the grid.
/// @param   {Real} ym : The y position of the disk center in the grid.
/// @param   {Real} r : The radius of the disk in the grid.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_grid_get_disk_max(_index, _xm, _ym, _r) {
	_index = _index.value;
	return ds_grid_get_disk_max(_index, _xm, _ym, _r)
}
#region JsDocs
/// @func    fs_grid_get_disk_min()
/// @desc    This function can be used to find the minimum value for all the cells found within the defined disk area of a grid, as shown in the image below:
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} xm : The x position of the disk on the grid.
/// @param   {Real} ym : The y position of the disk on the grid.
/// @param   {Real} r : The radius of the disk on the grid.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_grid_get_disk_min(_index, _xm, _ym, _r) {
	_index = _index.value;
	return ds_grid_get_disk_min(_index, _xm, _ym, _r)
}
#region JsDocs
/// @func    fs_grid_get_disk_mean()
/// @desc    This function can be used to find the mean value for all the cells found within the defined disk area of a grid (all cell values are added together and then divided by the total number of cells that make up the disk), as shown in the image below:
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} xm : The x position of the disk on the grid.
/// @param   {Real} ym : The y position of the disk on the grid.
/// @param   {Real} r : The radius of the disk on the grid.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_grid_get_disk_mean(_index, _xm, _ym, _r) {
	_index = _index.value;
	return ds_grid_get_disk_mean(_index, _xm, _ym, _r)
}
#region JsDocs
/// @func    fs_grid_value_exists()
/// @desc    With this function you can check to see if a specific value (real or string) is present within a rectangular area of a given DS grid. If it is present the function will return true otherwise it will return false.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x1 : The x position of the left of the region in the grid.
/// @param   {Real} y1 : The y position of the top of the region in the grid.
/// @param   {Real} x2 : The x position of the right of the region in the grid.
/// @param   {Real} y2 : The y position of the bottom of the region in the grid.
/// @param   {Any} val : The value to find.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_grid_value_exists(_index, _x1, _y1, _x2, _y2, _val) {
	_index = _index.value;
	return ds_grid_value_exists(_index, _x1, _y1, _x2, _y2, _val)
}
#region JsDocs
/// @func    fs_grid_value_x()
/// @desc    With this function you can get the x coordinate (within the given rectangular grid region) of the value being searched for. You give the DS grid index (as returned by ds_grid_create()) along with the x/y positions for the top left and bottom right corners of the grid region to search, before supplying the value to search for. If the value being searched for does not exist, then the function will return -1.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x1 : The x position of the left of the region in the grid, from 0 to (grid width - 1).
/// @param   {Real} y1 : The y position of the top of the region in the grid, from 0 to (grid height - 1).
/// @param   {Real} x2 : The x position of the right of the region in the grid, from 0 to (grid width - 1).
/// @param   {Real} y2 : The y position of the bottom of the region in the grid, from 0 to (grid height - 1).
/// @param   {Any} val : The value to find.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_grid_value_x(_index, _x1, _y1, _x2, _y2, _val) {
	_index = _index.value;
	return ds_grid_value_x(_index, _x1, _y1, _x2, _y2, _val)
}
#region JsDocs
/// @func    fs_grid_value_y()
/// @desc    With this function you can get the y coordinate (within the given rectangular grid region) of the value being searched for. You give the DS grid index (as returned by ds_grid_create()) along with the x/y positions for the top left and bottom right corners of the grid region to search, before supplying the value to search for. If the value being searched for does not exist, then the function will return -1.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} x1 : The x position of the left of the region in the grid, from 0 to (grid width - 1).
/// @param   {Real} y1 : The y position of the top of the region in the grid, from 0 to (grid height - 1).
/// @param   {Real} x2 : The x position of the right of the region in the grid, from 0 to (grid width - 1).
/// @param   {Real} y2 : The y position of the bottom of the region in the grid, from 0 to (grid height - 1)
/// @param   {Any} val : The value to find.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_grid_value_y(_index, _x1, _y1, _x2, _y2, _val) {
	_index = _index.value;
	return ds_grid_value_y(_index, _x1, _y1, _x2, _y2, _val)
}
#region JsDocs
/// @func    fs_grid_value_disk_exists()
/// @desc    With this function you can check to see if a specific value (real or string) is present within a circular area of a given DS grid. If it is present the function will return true otherwise it will return false.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} xm : The x position of the disk on the grid.
/// @param   {Real} ym : The y position of the disk on the grid.
/// @param   {Real} r : The radius of the disk on the grid.
/// @param   {Any} val : The value to find.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_grid_value_disk_exists(_index, _xm, _ym, _r, _val) {
	_index = _index.value;
	return ds_grid_value_disk_exists(_index, _xm, _ym, _r, _val)
}
#region JsDocs
/// @func    fs_grid_value_disk_x()
/// @desc    With this function you can get the x coordinate (within the given grid disc-shaped region) of the value being searched for. You give the DS grid index (as returned by ds_grid_create()) along with the x/y positions for the center cell of the disk. Then you give the radius (as an integer value) around the center cell to search, before supplying the value to search for. If the value being searched for does not exist, then the function will return -1.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} xm : The x position of the disk on the grid.
/// @param   {Real} ym : The y position of the disk on the grid.
/// @param   {Real} r : The radius of the disk on the grid.
/// @param   {Any} val : The value to find.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_grid_value_disk_x(_index, _xm, _ym, _r, _val) {
	_index = _index.value;
	return ds_grid_value_disk_x(_index, _xm, _ym, _r, _val)
}
#region JsDocs
/// @func    fs_grid_value_disk_y()
/// @desc    With this function you can get the y coordinate (within the given grid disc-shaped region) of the value being searched for. You give the DS grid index (as returned by ds_grid_create()) along with the x/y positions for the center cell of the disk. Then you give the radius (as an integer value) around the center cell to search, before supplying the value to search for. If the value being searched for does not exist, then the function will return -1.
/// @param   {Id.DsGrid} index : The index of the grid.
/// @param   {Real} xm : The x position of the disk on the grid.
/// @param   {Real} ym : The y position of the disk on the grid.
/// @param   {Real} r : The radius of the disk on the grid.
/// @param   {Any} val : The value to find.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_grid_value_disk_y(_index, _xm, _ym, _r, _val) {
	_index = _index.value;
	return ds_grid_value_disk_y(_index, _xm, _ym, _r, _val)
}
#region JsDocs
/// @func    fs_grid_shuffle()
/// @desc    This function can be used to randomise the positions of all values in all cells within a grid.
/// @param   {Id.DsGrid} index : The index of the grid to shuffle.
/// @return  {Undefined}
#endregion
function fs_grid_shuffle(_index) {
	_index = _index.value;
	return ds_grid_shuffle(_index)
}
#region JsDocs
/// @func    fs_grid_write()
/// @desc    This function can be used to convert the given ds_grid into a string, which can then be stored in an external file (for example). You can read the returned string from this function back into a ds_grid using the function ds_grid_read().
/// @param   {Id.DsGrid} index : The index of the grid to write.
/// @return  {String}
/// @pure
/// @deprecated
#endregion
function fs_grid_write(_index) {
	_index = _index.value;
	return ds_grid_write(_index)
}
#region JsDocs
/// @func    fs_grid_read()
/// @desc    This function can be used to convert a string which has been created previously by the function ds_grid_write() back into a DS grid. The DS grid must have been created previously (see the example below).
/// @param   {Id.DsGrid} index : The index of the grid to read.
/// @param   {String} string : The string to read into the DS grid.
/// @param   {Bool} legacy : Can be either true or false or omitted completely.
/// @return  {Undefined}
#endregion
function fs_grid_read(_index, _string, _legacy=undefined) {
	_index = _index.value;
	return ds_grid_read(_index, _string, _legacy=undefined)
}
#region JsDocs
/// @func    fs_grid_sort()
/// @desc    This function can be used to sort a DS grid based on the values from a given column (much as you would sort files by date, size etc... in the OS file explorer). The following image shows an example:
/// @param   {Id.DsGrid} index : The index of the grid to sort.
/// @param   {Real} column : The column to use for sorting the rows
/// @param   {Bool} ascending : Whether to sort lowest to highest (true), or highest to lowest (false).
/// @return  {Undefined}
#endregion
function fs_grid_sort(_index, _column, _ascending) {
	_index = _index.value;
	return ds_grid_sort(_index, _column, _ascending)
}
#region JsDocs
/// @func    fs_grid_to_mp_grid()
/// @desc    This function can be used to convert a DS grid into an MP grid. You can also provide an optional predicate function argument to map the DS grid value to the corresponding MP grid value. If you don't provide a predicate function, the function will treat zero values as empty and non-zero values as occupied.
/// @param   {Id.DsGrid} src : The source DS grid.
/// @param   {Id.MpGrid} dest : The destination MP grid.
/// @param   {Function} func : A predicate function (that is passed the: grid value, cell x and cell y) and should return true (cell is ocupied) or false (cell is empty)
/// @return  {Undefined}
#endregion
function fs_grid_to_mp_grid(_src, _dest, _func=undefined) {
	_src = _src.value;
	_dest = _dest.value;
	return ds_grid_to_mp_grid(_src, _dest, _func=undefined)
}


