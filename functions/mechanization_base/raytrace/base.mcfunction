#runs ray manager at rays
scoreboard players add @e[tag=proj] timer 1
execute @e[type=boat,tag=b1] ~ ~ ~ function mechanization_base:raytrace/manage_ray
kill @e[tag=proj,score_timer_min=120]