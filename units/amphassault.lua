unitDef = {
  unitname            = [[amphassault]],
  name                = [[Grizzly]],
  description         = [[Amphibious Assault Walker]],
  acceleration        = 0.1,
  bmcode              = [[1]],
  brakeRate           = 0.1,
  buildCostEnergy     = 2200,
  buildCostMetal      = 2200,
  builder             = false,
  buildPic            = [[amphassault.png]],
  buildTime           = 2200,
  canAttack           = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canstop             = [[1]],
  category            = [[LAND]],
  collisionVolumeOffsets  = [[0 6 1]],
  collisionVolumeScales   = [[70 70 70]],
  collisionVolumeTest	  = 1,
  collisionVolumeType	  = [[ellipsoid]],
  corpse              = [[DEAD]],

  customParams        = {
    --description_bp = [[Robô dispersador]],
    --description_fr = [[Robot Émeutier]],
	--description_de = [[Sturm Roboter]],
    helptext       = [[The Grizzly is a classic assault unit - relatively slow, clumsy and next to unstoppable. Its weapon is a disruptor beam that damages and slows enemies.]],
    --helptext_bp    = [[O raio de calor do Sumo é muito poderoso a curto alcançe, mas se dissipa com a distância e é bem mais fraca de longe. A velocidade alta de disparo o torna ideal para lutar contra grandes grupos de unidades baratas. ]],
    --helptext_fr    = [[Le rayon r chaleur du Sumo est capable de délivrer une puissance de feu important sur un point précis. Plus la cible est proche, plus les dégâts seront importants. La précision du rayon est idéale pour lutter contre de larges vagues d'ennemis, mais l'imposant blindage du Sumo le restreint r une vitesse réduite.]],
	--helptext_de    = [[Der Sumo nutzt seinen mächtigen Heat Ray in nächster Nähe, auf größerer Entfernung aber verliert er entsprechend an Feuerkraft. Er eignet sich ideal, um größere Gruppen von billigen, feindlichen Einheiten zu vernichten. Bemerkenswert ist, dass der Sumo in die Luft springen kann und schließlich auf feindlichen Einheiten landet, was diesen enormen Schaden zufügt.]],
  },

  defaultmissiontype  = [[Standby]],
  explodeAs           = [[BIG_UNIT]],
  footprintX          = 4,
  footprintZ          = 4,
  iconType            = [[t3generic]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maneuverleashlength = [[640]],
  mass                = 621,
  maxDamage           = 10000,
  maxSlope            = 36,
  maxVelocity         = 1.6,
  maxWaterDepth       = 5000,
  minCloakDistance    = 75,
  movementClass       = [[AKBOT4]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName          = [[amphassault.s3o]],
  script              = [[amphassault.lua]],
  seismicSignature    = 4,
  selfDestructAs      = [[BIG_UNIT]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:watercannon_muzzle]],
    },

  },

  side                = [[CORE]],
  sightDistance       = 605,
  smoothAnim          = true,
  steeringmode        = [[2]],
  TEDClass            = [[KBOT]],
  trackOffset         = 0,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[ComTrack]],
  trackWidth          = 66,
  turnRate            = 500,
  upright             = false,
  workerTime          = 0,

  weapons             = {
 
    {
      def                = [[HARPOON]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {
  
    HARPOON = {
      name                    = [[Harpoon Gun]],
      areaOfEffect            = 8,
      burst					  = 2,
      burstRate				  = 0.5,
      cegTag                  = [[torpedo_trail]],
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 300,
        subs    = 300,
      },
	  
      fireStarter             = 70,
      flightTime              = 1,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_t_harpoon.s3o]],
      noSelfDamage            = true,
      range                   = 400,
      reloadtime              = 3,
      smokeTrail              = true,
      soundHit                = [[weapon/cannon/emg_hit]],
      --soundHitVolume          = 8,
      soundStart              = [[weapon/soft_crunch]],
      --soundStartVolume        = 6,
      --texture2                = [[wake]],
      tracks                  = false,
      turret                  = true,
      waterweapon	      = true,
      --weaponAcceleration      = 190,
      --weaponTimer             = 1,
      weaponType              = [[Cannon]],
      weaponVelocity          = 300,
    },	
  },


  featureDefs         = {

    DEAD = {
      description      = [[Wreckage - Grizzly]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 10000,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 900,
      object           = [[debris3x3c.s3o]],
      reclaimable      = true,
      reclaimTime      = 900,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP = {
      description      = [[Debris - Grizzly]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 10000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 440,
      object           = [[debris3x3c.s3o]],
      reclaimable      = true,
      reclaimTime      = 440,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ amphassault = unitDef })
