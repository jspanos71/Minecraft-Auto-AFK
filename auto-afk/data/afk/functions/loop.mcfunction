# Main loop for Auto-AFK.  

# Per Player Clock
scoreboard players add @a afk.AFKCounter 1
scoreboard players add @a[scores={afk.AFKCounter=1200..}] afk.AFKClock 1
scoreboard players set @a[scores={afk.AFKCounter=1200..}] afk.AFKCounter 0
#
## Walking
scoreboard players add @a[scores={afk.AFKDisWalk=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisWalk=100..}] afk.AFKDisWalk 100
# Swim
scoreboard players add @a[scores={afk.AFKDisSwim=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisSwim=100..}] afk.AFKDisSwim 100
# Walk on water
scoreboard players add @a[scores={afk.AFKDisWOW=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisWOW=100..}] afk.AFKDisWOW 100
# Walk under water
scoreboard players add @a[scores={afk.AFKDisWUW=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisWUW=100..}] afk.AFKDisWUW 100
# Crouch
scoreboard players add @a[scores={afk.AFKDisCrouch=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisCrouch=100..}] afk.AFKDisCrouch 100
# Sprinting
scoreboard players add @a[scores={afk.AFKDisSprint=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisSprint=100..}] afk.AFKDisSprint 100
# Falling
scoreboard players add @a[scores={afk.AFKDisFallen=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisFallen=100..}] afk.AFKDisFallen 100
# Climbing
scoreboard players add @a[scores={afk.AFKDisClimb=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisClimb=100..}] afk.AFKDisClimb 100
# Flying
scoreboard players add @a[scores={afk.AFKDisFlown=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisFlown=100..}] afk.AFKDisFlown 100
# Boating
scoreboard players add @a[scores={afk.AFKDisBoat=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisBoat=100..}] afk.AFKDisBoat 100
# Riding Pig
scoreboard players add @a[scores={afk.AFKDisPig=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisPig=100..}] afk.AFKDisPig 100
# Riding Horse
scoreboard players add @a[scores={afk.AFKDisHorse=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisHorse=100..}] afk.AFKDisHorse 100
# Elytra
scoreboard players add @a[scores={afk.AFKDisElytra=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisElytra=100..}] afk.AFKDisElytra 100
# Minecart
scoreboard players add @a[scores={afk.AFKDisCart=100..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKDisCart=100..}] afk.AFKDisCart 100
# Times jumped
scoreboard players add @a[scores={afk.AFKJump=1..}] afk.AFKMovement 1
scoreboard players remove @a[scores={afk.AFKJump=1..}] afk.AFKJump 1
# Reset AFK Clock and Movement score
scoreboard players set @a[scores={afk.AFKMovement=1..}] afk.AFKClock 0
scoreboard players set @a[scores={afk.AFKMovement=1..}] afk.AFKMovement 0

# Teams Change
# This section contains the number of minutes before a player is marked as AFK.
# If the times are changed keep these scores in line with the changes.
tellraw @a[team=!AFK,scores={afk.AFKClock=5..}] {"text":"You are now AFK","color":"gray"}
team join AFK @a[team=!AFK,scores={afk.AFKClock=5..}]
tellraw @a[team=AFK,scores={afk.AFKClock=..4}] {"text":"You are no longer AFK","color":"gray"}
team leave @a[team=AFK,scores={afk.AFKClock=..4}]