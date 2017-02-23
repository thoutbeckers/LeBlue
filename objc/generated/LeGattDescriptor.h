
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_LeGattDescriptor")
#ifdef RESTRICT_LeGattDescriptor
#define INCLUDE_ALL_LeGattDescriptor 0
#else
#define INCLUDE_ALL_LeGattDescriptor 1
#endif
#undef RESTRICT_LeGattDescriptor

#if !defined (LeGattDescriptor_) && (INCLUDE_ALL_LeGattDescriptor || defined(INCLUDE_LeGattDescriptor))
#define LeGattDescriptor_

@protocol LeGattDescriptor < JavaObject >

- (void)setValue;

@end

J2OBJC_EMPTY_STATIC_INIT(LeGattDescriptor)

J2OBJC_TYPE_LITERAL_HEADER(LeGattDescriptor)

#define HoutbeckeRsLeLeGattDescriptor LeGattDescriptor

#endif

#pragma pop_macro("INCLUDE_ALL_LeGattDescriptor")
