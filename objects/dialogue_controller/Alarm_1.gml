/*
list_x
list_y
list_text
list_alarm
*/

if(ds_queue_head(list_text) != string_current)
{
    string_current = string_copy(ds_queue_head(list_text), 0, string_length(string_current) + 1);
    alarm[1] = 1
}
else
    alarm[0] = ds_queue_head(list_alarm)

/* */
/*  */
