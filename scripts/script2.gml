for(var i = 0; i < ds_list_size(global.allCards); i += 1)
{
    ds_queue_enqueue(global.currentDeck, ds_list_find_value(global.allCards, i));
}
