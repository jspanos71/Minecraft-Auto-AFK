# Main loop for Auto-AFK.  Execute this function from the function that is specied as 
# gamerule gameLoopFunction in your world.  

# Per Player Clock
scoreboard players add @a AFKCounter 1
scoreboard players add @a[score_AFKCounter_min=1200] AFKClock 1
scoreboard players set @a[score_AFKCounter_min=1200] AFKCounter 0

# Walking
scoreboard players add @a[score_AFKDisWalk_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisWalk_min=100] AFKDisWalk 100
# Crouch
scoreboard players add @a[score_AFKDisCrouch_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisCrouch_min=100] AFKDisCrouch 100
# Sprinting
scoreboard players add @a[score_AFKDisSprint_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisSprint_min=100] AFKDisSprint 100
# Swimming
scoreboard players add @a[score_AFKDisSwum_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisSwum_min=100] AFKDisSwum 100
# Falling
scoreboard players add @a[score_AFKDisFallen_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisFallen_min=100] AFKDisFallen 100
# Climbing
scoreboard players add @a[score_AFKDisClimb_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisClimb_min=100] AFKDisClimb 100
# Flying
scoreboard players add @a[score_AFKDisFlown_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisFlown_min=100] AFKDisFlown 100
# Diving
scoreboard players add @a[score_AFKDisDove_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisDove_min=100] AFKDisDove 100
# Boating
scoreboard players add @a[score_AFKDisBoat_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisBoat_min=100] AFKDisBoat 100
# Riding Pig
scoreboard players add @a[score_AFKDisPig_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisPig_min=100] AFKDisPig 100
# Riding Horse
scoreboard players add @a[score_AFKDisHorse_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisHorse_min=100] AFKDisHorse 100
# Elytra
scoreboard players add @a[score_AFKDisElytra_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisElytra_min=100] AFKDisElytra 100
# Minecart
scoreboard players add @a[score_AFKDisMinecart_min=100] AFKMovement 1
scoreboard players remove @a[score_AFKDisMinecart_min=100] AFKDisMinecart 100
# Times jumped
scoreboard players add @a[score_AFKTimesJumped_min=1] AFKMovement 1
scoreboard players remove @a[score_AFKTimesJumped_min=1] AFKTimesJumped 1

# Reset AFK Clock and Movement score
scoreboard players set @a[score_AFKMovement_min=1] AFKClock 0
scoreboard players set @a[score_AFKMovement_min=1] AFKMovement 0

# Teams Change
# This section contains the number of minutes before a player is marked as AFK.
# If the times are changed keep these scores in line with the changes.
tellraw @a[score_AFKClock_min=5,team=!AFK] {"text":"You are now AFK","color":"dark_gray"}
scoreboard teams join AFK @a[score_AFKClock_min=5,team=!AFK]
tellraw @a[score_AFKClock_min=0,score_AFKClock=4,team=AFK] {"text":"You are no longer AFK","color":"dark_gray"}
scoreboard teams leave AFK @a[score_AFKClock_min=0,score_AFKClock=4,team=AFK]