unitDef = {
  unitname          = [[armsonar]],
  name              = [[Sonar Station]],
  description       = [[Locates Water Units]],
  activateWhenBuilt = true,
  buildCostEnergy   = 75,
  buildCostMetal    = 75,
  builder           = false,
  buildPic          = [[ARMSONAR.png]],
  buildTime         = 75,
  canAttack         = false,
  category          = [[UNARMED FLOAT]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[32 48 32]],
  collisionVolumeType           = [[CylY]],
  corpse            = [[DEAD]],
  energyUse         = 1.5,
  explodeAs         = [[SMALL_BUILDINGEX]],
  floater           = true,
  footprintX        = 2,
  footprintZ        = 2,
  iconType          = [[sonar]],
  idleAutoHeal      = 5,
  idleTime          = 1800,
  maxDamage         = 50,
  maxSlope          = 18,
  minCloakDistance  = 150,
  minWaterDepth     = 10,
  objectName        = [[novasonar.s3o]],
  onoffable         = true,
  script            = "armsonar.lua",
  seismicSignature  = 4,
  selfDestructAs    = [[SMALL_BUILDINGEX]],
  sightDistance     = 600,
  sonarDistance     = 1500,
  waterLine         = 20,
  yardMap           = [[oo oo]],
  
  customParams                  = {
    description_de = [[Ortet Einheiten unter Wasser]],
    description_pl = [[Wykrywa jednostki podwodne]],
    helptext       = [[The docile Sonar Station provides one of the few means of locating underwater targets.]],
    helptext_de    = [[Das Sonar ortet nach dem Echoprinzip von Radaranlagen feindliche Einheiten unter Wasser. Dazu strahlen sie selbst ein Signal aus und empfangen das entsprechende Echo, aus dessen Laufzeit auf die Entfernung zu den Einheiten geschlossen wird.]],
    helptext_pl    = [[Sonar jest odpowiednikiem radaru dzialajacym pod woda. Jest niezbedny do wykrywania (a zatem i niszczenia) okretow podwodnych i amfibii nieprzyjaciela.]],
    modelradius    = [[16]],
	removewait     = 1,
	priority_misc  = 2, -- High
  },

  featureDefs       = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[novasonar_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
    },

  },

}

return lowerkeys({ armsonar = unitDef })
