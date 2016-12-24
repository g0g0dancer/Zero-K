unitDef = {

  unitname            = [[shiptorpraider]],
  name                = [[Wadjet]],
  description         = [[Napalm Thrower (Raider)]],
  acceleration        = 0.048,
  activateWhenBuilt   = true,
  brakeRate           = 0.043,
  buildCostEnergy     = 100,
  buildCostMetal      = 100,
  builder             = false,
  buildPic            = [[shiptorpraider.png]],
  buildTime           = 100,
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[SHIP]],
  collisionVolumeOffsets = [[0 -1 0]],
  collisionVolumeScales  = [[20 20 40]],
  collisionVolumeType    = [[cylZ]],
  corpse              = [[DEAD]],

  customParams        = {

    helptext       = [[This boat swims through the water with great speed in hopes of getting close enough to breath deadly fire. Even in death, the waters erupt in flame and malice.]],
	modelradius    = [[14]],
	turnatfullspeed = [[1]],
  },


  explodeAs           = [[PYRO_DEATH]],
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  iconType            = [[shiptorpraider]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maneuverleashlength = [[1280]],
  maxDamage           = 400,
  maxVelocity         = 4.2,
  minCloakDistance    = 75,
  minWaterDepth       = 5,
  movementClass       = [[BOAT3]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE HOVER]],
  objectName          = [[SHIPTORPRAIDER]],
  script              = [[shiptorpraider.lua]],
  seismicSignature    = 4,
  selfDestructAs      = [[PYRO_DEATH]],
  sightDistance       = 450,
  sonarDistance       = 450,
  turnRate            = 800,
  waterline           = 0,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[FLAMETHROWER]],
      badTargetCategory  = [[FIREPROOF]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP FIXEDWING]],
    },

  },


  weaponDefs          = {

    FLAMETHROWER = {
      name                    = [[Flamethrower]],
      areaOfEffect            = 64,
      avoidGround             = false,
      avoidFeature            = false,
      avoidFriendly           = false,
      collideFeature          = false,
      collideGround           = false,
      coreThickness           = 0,
      craterBoost             = 0,
      craterMult              = 0,
      cegTag                  = [[flamer]],

      customParams            = {
        flamethrower = [[1]],
        setunitsonfire = "1",
        burntime = [[450]],
          
        light_camera_height = 2800,
        light_color = [[0.6 0.39 0.18]],
        light_radius = 260,
		light_fade_time = 10,
		light_beam_mult_frames = 5,
		light_beam_mult = 5,
      
        combatrange = 310,
      },
    
      damage                  = {
        default = 10,
        subs    = 0.01,
      },

      duration				  = 0.01,
      explosionGenerator      = [[custom:SMOKE]],
      fallOffRate             = 1,
      fireStarter             = 100,
      heightMod               = 1,
      impulseBoost            = 0,
      impulseFactor           = 0,
      intensity               = 0.3,
      interceptedByShieldType = 1,
      noExplode               = true,
      noSelfDamage            = true,
      --predictBoost          = 1,
      range                   = 260,
      reloadtime              = 0.05,
      rgbColor                = [[1 1 1]],
      soundStart              = [[weapon/flamethrower]],
      soundTrigger            = true,
      texture1                = [[flame]],
      thickness	              = 0,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 800,
    },





    TORPEDO = {

      name                    = [[Torpedo]],
      areaOfEffect            = 64,
      avoidFriendly           = false,
      bouncerebound           = 0.5,
      bounceslip              = 0.5,
	  burnblow                = 1,

      canAttackGround		  = false,	-- workaround for range hax
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {

        default = 200.1,
        subs    = 200.1,
      },

      edgeEffectiveness       = 0.6,

      explosionGenerator      = [[custom:TORPEDO_HIT]],
      fixedLauncher           = true,
      groundbounce            = 1,
      impulseBoost            = 1,
      impulseFactor           = 0.9,
      interceptedByShieldType = 1,
	  flightTime              = 0.9,
	  leadlimit               = 0,
      model                   = [[wep_m_ajax.s3o]],
      myGravity               = 10.1,
      numbounce               = 4,
      noSelfDamage            = true,

      range                   = 230,
      reloadtime              = 2.5,
      soundHit                = [[TorpedoHitVariable]],
      soundHitVolume          = 2.8,
      soundStart              = [[weapon/torp_land]],
      soundStartVolume        = 0.8,
      startVelocity           = 20,
      tolerance               = 100000,
      tracks                  = true,
      turnRate                = 200000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 440,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 400,
    },

	PYRO_DEATH = {
		name                    = [[Napalm Blast]],
		areaofeffect            = 400,
		craterboost             = 1,
		cratermult              = 3.5,

		customparams        	  = {
			setunitsonfire = "1",
			burnchance     = "1",
			burntime       = 60,

			area_damage = 1,
			area_damage_radius = 128,
			area_damage_dps = 20,
			area_damage_duration = 13.3,
		},

		damage                  = {
			default = 60,
		},

		edgeeffectiveness       = 0.5,
		explosionGenerator      = [[custom:napalm_pyro]],
		impulseboost            = 0,
		impulsefactor           = 0,
		soundhit                = [[explosion/ex_med3]],
	},


  },


  featureDefs         = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],

      footprintX       = 2,
      footprintZ       = 2,
      object           = [[shiptorpraider_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,

      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

}


return lowerkeys({ shiptorpraider = unitDef })
