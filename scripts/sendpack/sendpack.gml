/// @param str
var str = argument0;

var buff = buffer_create(1024, buffer_grow, 1);
buffer_seek(buff, buffer_seek_start, 0);
buffer_write(buff, buffer_text, str + chr(13)+chr(10));
network_send_raw(socket, buff, buffer_tell(buff));
buffer_delete(buff);