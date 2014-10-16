// tale
// tale.hpp


#ifndef _TALE_HPP_INCLUDED
  #define _TALE_HPP_INCLUDED

#define INCL_BASE

#include <os2.h>
#include <stdlib.h>
#include <iostream.h>

#ifdef __IBMCPP__
 #define _CPPEXPORT_ _Export
#endif

#ifdef __WATCOM_CPLUSPLUS__
 #define _CPPEXPORT_ __export
#endif

class
#ifdef __BUILD_DLL__
 _CPPEXPORT_
#endif
Message
{
 public:
   Message();
   ~Message();
};


class
#ifdef __BUILD_DLL__
 _CPPEXPORT_
#endif
Kroenung
{
 public:
   Kroenung();
   ~Kroenung();
};

class
#ifdef __BUILD_DLL__
 _CPPEXPORT_
#endif
King
{
 public:
   static King *current;

   King();
   ~King();
};

#endif // _TALE_HPP_INCLUDED

// end of source
