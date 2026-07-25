
#$ material: element to get data for; C, U-235, U-238, etc.
#$ temperature: material temperature/10

$execute store result score #fast_scattering.chance mechanization.data run data get storage mechanization:registry $(material).fast_scattering[$(temperature)] 10000
$execute store result score #fast_capture.chance mechanization.data run data get storage mechanization:registry $(material).fast_capture[$(temperature)] 10000
$execute store result score #thermal_capture.chance mechanization.data run data get storage mechanization:registry $(material).thermal_capture[$(temperature)] 10000
