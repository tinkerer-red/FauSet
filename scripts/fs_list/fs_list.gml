#region JsDocs
/// @func    fs_list_create()
/// @desc    This function will create a new list data-structure and return the index value. This value should be stored in a variable and used in all further function calls relating to the list. Note that if you try and access a value in the list before it has been populated - i.e. the list is "empty" - then the return value may be 0 since internally the first few entries in the list are set when created to minimize performance issues when initially adding items to the list (although the ds_list_size() function will still return 0 on a newly created list). If you wish to ensure that the list is "truly" empty on create, then you should call ds_list_clear() after creating the list, which will then mean that any values returned for unpopulated list slots will be undefined.
/// @return  {Id.DsList}
#endregion
function fs_list_create() {
	return FS_Destructor(ds_list_create(), ds_list_destroy);
}
#region JsDocs
/// @func    fs_list_destroy()
/// @desc    This function will remove the given list data-structure from memory, freeing up the resources it was using and removing all values that it contained. This function should always be used when you are finished using the ds_list to prevent memory leaks that can slow down and crash your game. Note that destroying a list will de-reference any data structures stored in it giving a memory leak, so you would need to go through the list and destroy all data structure items manually before destroying it to prevent this. The only time this is not required is when you have flagged any items in the list as another DS list or as a DS map, in which case these items will be destroyed and their memory cleaned up automatically as well.
/// @param   {Id.DsList} id : The id of the data structure to remove.
/// @return  {Undefined}
#endregion
function fs_list_destroy(_id) {
	_id = _id.value;
	return ds_list_destroy(_id)
}
#region JsDocs
/// @func    fs_list_clear()
/// @desc    With this function you can clear all data from the given list data-structure. This does NOT destroy the data-structure (for that you should use ds_list_destroy()) it only wipes all data from it and makes the list empty (zero in size). Note that clearing a list will de-reference any data structures stored in it giving a memory leak, so you would need to go through the list and destroy all data structure items manually before clearing it to prevent this. The only time this is not required is when you have flagged any items in the list as another DS list or as a DS map, in which case these items will be destroyed (not cleared!) and their memory cleaned up automatically when the parent is cleared.
/// @param   {Id.DsList} id : The id of the data structure to clear.
/// @return  {Undefined}
#endregion
function fs_list_clear(_id) {
	_id = _id.value;
	return ds_list_clear(_id)
}
#region JsDocs
/// @func    fs_list_copy()
/// @desc    With this function you can copy the contents of one list into another. Both lists must have been created previously and if the list being copied to already has information within it, this list will be cleared first. The end result is two independent lists which contain the same information.
/// @param   {Id.DsList} destination : The id of the list being copied to.
/// @param   {Id.DsList} source : The id of the list to be copied from.
/// @return  {Undefined}
#endregion
function fs_list_copy(_destination, _source) {
	_destination = _destination.value;
	_source = _source.value;
	return ds_list_copy(_destination, _source)
}
#region JsDocs
/// @func    fs_list_size()
/// @desc    This function will return the "size" of the list, ie: the number of items that have been added into it.
/// @param   {Id.DsList} id : The id of the data structure to check.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_list_size(_id) {
	_id = _id.value;
	return ds_list_size(_id)
}
#region JsDocs
/// @func    fs_list_empty()
/// @desc    With this function you can check the given DS list to see if it is empty (returns true) or not (returns false).
/// @param   {Id.DsList} id : The id of the data structure to check.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_list_empty(_id) {
	_id = _id.value;
	return ds_list_empty(_id)
}
#region JsDocs
/// @func    fs_list_add()
/// @desc    This function can be used to add a new value (real or string) to the list, which will be added on at the end. The function can take further optional arguments (as many as you require), permitting you to add multiple values consecutively to the list in a single call.
/// @param   {Id.DsList} id : The id of the list to add to.
/// @param   {ArgumentIdentity} ... : The value to add to the list.
/// @return  {Undefined}
#endregion
function fs_list_add(_id) {
	__FS_ARG_INIT
	__arr[0] = _id.value;
	__FS_ARG_SET
	return script_execute(ds_list_add, __arr);
	__FS_ARG_RESET
}
#region JsDocs
/// @func    fs_list_insert()
/// @desc    This function will add the given value into the list at the given position. if the list contains more values after the given position, their position will be shifted up one to make room making the list larger by one.
/// @param   {Id.DsList} id : The id of the list to add to.
/// @param   {Real} pos : The position to add the value, where 0 corresponds to the very beginning of the list and the final position is ds_list_size(id)-1.
/// @param   {ArgumentIdentity} val : The value to add to the list.
/// @return  {Undefined}
#endregion
function fs_list_insert(_id, _pos, _val) {
	_id = _id.value;
	return ds_list_insert(_id, _pos, _val)
}
#region JsDocs
/// @func    fs_list_replace()
/// @desc    This function will replace the value at the given position for another one.
/// @param   {Id.DsList} id : The id of the list to change.
/// @param   {Real} pos : The position to replace the value, where 0 corresponds to the very beginning of the list and the final position is ds_list_size(id)-1.
/// @param   {ArgumentIdentity} val : The new value to replace the given value with.
/// @return  {Undefined}
#endregion
function fs_list_replace(_id, _pos, _val) {
	_id = _id.value;
	return ds_list_replace(_id, _pos, _val)
}
#region JsDocs
/// @func    fs_list_delete()
/// @desc    With this function you can remove the value stored at a specific position within the list.
/// @param   {Id.DsList} id : The id of the list to change.
/// @param   {Real} pos : Where in the list to delete the value.
/// @return  {Undefined}
#endregion
function fs_list_delete(_id, _pos) {
	_id = _id.value;
	return ds_list_delete(_id, _pos)
}
#region JsDocs
/// @func    fs_list_find_index()
/// @desc    With this function you can check the given list for a value and the position within the list for that value will be returned. Note that if there are more than one entries in the list with the same value, the position of any one of them may be returned, and that if the value does not exist, then -1 will be returned. Note that the value can be an array, which you can check with the function is_array().
/// @param   {Id.DsList} id : The id of the list to use.
/// @param   {Any} val : The value to find.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_list_find_index(_id, _val) {
	_id = _id.value;
	return ds_list_find_index(_id, _val)
}
#region JsDocs
/// @func    fs_list_find_value()
/// @desc    With this function you can check the given list position and the value held within the list for that position will be returned. Note that if you give a position that is outside of the given list size (ie: position 11 in a 10 value list) then the function may return undefined or 0. This is because when you create the list, internally the first few entries in the list are set to 0 to minimize performance issues when initially adding items to the list (although the ds_list_size() function will still return 0 on a newly created list). If you wish to ensure that the list is "truly" empty on create, then you should call ds_list_clear() after creating the list, which will then mean that any values returned for unpopulated list slots will be undefined, which you can then check consistently using the is_undefined() function.
/// @param   {Id.DsList} id : The id of the list to use.
/// @param   {Real} pos : The position to look at, where 0 corresponds to the very beginning of the list and the final position is ds_list_size(id)-1.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_list_find_value(_id, _pos) {
	_id = _id.value;
	return ds_list_find_value(_id, _pos)
}
#region JsDocs
/// @func    fs_list_is_map()
/// @desc    With this function you can check to see if a DS map is stored at the given position within a DS list. If the given position contains a DS map ID, then the function will return true otherwise it will return false.
/// @param   {Id.DsList} id : The id of the list to check.
/// @param   {Real} pos : The position within the list to check.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_list_is_map(_id, _pos) {
	_id = _id.value;
	return ds_list_is_map(_id, _pos)
}
#region JsDocs
/// @func    fs_list_is_list()
/// @desc    With this function you can check to see if another DS list is stored at the given position within a DS list. If the given position contains a DS list ID, then the function will return true otherwise it will return false.
/// @param   {Id.DsList} id : The id of the list to check.
/// @param   {Real} pos : The position within the list to check.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_list_is_list(_id, _pos) {
	_id = _id.value;
	return ds_list_is_list(_id, _pos)
}
#region JsDocs
/// @func    fs_list_mark_as_list()
/// @desc    This function will "mark" (or "flag") a given position within a previously created DS list as holding another DS list. This functionality is required when encoding JSON strings (which you can create using json_encode()), but can also be useful when nesting data-structures, as items marked in this way will automatically be garbage collected (destroyed) when the parent DS list is destroyed. This means that you do not have to manually go through the list contents and destroy the marked data structures individually before destroying the "parent" list. However, if you delete the list position individually, the DS list it contained will not be garbage collected and you should call the appropriate DS list destroy function before deleting the item from the parent list position. Also note that if you call the function ds_list_clear() on a list, any items flagged as lists will be destroyed as well when the list is cleared.
/// @param   {Id.DsList} id : The id of the list to mark.
/// @param   {Real} pos : The position within the list to mark.
/// @return  {Real}
#endregion
function fs_list_mark_as_list(_id, _pos) {
	_id = _id.value;
	return ds_list_mark_as_list(_id, _pos)
}
#region JsDocs
/// @func    fs_list_mark_as_map()
/// @desc    This function will "mark" (or "flag") a given position within a previously created DS list as holding a DS map. This functionality is required when encoding JSON strings (which you can create using json_encode()), but can also be useful when nesting data-structures, as items marked in this way will automatically be garbage collected (destroyed) when the parent DS list is destroyed. This means that you do not have to manually go through the list contents and destroy the marked data structures individually before destroying the "parent" list. However, if you delete the list position individually, the data structure it contained will not be garbage collected and you should call the appropriate DS map destroy function before deleting the parent list position. Also note that if you call the function ds_list_clear() on a list, any items flagged as maps will be destroyed as well when the list is cleared.
/// @param   {Id.DsList} id : The id of the list to mark.
/// @param   {Real} pos : The position within the list to mark.
/// @return  {Real}
#endregion
function fs_list_mark_as_map(_id, _pos) {
	_id = _id.value;
	return ds_list_mark_as_map(_id, _pos)
}
#region JsDocs
/// @func    fs_list_sort()
/// @desc    With this function you can sort all the values within a list, either in ascending or descending order. If the list contains strings, these will be sorted alphabetically, based on the English 26 letter alphabet.
/// @param   {Id.DsList} id : The id of the list to sort.
/// @param   {Bool} ascend : Whether the values should be ascending (true) or descending (false) order.
/// @return  {Undefined}
#endregion
function fs_list_sort(_id, _ascend) {
	_id = _id.value;
	return ds_list_sort(_id, _ascend)
}
#region JsDocs
/// @func    fs_list_shuffle()
/// @desc    With this function you can shuffle a list, which will re-order all the component values into random positions from those in which they were originally added to the list.
/// @param   {Id.DsList} id : The id of the list to shuffle.
/// @return  {Undefined}
#endregion
function fs_list_shuffle(_id) {
	_id = _id.value;
	return ds_list_shuffle(_id)
}
#region JsDocs
/// @func    fs_list_write()
/// @desc    This function returns a string which can then be stored or transferred to another data structure using the ds_list_read() function.
/// @param   {Id.DsList} id : The id of the data structure to write.
/// @return  {String}
/// @pure
/// @deprecated
#endregion
function fs_list_write(_id) {
	_id = _id.value;
	return ds_list_write(_id)
}
#region JsDocs
/// @func    fs_list_read()
/// @desc    With this function you can recreate a saved DS list (one that has previously been written as a string using ds_list_write()). You must first create a new DS list to read the string into, and if the DS list already exists and has information stored in it, then this will be cleared before reading. This function is of vital importance when creating save/load mechanisms for your game.
/// @param   {Id.DsList} id : The id of the data structure to read into.
/// @param   {String} str : The string to read from.
/// @param   {Bool} legacy : Can be either true or false or omitted completely.
/// @return  {Undefined}
#endregion
function fs_list_read(_id, _str, _legacy=undefined) {
	_id = _id.value;
	return ds_list_read(_id, _str, _legacy=undefined)
}
#region JsDocs
/// @func    fs_list_set()
/// @desc    This function can be used to set a previously added list entry. You give the list ID (as returned when you created the list) and the position within the list to set as well as the value to set it to. Note that if the entry being set is outside the bounds of the list (ie, you set list entry 20 but the current list only contains 10 entries) then the list will be filled to the given position and each entry will be set to 0. This function is the same as using the DS list accessor.
/// @param   {Id.DsList} id : The id of the list to add to.
/// @param   {Real} pos : The position within the list to set.
/// @param   {ArgumentIdentity} ... : The value to set in the list.
/// @return  {Undefined}
#endregion
function fs_list_set(_id, _pos) {
	__FS_ARG_INIT
	__arr[0] = _id.value;
	__arr[0] = _pos;
	__FS_ARG_SET
	return script_execute(ds_list_set, __arr);
	__FS_ARG_RESET
}
