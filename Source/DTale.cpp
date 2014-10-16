// tale
// tale.cpp


#include "tale.hpp"

void main(void);
void Thronfolge();


void main(void)
{
 King *Koenig = new King;

 try
  {
   Thronfolge();
  }

 catch(Message* msg)
  {
   delete msg;
  }


 try
  {
   try
    {
     Thronfolge();
    }

   catch(Message* msg)
    {
     delete msg;
    }

   Thronfolge();
  }

 catch(Message* msg)
  {
   delete msg;
  }

 delete Koenig;
 Thronfolge();

 _exit(0);
}


void Thronfolge()
{
 Kroenung  versuch;
 King      *Prinz = NULL;

 Prinz = new King;
 
 _exit(0);
}


// end of source
