unitDef = {
  unitname               = [[shipcarrier]],
  name                   = [[Guabancex]],
  description            = [[Heavy Aircraft Carrier]],
  acceleration           = 0.025,
  activateWhenBuilt   	 = true,
  brakeRate              = 0.025,
  buildCostEnergy        = 4500,
  buildCostMetal         = 4500,
  builder                = true,
  buildPic               = [[shipcarrier.png]],
  buildTime              = 4500,
  canAssist              = false,
  canMove                = true,
  canManualFire          = true,
  canReclaim             = false,
  canRepair              = false,
  canRestore             = false,
  cantBeTransported      = true,
  category               = [[SHIP]],
  CollisionSphereScale   = 0.6,
  collisionVolumeOffsets = [[-5 -10 0]],
  collisionVolumeScales  = [[80 80 240]],
  collisionVolumeType    = [[CylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_de = [[Flugzeugträger (Bomber)]],
    description_fr = [[Porte-Avion Bombardier]],
    description_pl = [[Lotniskowiec z tarcza antyrakietowa]],
    helptext       = [[This heavy carrier serves as a mobile repair base for friendly aircraft. The carrier contains advanced Radar and an improved Drone control system. The contingent of 10 drones and exceptional range, make it a versatile support ship. Beware for it is slow and a prime target in need of protection]],
	midposoffset   = [[0 -10 0]],
    modelradius    = [[50]],
	priority_misc = 2, -- High

  },

  explodeAs              = [[ATOMIC_BLASTSML]],
  floater                = true,
  footprintX             = 6,
  footprintZ             = 6,
  iconType               = [[shipcarrier]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 7500,
  maxVelocity            = 1.75,
  minCloakDistance       = 75,
  minWaterDepth          = 10,
  movementClass          = [[BOAT6]],
  objectName             = [[shipcarrier.dae]],
  script                 = [[shipcarrier.lua]],
  radarEmitHeight        = 48,
  radarDistance          = 4000,
  seismicSignature       = 4,
  selfDestructAs         = [[BIG_UNITEX]],
  sfxtypes               = {
    explosiongenerators = {
      [[custom:xamelimpact]],
      [[custom:ROACHPLOSION]],
      [[custom:shellshockflash]],
    },
  },
  showNanoSpray          = false,
  sightDistance          = 800,
  sonarDistance          = 100,
  turninplace            = 0,
  turnRate               = 133,
  waterline              = 20,

  weapons                = {

    {
      def                = [[carriertargeting]],
      badTargetCategory  = [[SINK]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

	
  },

  weaponDefs             = {

    carriertargeting   = {
      name                    = [[Fake Targeting Weapon]],
      areaOfEffect            = 8,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 1E-06,
        planes  = 1E-06,
        subs    = 5E-08,
      },

      explosionGenerator      = [[custom:NONE]],
      fireStarter             = 0,
      flightTime              = 1,
      impactOnly              = true,
      interceptedByShieldType = 1,
      range                   = 1995,
      reloadtime              = 1.25,
      size                    = 1E-06,
      smokeTrail              = false,

      textures                = {
        [[null]],
        [[null]],
        [[null]],
      },

      turnrate                = 1000000000,
      turret                  = true,
      weaponAcceleration      = 20000,
      weaponTimer             = 0.5,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 20000,
    },

  },

  featureDefs            = {

    DEAD  = {
      CollisionSphereScale   = 0.6,
      collisionVolumeOffsets = [[-5 -10 0]],
	  collisionVolumeScales  = [[80 80 240]],
	  collisionVolumeType    = [[CylZ]],
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 6,
      footprintZ       = 6,
      object           = [[shipcarrier_dead.dae]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 6,
      footprintZ       = 6,
      object           = [[debris4x4b.s3o]],
    },

  },

}

return lowerkeys({ shipcarrier = unitDef })
