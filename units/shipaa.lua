unitDef = {
  unitname               = [[shipaa]],

  name                   = [[Zephyr]],
  description            = [[Anti-Air Frigate]],
  acceleration           = 0.0498,
  activateWhenBuilt   = true,
  brakeRate              = 0.0808,

  buildCostEnergy        = 600,
  buildCostMetal         = 600,
  builder                = false,

  buildPic               = [[shipaa.png]],
  buildTime              = 500,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = [[1]],
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 4 4]],
  collisionVolumeScales  = [[32 32 128]],
  collisionVolumeType    = [[CylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    
    helptext       = [[Equiped with powerful Anti Air auto cannons that open up on air at range, as well as a powerful AOE Flak cannon that tears small ships to ribons if they get to close.]],
	modelradius    = [[45]],
	turnatfullspeed = [[1]],
  },

  explodeAs              = [[BIG_UNITEX]],
  floater                = true,
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[shipaa]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  losEmitHeight          = 40,
  maxDamage              = 1900,
  maxVelocity            = 2.84,
  minCloakDistance       = 75,
  minWaterDepth          = 5,
  movementClass          = [[BOAT3]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM LAND SINK TURRET SHIP SATELLITE SWIM FLOAT SUB HOVER]],
  objectName             = [[shipaa.s3o]],
  scale                  = [[0.6]],
  script		 = [[shipaa.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[BIG_UNITEX]],
  sightDistance          = 660,
  sonarDistance          = 0,  
  turninplace            = 0,
  turnRate               = 486,
  waterline              = 4,
  workerTime             = 0,

  weapons                = {

    [1] = {
      def                = [[FLAK]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },


    [2] ={
      def                = [[EMG]],
      --badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },

  },


  weaponDefs             = {


    EMG           = {
      name                    = [[Anti-Air Autocannon]],
      accuracy                = 612,
      alphaDecay              = 0.7,
      areaOfEffect            = 8,
      canattackground         = false,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 1,

	  customParams        	  = {
		isaa = [[1]],
		
		light_camera_height = 1600,
		light_color = [[0.9 0.86 0.45]],
		light_radius = 140,
	  },

      damage                  = {
        default = 0.78,
        planes  = 7.8,
        subs    = 0.5,
      },

      explosionGenerator      = [[custom:ARCHPLOSION]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      intensity               = 0.8,
      interceptedByShieldType = 1,
      predictBoost            = 1,
      proximityPriority       = 4,
      range                   = 1250,
      reloadtime              = 0.1,
      rgbColor                = [[1 0.95 0.4]],
      separation              = 1.5,
      soundStart              = [[weapon/cannon/brawler_emg]],
      stages                  = 10,
      sweepfire               = false,
      tolerance               = 8192,
      turret                  = true,
      weaponTimer             = 1,
      weaponType              = [[Cannon]],
      weaponVelocity          = 1800,
    },



    BOGUS_MISSILE = {
      name                    = [[Missiles]],
      areaOfEffect            = 48,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 0,
      },

      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      metalpershot            = 0,
      range                   = 800,
      reloadtime              = 0.5,
      startVelocity           = 450,
      tolerance               = 9000,
      turnRate                = 33000,
      turret                  = true,
      weaponAcceleration      = 101,
      weaponTimer             = 0.1,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2000,
    },


    FLAK          = {
      name                    = [[Flak Cannon]],
      accuracy                = 400,
      areaOfEffect            = 115,
      burnblow                = true,
      canattackground         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 10,
        planes  = 100,
        subs    = 2.5,
      },

      edgeEffectiveness       = 0.85,
      explosionGenerator      = [[custom:LARGE_MUZZLE_FLASH_FX]],
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      range                   = 800,
      reloadtime              = 0.4,
      soundHit                = [[weapon/flak_hit]],
      soundStart              = [[weapon/flak_fire]],
      turret                  = true,
      weaponTimer             = 1,
      weaponType              = [[Cannon]],
      weaponVelocity          = 2000,
    },

  },


  featureDefs            = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[shipaa_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4b.s3o]],
    },

  },

}

return lowerkeys({ shipaa = unitDef })
