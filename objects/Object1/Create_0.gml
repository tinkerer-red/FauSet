/// @description Insert description here
// You can write your code in this editor
// Create a list (auto-managed)
var myList = fs_list_create();

// Add values
fs_list_add(myList, "hello", "world");

// Check size
var count = fs_list_size(myList);

//// Clear when done (optional — FauSet will GC if lost)
//fs_list_destroy(myList);
