#region JsDocs
/// @func    fs_priority_create()
/// @desc    This function will create a new priority queue data-structure and return the index value. This value should be stored in a variable and used in all further function calls relating to the priority queue.
/// @return  {Id.DsPriority}
#endregion
function fs_priority_create() {
	return FS_Destructor(ds_priority_create(), fs_priority_destroy);
}
#region JsDocs
/// @func    fs_priority_destroy()
/// @desc    This function will remove the given priority queue data-structure from memory, freeing up the resources it was using and removing all values that it contained. This function should always be used when you are finished using the DS priority queue to prevent memory leaks that can slow down and crash your game.
/// @param   {Id.DsPriority} id : The id of the data structure to remove.
/// @return  {Undefined}
#endregion
function fs_priority_destroy(_id) {
	_id = _id.value;
	return ds_priority_destroy(_id)
}
#region JsDocs
/// @func    fs_priority_clear()
/// @desc    With this function you can clear all data from the given priority queue data-structure. This does NOT destroy the data-structure (for that you should use ds_priority_destroy()) it only wipes all data from it and returns an empty priority queue.
/// @param   {Id.DsPriority} id : The id of the data structure to clear.
/// @return  {Undefined}
#endregion
function fs_priority_clear(_id) {
	_id = _id.value;
	return ds_priority_clear(_id)
}
#region JsDocs
/// @func    fs_priority_copy()
/// @desc    This function can be used to copy the contents of one priority queue into another. Note that this does NOT remove the contents from the original priority queue, nor does it destroy the original priority queue. When using this function the priority queue being copied to must have been previously created and if it contained any items before the copy, then these will be cleared first (meaning this information will be lost).
/// @param   {Id.DsPriority} destination : The id of the priority queue to copy to.
/// @param   {Id.DsPriority} source : The id of the priority queue to copy from.
/// @return  {Undefined}
#endregion
function fs_priority_copy(_destination, _source) {
	_destination = _destination.value;
	_source = _source.value;
	return ds_priority_copy(_destination, _source)
}
#region JsDocs
/// @func    fs_priority_size()
/// @desc    This function will return the "size" of the priority queue, ie: the number of items that have been prioritized in it.
/// @param   {Id.DsPriority} id : The id of the data structure to check.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_priority_size(_id) {
	_id = _id.value;
	return ds_priority_size(_id)
}
#region JsDocs
/// @func    fs_priority_empty()
/// @desc    With this function you can check the given DS priority queue to see if it is empty (returns true) or not (returns false).
/// @param   {Id.DsPriority} id : The id of the data structure to check.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_priority_empty(_id) {
	_id = _id.value;
	return ds_priority_empty(_id)
}
#region JsDocs
/// @func    fs_priority_add()
/// @desc    With this function you can add a value (either a real number or a string) to a priority queue, at the same time assigning it a priority value.
/// @param   {Id.DsPriority} id : The id of the priority queue to add to.
/// @param   {ArgumentIdentity} val : The value to add to the priority queue.
/// @param   {Real} priority : The priority of the value to add.
/// @return  {Undefined}
#endregion
function fs_priority_add(_id, _val, _priority) {
	_id = _id.value;
	return ds_priority_add(_id, _val, _priority)
}
#region JsDocs
/// @func    fs_priority_change_priority()
/// @desc    This function will take a given value and change its priority within the referenced priority queue.
/// @param   {Id.DsPriority} id : The id of the priority queue to change.
/// @param   {Any} val : The value to change the priority of.
/// @param   {Real} priority : The new priority of the value.
/// @return  {Undefined}
#endregion
function fs_priority_change_priority(_id, _val, _priority) {
	_id = _id.value;
	return ds_priority_change_priority(_id, _val, _priority)
}
#region JsDocs
/// @func    fs_priority_find_priority()
/// @desc    With this function you can retrieve the priority of any given value. If the value does not exist in the priority queue then undefined will be returned.
/// @param   {Id.DsPriority} id : The id of the priority queue to use.
/// @param   {Any} val : The value to find the priority of.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_priority_find_priority(_id, _val) {
	_id = _id.value;
	return ds_priority_find_priority(_id, _val)
}
#region JsDocs
/// @func    fs_priority_delete_value()
/// @desc    This function will simply delete the given value, along with its priority, from the indexed priority queue.
/// @param   {Id.DsPriority} id : The id of the priority queue to use.
/// @param   {Any} val : The value to delete from the priority queue.
/// @return  {Undefined}
#endregion
function fs_priority_delete_value(_id, _val) {
	_id = _id.value;
	return ds_priority_delete_value(_id, _val)
}
#region JsDocs
/// @func    fs_priority_delete_min()
/// @desc    This function will return the value that has the lowest priority in the queue and then remove the value (and priority) from the data structure. If more than one value has the same priority, then any one of them could be returned in any order, but all other values with the same priority will still be in the queue.
/// @param   {Id.DsPriority} id : The id of the priority queue to use.
/// @return  {ArgumentIdentity}
#endregion
function fs_priority_delete_min(_id) {
	_id = _id.value;
	return ds_priority_delete_min(_id)
}
#region JsDocs
/// @func    fs_priority_find_min()
/// @desc    With this function you can find the value stored in the priority queue with the lowest priority, and if more than one value has the same priority then any one of them could be returned in any order. However, unlike ds_priority_delete_min(), this function will not remove the value from the queue.
/// @param   {Id.DsPriority} id : The id of the priority queue to use.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_priority_find_min(_id) {
	_id = _id.value;
	return ds_priority_find_min(_id)
}
#region JsDocs
/// @func    fs_priority_delete_max()
/// @desc    This function will return the value that has the highest priority in the queue and then remove the value (and priority) from the data structure. If more than one value has the same priority, then any one of them could be returned in any order, but all other values with the same priority will still be in the queue.
/// @param   {Id.DsPriority} id : The id of the priority queue to use.
/// @return  {ArgumentIdentity}
#endregion
function fs_priority_delete_max(_id) {
	_id = _id.value;
	return ds_priority_delete_max(_id)
}
#region JsDocs
/// @func    fs_priority_find_max()
/// @desc    With this function you can find the value stored in the priority queue with the highest priority, and if more than one value has the same priority then any one of them could be returned in any order. However, unlike ds_priority_delete_max(), this function will not remove the value from the queue.
/// @param   {Id.DsPriority} id : The id of the priority queue to use.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_priority_find_max(_id) {
	_id = _id.value;
	return ds_priority_find_max(_id)
}
#region JsDocs
/// @func    fs_priority_write()
/// @desc    This function returns a string which can then be stored or transferred to another data structure using the ds_priority_read() function.
/// @param   {Id.DsPriority} id : The id of the data structure to check.
/// @return  {String}
/// @pure
/// @deprecated
#endregion
function fs_priority_write(_id) {
	_id = _id.value;
	return ds_priority_write(_id)
}
#region JsDocs
/// @func    fs_priority_read()
/// @desc    With this function you can recreate a saved DS priority (one that has previously been written as a string using ds_priority_write()). You must first create a new DS priority to read the string into, and if the DS priority already exists and has information stored in it, then this will be cleared before reading. This function is of vital importance when creating save/load mechanisms for your game.
/// @param   {Id.DsPriority} id : The id of the data structure to write.
/// @param   {String} str : The string to write from.
/// @param   {Bool} legacy : Can be either true or false or omitted completely.
/// @return  {Undefined}
#endregion
function fs_priority_read(_id, _str, _legacy=undefined) {
	_id = _id.value;
	return ds_priority_read(_id, _str, _legacy)
}
