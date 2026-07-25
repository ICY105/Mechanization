
#$ material: element to get data for; C, U-235, U-238, etc.
#$ temperature: material temperature/10

$execute store result score #fast_fission.chance mechanization.data run data get storage mechanization:registry $(material).fast_fission[$(temperature)] 10000
$execute store result score #thermal_fission.chance mechanization.data run data get storage mechanization:registry $(material).thermal_fission[$(temperature)] 10000
