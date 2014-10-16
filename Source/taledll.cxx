// taledll.dll
// taledll.cpp


#include "tale.hpp"


King *King::current = NULL;


Message::Message()
{
 cout << "Der Koenig lebt noch." << endl;
}

Message::~Message()
{
 cout << "Argh!" << endl;
}

Kroenung::Kroenung()
{
 cout << "Kroenung angesetzt." << endl;
}

Kroenung::~Kroenung()
{
 cout << "Kroenung abgesagt." << endl;
}

King::King()
{
 if (King::current)
   throw new Message;
 else {
   King::current = this;
 cout << "Es lebe der Koenig!" << endl; }
}


King::~King()
{
 King::current = NULL;
 cout << "Der Koenig ist tot." << endl;
}


