ini_open("data.ini");
if(global.name != "")
{
	ini_write_string("profile", "name", global.name);
}
ini_close();