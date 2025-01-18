CubeCount <- 0
Enabled <- false

AchievementGoalCount <- 15

function Start() {
    Enabled = true
    Step();
}

function Step() {
    local delay = GetDelay();

    if(delay == -1) {
        RecordAchievementEvent("REVO_CUBE_SUPPLY", 0);
        return;
    }

    EntFire("cubespawner_spawn", "Trigger", "", delay);
}

function GetDelay() {
    if(CubeCount <= 5) {
        return 4;
    } else if (CubeCount <= 8) {
        return 8;
    } else if (CubeCount <= AchievementGoalCount) {
        return 16;
    } else {
        return -1;
    }
}

function Stop() {
    Enabled = false
}

function OnCubeSpawned() {
    CubeCount++;

    if(Enabled) {
        Step();
    }
}

function OnCubeDestroyed() {
    CubeCount--;

    // If the supply has been depleted and a cube is destroyed, restart the cycle
    if(CubeCount == AchievementGoalCount - 1) {
        Step();
    }
}