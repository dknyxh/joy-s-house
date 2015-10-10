global.menu = noone
global.status = 1
global.money = 500
global.realmoney =global.money
global.roomx = 10
global.roomy = 6
global.age = 0
global.say = ""

global.agespr[0,1] = spr_character_down
global.agespr[0,2] = spr_character_up
global.agespr[0,3] = spr_character_left
global.agespr[1,1] = spr_character_down1
global.agespr[1,2] = spr_character_up1
global.agespr[1,3] = spr_character_left1
global.agespr[2,1] = spr_character_down2
global.agespr[2,2] = spr_character_up2
global.agespr[2,3] = spr_character_left2
global.agespr[3,1] = spr_character_down3
global.agespr[3,2] = spr_character_up3
global.agespr[3,3] = spr_character_left3
global.agespr[4,1] = spr_character_down4
global.agespr[4,2] = spr_character_up4
global.agespr[4,3] = spr_character_left4


i = 0 
j = 0
while (i<global.roomy)
{
    j=0
    while(j<global.roomx)
    {
        n = instance_create(1000+j*(160-66+1)-i*66,400+i*66,obj_block)
        n.viewdepth = -1-i*2
        j+=1
    }
    i+=1
}
instance_create(1000-13-global.roomy*66,400-33+global.roomy*66,obj_black)
instance_create(1000-13-global.roomy*66+(160-66)*global.roomx,400-33+global.roomy*66,obj_black1)
instance_create(1000-13+(160-66)*global.roomx,400-33,obj_black2)
instance_create(1000-13-global.roomy*66-sprite_get_width(spr_black2),400-33+global.roomy*66,obj_black3)
//instance_create(1000,200,obj_wall)
instance_create(1000-13,400-33,obj_wall1)
instance_create(1000-13,400-33,obj_wall2)
//instance_create(0,0,obj_draw)
