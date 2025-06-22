
#$ material: element to get data for; C, U-235, U-238, etc.
#$ reaction: interaction type; <fast/thermal>_<scattering/fission,capture>
#$ temperature: material temperature/10

$execute store result storage mechanization:temp io.return.value int 1 run data get storage mechanization:registry math.$(material).$(reaction)[$(temperature)] 10000
return run function mechanization:base/math/m.return with storage mechanization:temp io.return
