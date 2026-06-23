// Equal Footing FairStart scaffold for Continents.
// TODO: verify Civ VII map generation hooks for active start relocation.

export const EqualFootingFairStartContinents = {
    mapType: "CONTINENTS",
    targetSpread: 0.15,
    weights: {
        foodFirstRing: 1.3,
        productionFirstRing: 1.5,
        foodSecondRing: 0.8,
        productionSecondRing: 1.0,
        freshWater: 8,
        coastQuality: 5,
        luxuryAccess: 5,
        strategicAccess: 4,
        expansionRoom: 6,
        naturalWonderAdjacentPenalty: -12,
        naturalWonderNearBonus: 3,
        independentPowerTooClosePenalty: -4,
        playerDistancePenalty: -10,
        islandIsolationPenalty: -9,
        deadTerrainPenalty: -5,
        boxedInPenalty: -8
    }
};

export function scoreStart(candidate) {
    return Object.entries(EqualFootingFairStartContinents.weights).reduce((score, [key, weight]) => {
        return score + ((candidate && Number(candidate[key])) || 0) * weight;
    }, 0);
}
