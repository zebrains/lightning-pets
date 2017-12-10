pragma solidity ^0.4.4;

contract Core {

  struct hero {
    bool gender;        // false=male true=female
    uint8 level;        // level = 0-255
    uint8 health;       // 0-255
    uint8 mana;         // 0-255
    uint8 energy;       // 0-255
    uint8 strength;     // 0-255
    uint8 intelligence; // 0-255
    uint8 agility;      // 0-255
    uint8 luck;         // 0-255 This stuff is rare like common sense!!!
    uint8 cooldown;      // Current cooldown of your warrior

  }

  // List of all Heroes
  hero[] heroes;

  // Mapping of owners to hero indexes
  mapping (uint256 => address) public heroIndexToOwner;

  // Create Hero
  function createHero(
    bool  _gender,
    uint8 _health,
    uint8 _mana,
    uint8 _energy,
    uint8 _strength,
    uint8 _intelligence,
    uint8 _agility,
    uint8 _luck,
    uint8 _cooldown
  )
    internal
    returns (uint256)
  {

    // Set default values
    hero memory _hero = hero({
      gender:       _gender,
      level:        1,
      health:       _health,
      mana:         _mana,
      energy:       _energy,
      strength:     _strength,
      intelligence: _intelligence,
      agility:      _agility,
      luck:         _luck,
      cooldown:     _cooldown
    });

    uint256 newHeroID = heroes.push(_hero) - 1;

    return newHeroID;
  }

  // Get/View Hero
  function getHero(uint256 _id) external view
    returns (
    bool  gender,
    uint8 level,
    uint8 health,
    uint8 mana,
    uint8 energy,
    uint8 strength,
    uint8 intelligence,
    uint8 agility,
    uint8 luck,
    uint  cooldown
  )
  {
    hero storage requestedHero = heroes[_id];

    // Set return vars from hero attributes in storage
    gender       = requestedHero.gender;
    level        = requestedHero.level;
    health       = requestedHero.health;
    mana         = requestedHero.mana;
    energy       = requestedHero.energy;
    strength     = requestedHero.strength;
    intelligence = requestedHero.intelligence;
    agility      = requestedHero.agility;
    luck         = requestedHero.luck;
    cooldown     = requestedHero.cooldown;
  }

  // Transfer Hero
  /*
  function transferHero(address _from, address _to, uint256 _id) external {

  }
  */

}
