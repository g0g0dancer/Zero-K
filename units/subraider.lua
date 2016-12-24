unitDef = {
  unitname               = [[subraider]],
  name                   = [[Seawolf]],
  description            = [[Attack Submarine (Stealth Raider)]],
  acceleration           = 0.1,
  activateWhenBuilt      = true,
  brakeRate              = 0.2,
  buildCostEnergy        = 600,
  buildCostMetal         = 600,
  builder                = false,
  buildPic               = [[subraider.png]],
  buildTime              = 600,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = true,
  category               = [[SUB SINK]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[22 22 89]],
  collisionVolumeType    = [[CylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    helptext       = [[Stealthy, fast, and fragile. Fires torpedos at a range that have poor tracking which makes them less effective against moving targets, and more effective against larger slow targets. The Slow naturally increases the chance of subsequent hits. Can even outrange Urchins]],
	modelradius    = [[13]],
	aimposoffset   = [[0 -5 0]],
	midposoffset   = [[0 -5 0]],
    turnatfullspeed = [[1]],
  },

  explodeAs              = [[SMALL_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[subraider]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 800,
  maxVelocity            = 3.3,
  minCloakDistance       = 75,
  minWaterDepth          = 15,
  movementClass          = [[UBOAT3]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP HOVER]],
  objectName             = [[subraider.s3o]],
  script                 = [[subraider.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[SMALL_UNITEX]],
  sightDistance          = 600,
  sonarDistance          = 650,
  turninplace            = 0,
  turnRate               = 500,
  upright                = true,
  waterline              = 20,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[FAKEWEAPON]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 35,
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },

    {
      def                = [[TORPEDO]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 35,
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs             = {
    TORPEDO = {
      name                    = [[Torpedo Launcher]],
      areaOfEffect            = 64,
      avoidFriendly           = false,
      bouncerebound           = 0.5,
      bounceslip              = 0.5,
      burnblow                = true,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
      cegTag                  = [[torptrailpurple]],

      customparams = {
        timeslow_damagefactor = 1,
      },

      damage                  = {
        default = 200,
      },

      explosionGenerator      = [[custom:TORPEDO_HIT]],
      flightTime              = 2,
      groundbounce            = 1,
      edgeEffectiveness       = 0.6,
      impulseBoost            = 0,
      impulseFactor           = 0.2,
      interceptedByShieldType = 1,
      model                   = [[wep_t_longbolt.s3o]],
      numbounce               = 4,
      range                   = 650,
      reloadtime              = 4,
      soundHit                = [[explosion/wet/ex_underwater]],
      --soundStart              = [[weapon/torpedo]],
      startVelocity           = 150,
      tracks                  = true,
      turnRate                = 20,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 100,
      weaponTimer             = 3,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 400,
    },
    FAKEWEAPON  = {
      name                    = [[Fake Torpedo - Points me in the right direction]],
      areaOfEffect            = 16,
      avoidFriendly           = false,
      burnblow                = true,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 0.1,
        planes  = 0.1,
        subs    = 0.1,
      },

      explosionGenerator      = [[custom:TORPEDO_HIT]],
      fixedLauncher           = true,
      flightTime              = 2,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 0,
      model                   = [[wep_t_longbolt.s3o]],
      range                   = 650,
      reloadtime              = 4,
      startVelocity           = 150,
      tolerance               = 100,
      tracks                  = true,
      turnRate                = 20,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 100,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 400,
    },


  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[subraider_dead.s3o]],
    },


    HEAP = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ subraider = unitDef })
