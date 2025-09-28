// FS_Step_Rate
// How frequently to update the "time to live" of objects
#macro FS_Step_Rate 1


// FS_Collection_Rate
// How many steps an object must partake before collection
#macro FS_Collection_Rate 3


enum __FS_DESTRUCTOR {
	TTL = 0,
	REF = 1,
}