if(global.story_chapter == "joe house intro")
    scene_start(sce_house_intro)
else
{
    instance_create(0, 0, timer)
    instance_create(0, 0, flash_text)
}