with(cutscene_controller)
    instance_destroy()

i = instance_create(0, 0, cutscene_controller)
i.timeline_index = argument0
i.timeline_loop = false
i.timeline_position = 0
i.timeline_running = true
