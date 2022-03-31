#ifndef FRAGTRAP_HPP
#define FRAGTRAP_HPP

#include <iostream>
#include "ClapTrap.hpp"

class FragTrap : virtual public ClapTrap
{

protected:
	unsigned int energyPoints;

public:

	FragTrap();
	FragTrap(std::string const & name);
	~FragTrap();

	void displayStatus();

	void highFivesGuys();

};

#endif