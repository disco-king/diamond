#ifndef SCAVTRAP_HPP
#define SCAVTRAP_HPP

#include "ClapTrap.hpp" 

class ScavTrap : virtual public ClapTrap
{

protected:
	unsigned int hitPoints;
	unsigned int attackDamage;

public:

	ScavTrap();
	ScavTrap(std::string const & name);
	~ScavTrap();

	void displayStatus();

	void attack(const std::string& target);
	void guardGate();

};

#endif