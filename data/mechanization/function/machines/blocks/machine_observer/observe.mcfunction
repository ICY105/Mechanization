
execute align xyz as @n[dx=0,dy=0,dz=0,tag=mechanization.observable] run function #mechanization:observable
execute align xyz if entity @n[dx=0,dy=0,dz=0,tag=mechanization.machine_observer] positioned ^ ^ ^1 run function mechanization:machines/blocks/machine_observer/observe
