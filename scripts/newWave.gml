if(instance_number(objGold) < 10)
{
    repeat(2)
    {
        var gold = instance_create(0, 0, objGold);
        with(gold)
        {
            move_random(32, 32);
            while(place_meeting(x, y, objWall) || place_meeting(x, y, objPlayer))
                move_random(32, 32);
        }
    }
}

if(instance_number(objEnemy) < 5)
{
    var enemy = instance_create(0, 0, objEnemy);
    with(enemy)
    {
        move_random(32, 32);
        x += 16;
        y += 16;
        
        while(position_meeting(x, y, objWall) || place_meeting(x, y, objPlayer))
        {
            move_random(32, 32);
            x += 16;
            y += 16;   
        }
    }
}
