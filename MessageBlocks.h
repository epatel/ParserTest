//
//  MessageBlocks.h
//  Parser Test
//
//  Created by Edward Patel on 2012-03-28.
//  Copyright (c) 2012 Memention AB. All rights reserved.
//

extern void (^ParseTestSuccessBlock)(float value);
extern void (^ParseTestFailBlock)(NSString *msg);

// Added some extras to suppress warnings...
#ifndef FLEXINT_H

typedef struct yy_buffer_state *YY_BUFFER_STATE;
YY_BUFFER_STATE  yy_scan_string(const char *s);

int yyparse();
void yy_delete_buffer(YY_BUFFER_STATE buf);

#endif
