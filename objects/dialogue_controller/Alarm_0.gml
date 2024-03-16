/*
list_x
list_y
list_text
list_alarm
*/

string_current = ""

ds_queue_dequeue(list_x)
ds_queue_dequeue(list_y)
ds_queue_dequeue(list_text)
ds_queue_dequeue(list_alarm)

if(ds_queue_empty(list_x))
    instance_destroy()
else
    alarm[1] = 30
