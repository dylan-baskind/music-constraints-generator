_ = require("lodash")
tempoLow = 75
tempoHigh = 150
keys = [
  "A"
  "A#"
  "B"
  "C"
  "C#"
  "D"
  "D#"
  "E"
  "F"
  "F#"
  "G"
  "G#"
]

# We weight 4/4 and to a lesser degree 3/4 because generally these
# are generally easier signatures for song writing
timeSignatures = [
  "4/4"
  "3/4"
  "4/4"
  "7/4"
  "7/6"
  "4/4"
]

instruments = [
  "drums"
  "percussion"
  "organ"
  "chorus vocals"
  "electric guitar"
  "slide guitar (electric / acoustic)"
  "percussion"
  "claps"
  "tambarine"
  "bass"
  "steel guitar"
  "piano"
]

# Get random entry from given array
getRandom = (array) ->
  index = _.random(0, array.length - 1)
  return array[index]

tempo = _.random tempoLow, tempoHigh
key = getRandom(keys)
timeSignature = getRandom(timeSignatures)

# Instrument selection ---------------------------
# To keep things lean-ish we use less instruments than are
# fully available in the list, and we use at least 2 instruments.
numberOfInstruments = _.random(2, instruments.length - 4)
useInstruments = []
for index in [0..numberOfInstruments]
  randomInstrument = getRandom(instruments)
  useInstruments.push randomInstrument
  instruments = _.filter instruments, (instrument) ->
    instrument isnt randomInstrument

console.log("")
console.log("")
console.log("Song Setup:")
console.log("\t Tempo: #{tempo}")
console.log("\t Key: #{key}")
console.log("\t Time Signature: #{timeSignature}")
console.log("")
console.log("")

console.log("Instrumentation:")
for instrument in useInstruments
  console.log("\t Using: #{instrument}")
console.log("")
console.log("")


