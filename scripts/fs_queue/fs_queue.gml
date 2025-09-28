#region JsDocs
/// @func    fs_queue_create()
/// @desc    This function will create a new queue data-structure and return the index value. This value should be stored in a variable and used in all further function calls relating to the queue.
/// @return  {Id.DsQueue}
#endregion
function fs_queue_create() {
	return FS_Destructor(ds_queue_create(), ds_queue_destroy);
}
#region JsDocs
/// @func    fs_queue_destroy()
/// @desc    This function will remove the given queue data-structure from memory, freeing up the resources it was using and removing all values that it contained. This function should always be used when you are finished using the DS queue to prevent memory leaks that can slow down and crash your game.
/// @param   {Id.DsQueue} id : The id of the data structure to remove.
/// @return  {Undefined}
#endregion
function fs_queue_destroy(_id) {
	_id = _id.value;
	return ds_queue_destroy(_id)
}
#region JsDocs
/// @func    fs_queue_clear()
/// @desc    With this function you can clear all data from the given queue data-structure. This does NOT destroy the data-structure (for that you should use ds_queue_destroy()) it only wipes all data from it and returns an empty queue.
/// @param   {Id.DsQueue} id : The id of the data structure to clear.
/// @return  {Undefined}
#endregion
function fs_queue_clear(_id) {
	_id = _id.value;
	return ds_queue_clear(_id)
}
#region JsDocs
/// @func    fs_queue_copy()
/// @desc    This function can be used to copy the contents of one queue into another. Note that this does NOT remove the contents from the original queue, nor does it destroy the original queue. When using this function the queue being copied to must have been previously created and if it contained any items before the copy, then these will be cleared first (meaning this information will be lost).
/// @param   {Id.DsQueue} destination : The id of the NEW queue.
/// @param   {Id.DsQueue} source : The ORIGINAL queue to copy to id.
/// @return  {Undefined}
#endregion
function fs_queue_copy(_destination, _source) {
	_destination = _destination.value;
	_source = _source.value;
	return ds_queue_copy(_destination, _source)
}
#region JsDocs
/// @func    fs_queue_size()
/// @desc    This function will return the "size" of the queue, ie: the number of items that have been queued onto it.
/// @param   {Id.DsQueue} id : The id of the data structure to check.
/// @return  {Real}
/// @pure
/// @deprecated
#endregion
function fs_queue_size(_id) {
	_id = _id.value;
	return ds_queue_size(_id)
}
#region JsDocs
/// @func    fs_queue_empty()
/// @desc    With this function you can check the given DS queue to see if it is empty (returns true) or not (returns false).
/// @param   {Id.DsQueue} id : The id of the data structure to check.
/// @return  {Bool}
/// @pure
/// @deprecated
#endregion
function fs_queue_empty(_id) {
	_id = _id.value;
	return ds_queue_empty(_id)
}
#region JsDocs
/// @func    fs_queue_enqueue()
/// @desc    This function will add a value (real or string) onto the tail of the DS queue. The function can take a further 14 optional arguments (making a total of 15 possible additions), permitting you to add multiple values consecutively to the tail of the queue in a single call.
/// @param   {Id.DsQueue} id : The id of the queue to add to.
/// @param   {ArgumentIdentity} ... : The value to add to the queue.
/// @return  {Undefined}
#endregion
function fs_queue_enqueue(_id) {
	__FS_ARG_INIT
	__arr[0] = _id.value;
	__FS_ARG_SET
	return script_execute_ext(ds_queue_enqueue, __arr);
	__FS_ARG_RESET
}
#region JsDocs
/// @func    fs_queue_dequeue()
/// @desc    This function will dequeue the head value off of the DS queue, removing it from the queue and returning the value to be stored in a variable. If the queue is empty then the function will return the constant undefined, otherwise it will return the real or string value contained in the queue.
/// @param   {Id.DsQueue} id : The id of the queue to dequeue from.
/// @return  {ArgumentIdentity}
#endregion
function fs_queue_dequeue(_id) {
	_id = _id.value;
	return ds_queue_dequeue(_id)
}
#region JsDocs
/// @func    fs_queue_head()
/// @desc    This function will only read the first value of the queue (that which is "at the head"). It will not dequeue the value, meaning that it can still be read in the future by this function or the ds_queue_dequeue(). If the queue is empty then the function will return the constant undefined, otherwise it will return the real or string value contained in the queue.
/// @param   {Id.DsQueue} id : The id of the data structure to read from.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_queue_head(_id) {
	_id = _id.value;
	return ds_queue_head(_id)
}
#region JsDocs
/// @func    fs_queue_tail()
/// @desc    This function will only read the last value of the queue (that which is "at the tail"). It will not dequeue the value, meaning that it can still be read in the future by this function or the ds_queue_dequeue().
/// @param   {Id.DsQueue} id : The id of the data structure to read from.
/// @return  {ArgumentIdentity}
/// @pure
/// @deprecated
#endregion
function fs_queue_tail(_id) {
	_id = _id.value;
	return ds_queue_tail(_id)
}
#region JsDocs
/// @func    fs_queue_write()
/// @desc    This function returns a string which can then be stored or transferred to another data structure using the ds_queue_read() function.
/// @param   {Id.DsQueue} id : The id of the data structure to write.
/// @return  {String}
/// @pure
/// @deprecated
#endregion
function fs_queue_write(_id) {
	_id = _id.value;
	return ds_queue_write(_id)
}
#region JsDocs
/// @func    fs_queue_read()
/// @desc    With this function you can recreate a saved DS queue (one that has previously been written as a string using ds_queue_write()). You must first create a new DS queue to read the string into, and if the DS queue already exists and has information stored in it, then this will be cleared before reading. This function is of vital importance when creating save/load mechanisms for your game.
/// @param   {Id.DsQueue} id : The id of the data structure to read into.
/// @param   {String} str : The string to read from.
/// @param   {Bool} legacy : Can be either true or false or omitted completely.
/// @return  {Undefined}
#endregion
function fs_queue_read(_id, _str, _legacy=undefined) {
	_id = _id.value;
	return ds_queue_read(_id, _str, _legacy)
}
