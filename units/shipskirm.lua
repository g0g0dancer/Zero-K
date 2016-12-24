unitDef = {
  unitname               = [[shipskirm]],
  name                   = [[Mistral]],
  description            = [[Missile Ship (Skirmisher)]],
  acceleration           = 0.039,
  activateWhenBuilt      = true,
  brakeRate              = 0.115,
  buildCostEnergy        = 300,
  buildCostMetal         = 300,
  builder                = false,
  buildPic               = [[shipskirm.png]],
  buildTime              = 300,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = [[1]],
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 2 0]],
  collisionVolumeScales  = [[24 24 60]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
       helptext       = [[This Missile Ship fires a barrage of 4 missles, which home in on their target no matter how fast they are going. Great for dealing with slow Enemies, or anything that can't close the distance in time to fire back. Beware of subs or anything that gets to close.]],
	turnatfullspeed = [[1]],
    modelradius     = [[24]],
  },


  explodeAs              = [[SMALL_UNITEX]],
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[shipskirm]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  losEmitHeight          = 30,
  maxDamage              = 800,
  maxVelocity            = 2.5,
  minCloakDistance       = 350,
  minWaterDepth          = 10,
  movementClass          = [[BOAT3]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE SUB]],
  objectName             = [[shipskirm.s3o]],
  scale                  = [[0.9]],
  script		         = [[shipskirm.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[SMALL_UNITEX]],
  sfxtypes               = {

    explosiongenerators = {
      [[custom:MISSILE_EXPLOSION]],
      [[custom:MEDMISSILE_EXPLOSION]],
    },

  },

  sightDistance          = 720,
  sonarDistance          = 720,
  turninplace            = 0,
  turnRate               = 400,
  waterline              = 4,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[MISSILE]],
	  badTargetCategory	 = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    MISSILE = {

      name                    = [[Guided Missile]],
      areaOfEffect            = 10,
      burst                   = 4,
      burstRate               = 0.2,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 1,
      craterMult              = 2,


      damage                  = {

        default = 50,
        subs    = 13,
      },

      edgeEffectiveness       = 0.4,

      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 20,
      flightTime              = 5,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      impactOnly              = false,
      interceptedByShieldType = 2,
      model                   = [[wep_m_frostshard.s3o]],
      noSelfDamage            = true,
      range                   = 700,
      reloadtime              = 2.4,
      smokeTrail              = false,
      soundHit                = [[explosion/ex_small13]],
	  soundStart              = [[weapon/missile/missile_fire11]],
      startVelocity           = 400,
      tolerance               = 9000,
      tracks                  = true,
      trajectoryHeight        = 0.7,
      turnRate                = 6000,
      turret                  = true,
      weaponAcceleration      = 300,
      weaponTimer             = 8,
      weaponType              = [[MissileLauncher]],

      weaponVelocity          = 750,
    },

  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],

      footprintX       = 2,
      footprintZ       = 2,
      object           = [[shipskirm_dead.s3o]],
    },


    HEAP = {
      blocking         = false,

      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

}

return lowerkeys({ shipskirm = unitDef })
