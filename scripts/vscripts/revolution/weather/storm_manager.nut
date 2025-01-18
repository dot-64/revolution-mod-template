

function Thunder() {
    local rng = rand() * EntityGroup.len() / RAND_MAX 

    //print("Thunder!\n")

    LightningStrike(rng)
    ThunderSound(rng)
}

function LightningStrike(i) {
    local lightningProjectedEntity = EntityGroup[i];
    local targetName = lightningProjectedEntity.GetName()

    EntFire(targetName, "TurnOn", "", 0)
    EntFire(targetName, "TurnOff", "", random(0.3, 0.4))
    EntFire(targetName, "TurnOn", "", random(0.5, 0.6))
    EntFire(targetName, "TurnOff", "", random(0.7, 0.9))
}

function ThunderSound(i) {
    local thunderEntityName = "thunder_sound" + i
    local thunderDelay = random(0.25, 1.24)
    //print("Thunderdelay: " + thunderDelay + "\n")
    EntFire(thunderEntityName, "PlaySound", "", thunderDelay)
}

function random(min, max) {
    return min + rand().tofloat() * (max - min) / RAND_MAX
}