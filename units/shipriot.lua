unitDef = {
  unitname               = [[shipriot]],
  name                   = [[Corvette]],
  description            = [[Corvette (AntiSub/Riot)]],
  acceleration           = 0.142,
  activateWhenBuilt      = true,
  brakeRate              = 0.142,
  buildAngle             = 16384,
  buildCostEnergy        = 620,
  buildCostMetal         = 620,
  builder                = false,
  buildPic               = [[shipriot.png]],
  buildTime              = 620,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[32 32 102]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    helptext       = [[This Corvette is great against two types of targets, swarms and subs. Equiped with a Tripple Barrage Anti Submarine Mortar on its stern for those slow undersea clusters, as well as a Sonic Blaster on the Bow. While it is not fast enough to chase down fast units, it is higly maneuvarable which can make it hard to hit, especially by subs]],
	turnatfullspeed = [[1]],
  },

  explodeAs              = [[SMALL_UNITEX]],
  floater                = true,
  footprintX             = 4,
  footprintZ             = 4,
  iconType               = [[shipriot]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 1350,
  maxVelocity            = 3.2,
  minCloakDistance       = 75,
  minWaterDepth          = 10,
  movementClass          = [[BOAT4]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE]],
  objectName             = [[shipriot.s3o]],
  script				 = [[shipriot.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[SMALL_UNITEX]],
  sightDistance          = 500,
  
  sfxtypes               = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
      [[custom:RAIDDUST]],
    },

  },
  
  sonarDistance          = 500,
  turninplace            = 0,
  turnRate               = 900,
  waterline              = 0,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[TORPEDO]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },

    {
      def                = [[SONICGUN]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SUB SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    SONICGUN         = {
		name                    = [[Light Sonic Blaster]],
		areaOfEffect            = 0,
		avoidFeature            = false,
		avoidFriendly           = true,
		burnblow                = true,
		craterBoost             = 0,
		craterMult              = 0,
		collisionSize			= 16,

		customParams            = {
			single_hit = 1,
		},

		damage                  = {
			default = 150,
			planes  = 150,
			subs    = 150,
		},
		
		cegTag					= [[sonictrail]],
		explosionGenerator		= [[custom:sonic]],
		impulseBoost            = 60,
		impulseFactor           = 0.5,
		interceptedByShieldType = 1,
		intensity				= 0.6,
		noSelfDamage            = true,
		noExplode				= true,
		range                   = 380,
		reloadtime              = 3,
		soundStart              = [[weapon/sonic_blaster]],
		soundHit                = [[weapon/unfa_blast_2]],
		texture1                = [[sonic_glow]],
		texture2                = [[null]],
		rgbColor 				= {0, 0.25, 0.5},
		thickness				= 10,
		turret                  = true,
		weaponType              = [[LaserCannon]],
		weaponVelocity           = 1000,
		waterweapon				= true,
		duration				= 0.05,
	},

  
    TORPEDO = {
      name                    = [[Undersea Charge Launcher]],
      areaOfEffect            = 100,
      burst                   = 3,
	burstRate               = 0.3,
      avoidFriendly           = false,
      bouncerebound           = 1,
      bounceslip              = 1,
      burnblow                = true,
      canAttackGround         = false, -- also workaround for range hax
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
	  
      damage                  = {
        default = 100,
	subs    = 100,
      },

      explosionGenerator      = [[custom:TORPEDO_HIT]],
      groundbounce            = 1,
      impactOnly              = false,
      impulseBoost            = 0,
      impulseFactor           = 0.6,
      interceptedByShieldType = 1,
      leadlimit               = 1,
      myGravity               = 2,
      model                   = [[diskball.s3o]],
      numBounce               = 1,
      range                   = 360,
      reloadtime              = 4,
      soundHit                = [[TorpedoHitVariable]],
      soundHitVolume          = 2.6,
      --soundStart            = [[weapon/torpedo]],
      startVelocity           = 80,
      tolerance               = 1000000,
      tracks                  = true,
      turnRate                = 30000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 10,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 160,
    },

	
  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[shipriot_dead.s3o]],
    },
    
    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3b.s3o]],
    },

  },

}

return lowerkeys({ shipriot = unitDef })
